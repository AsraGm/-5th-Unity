using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Rendering;
using UnityEngine.Rendering.Universal;
using UnityEngine.SceneManagement;

public class ResetSystem : MonoBehaviour
{
    public static ResetSystem Instance;

    [Header("Reset Settings")]
    [Tooltip("Duración del fade a negro")]
    [SerializeField] private float fadeToBlackDuration = 2f;
    [Tooltip("Tiempo en negro antes de recargar")]
    [SerializeField] private float blackScreenDuration = 1f;
    [Tooltip("Duración del fade desde negro")]
    [SerializeField] private float fadeFromBlackDuration = 1f;

    [Header("Audio")]
    [SerializeField] private AudioSource rewindAudioSource;
    [SerializeField] private AudioClip rewindSound;

    [Header("Death Visual Effects")]
    [SerializeField] private Volume postProcessVolume;
    [Tooltip("Velocidad del parpadeo antes del fade")]
    [SerializeField] private float exposureFlickerSpeed = 8f;
    [Tooltip("Duración del parpadeo antes del fade")]
    [SerializeField] private float flickerDuration = 1f;
    [Tooltip("Valor mínimo de Post Exposure durante el parpadeo")]
    [SerializeField] private float minExposureFlicker = -2f;

    [Header("Level Management")]
    [SerializeField] private LevelsManager levelsManager;

    // Referencias de post processing
    private ColorAdjustments colorAdjustments;
    private float originalPostExposure;
    private bool hasColorAdjustments = false;

    // Control del sistema
    private bool isResetting = false;

    // Para preservar datos entre recargas
    private PersistentGameData persistentData;

    public static System.Action OnLevelReset;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;

            // Buscar datos persistentes existentes
            persistentData = FindFirstObjectByType<PersistentGameData>();
            if (persistentData == null)
            {
                // Crear objeto persistente si no existe
                GameObject persistentObj = new GameObject("PersistentGameData");
                persistentData = persistentObj.AddComponent<PersistentGameData>();
                DontDestroyOnLoad(persistentObj);
            }
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        InitializePostProcessing();

        if (levelsManager == null)
        {
            levelsManager = FindFirstObjectByType<LevelsManager>();
        }

        // Si hay datos persistentes, aplicar el fade desde negro
        if (persistentData != null && persistentData.ShouldFadeFromBlack)
        {
            StartCoroutine(FadeFromBlackAfterReload());
        }
    }

    private void InitializePostProcessing()
    {
        if (postProcessVolume == null)
        {
            Debug.LogWarning("No se ha asignado el Volume de Post Processing!");
            return;
        }

        if (postProcessVolume.profile.TryGet<ColorAdjustments>(out colorAdjustments))
        {
            originalPostExposure = colorAdjustments.postExposure.value;
            hasColorAdjustments = true;
            Debug.Log($"Color Adjustments encontrado. Post Exposure original: {originalPostExposure}");
        }
        else
        {
            Debug.LogWarning("No se encontró el efecto Color Adjustments en el Volume Profile.");
        }
    }

    public void OnPlayerDeath()
    {
        if (isResetting) return;

        Debug.Log("¡Jugador ha muerto! Iniciando secuencia de reset con recarga...");
        StartCoroutine(DeathResetSequence());
    }

    private IEnumerator DeathResetSequence()
    {
        isResetting = true;

        // Reproducir sonido de muerte/reset
        if (rewindAudioSource != null && rewindSound != null)
        {
            rewindAudioSource.PlayOneShot(rewindSound);
        }

        // 1. Guardar datos que necesitamos preservar
        SaveDataForReload();

        // 2. Efecto de parpadeo inicial
        if (hasColorAdjustments)
        {
            yield return StartCoroutine(ExposureFlickerEffect());
        }

        // 3. Fade completo a negro
        if (hasColorAdjustments)
        {
            yield return StartCoroutine(FadeToBlack());
        }

        // 4. Esperar un momento en negro
        yield return new WaitForSeconds(blackScreenDuration);

        // 5. Recargar la escena (esto ya se hace dentro de FadeToBlack())
        // ReloadCurrentScene(); // Removido de aquí porque ya se hace en FadeToBlack()
    }

    private void SaveDataForReload()
    {
        if (persistentData == null) return;

        // Guardar datos del nivel actual
        if (levelsManager != null)
        {
            persistentData.currentLevelIndex = levelsManager.GetCurrentLevelIndex();
        }

        // Guardar ítems que deben preservarse
        if (InventorySystem.Instance != null)
        {
            persistentData.preservedItems = CalculateItemsToPreserve();
        }

        // Marcar que necesitamos fade desde negro después de recargar
        persistentData.ShouldFadeFromBlack = true;

        Debug.Log($"Datos guardados para recarga: Nivel {persistentData.currentLevelIndex}, {persistentData.preservedItems.Count} ítems preservados");
    }

    private List<ItemData> CalculateItemsToPreserve()
    {
        List<ItemData> itemsToPreserve = new List<ItemData>();

        if (levelsManager != null && InventorySystem.Instance != null)
        {
            int currentLevel = levelsManager.GetCurrentLevelIndex();
            int totalItemsFromPreviousLevels = 0;

            // Calcular ítems de niveles anteriores completados
            for (int i = 0; i < currentLevel; i++)
            {
                if (i < levelsManager.GetLevelsCount())
                {
                    var levelData = levelsManager.GetLevelData(i);
                    if (levelData != null && levelData.bossDefeated)
                    {
                        totalItemsFromPreviousLevels = levelData.itemsRequired;
                    }
                }
            }

            itemsToPreserve = InventorySystem.Instance.GetItemsToPreserve(totalItemsFromPreviousLevels);
        }

        return itemsToPreserve;
    }

    private IEnumerator ExposureFlickerEffect()
    {
        if (!hasColorAdjustments) yield break;

        float elapsedTime = 0f;

        while (elapsedTime < flickerDuration)
        {
            // Parpadeo usando función seno
            float flickerValue = Mathf.Sin(elapsedTime * exposureFlickerSpeed) * 0.5f + 0.5f;
            float currentExposure = Mathf.Lerp(originalPostExposure, minExposureFlicker, flickerValue);

            colorAdjustments.postExposure.value = currentExposure;

            elapsedTime += Time.unscaledDeltaTime;
            yield return null;
        }
    }

    private IEnumerator FadeToBlack()
    {
        if (!hasColorAdjustments) yield break;

        float elapsedTime = 0f;
        float startExposure = colorAdjustments.postExposure.value;

        while (elapsedTime < fadeToBlackDuration)
        {
            float progress = elapsedTime / fadeToBlackDuration;
            // Usar SmoothStep para transición más suave
            float smoothProgress = Mathf.SmoothStep(0f, 1f, progress);

            // Fade suave a -6 (negro completo)
            colorAdjustments.postExposure.value = Mathf.Lerp(startExposure, -6f, smoothProgress);

            elapsedTime += Time.unscaledDeltaTime;
            yield return null;
        }

        colorAdjustments.postExposure.value = -6f; // Asegurar negro completo

        // 🎯 AQUÍ EMPIEZA LA RECARGA
        ReloadCurrentScene();
    }

    private IEnumerator FadeFromBlackAfterReload()
    {
        if (!hasColorAdjustments)
        {
            persistentData.ShouldFadeFromBlack = false;
            RestoreDataAfterReload();
            yield break;
        }

        // Empezar en negro completo (-6)
        colorAdjustments.postExposure.value = -6f;

        // Esperar un frame para que todo se inicialice
        yield return new WaitForEndOfFrame();

        // Restaurar datos antes del fade
        RestoreDataAfterReload();

        float elapsedTime = 0f;

        while (elapsedTime < fadeFromBlackDuration)
        {
            float progress = elapsedTime / fadeFromBlackDuration;
            // Usar SmoothStep para transición más suave
            float smoothProgress = Mathf.SmoothStep(0f, 1f, progress);

            // Fade desde -6 al valor original (0)
            colorAdjustments.postExposure.value = Mathf.Lerp(-6f, originalPostExposure, smoothProgress);

            elapsedTime += Time.deltaTime;
            yield return null;
        }

        colorAdjustments.postExposure.value = originalPostExposure;
        persistentData.ShouldFadeFromBlack = false;

        Debug.Log("Reset completo - Escena recargada y datos restaurados");
    }

    private void RestoreDataAfterReload()
    {
        if (persistentData == null) return;

        // Restaurar ítems preservados en el inventario
        if (InventorySystem.Instance != null && persistentData.preservedItems.Count > 0)
        {
            InventorySystem.Instance.RestoreItems(persistentData.preservedItems);
            Debug.Log($"Restaurados {persistentData.preservedItems.Count} ítems preservados");
        }

        // Notificar que el reset ha terminado
        OnLevelReset?.Invoke();
    }

    private void ReloadCurrentScene()
    {
        string currentSceneName = SceneManager.GetActiveScene().name;
        Debug.Log($"Recargando escena: {currentSceneName}");
        SceneManager.LoadScene(currentSceneName);
    }

    // Métodos de utilidad para debugging
    [ContextMenu("Test Death Reset")]
    public void TestDeathReset()
    {
        OnPlayerDeath();
    }

    [ContextMenu("Reset Post Processing")]
    public void ResetPostProcessingEffects()
    {
        if (hasColorAdjustments)
        {
            colorAdjustments.postExposure.value = originalPostExposure;
            Debug.Log("Efectos de post processing reseteados manualmente");
        }
    }
}

// Clase para mantener datos entre recargas de escena
public class PersistentGameData : MonoBehaviour
{
    [Header("Persistent Data")]
    public int currentLevelIndex = 0;
    public List<ItemData> preservedItems = new List<ItemData>();
    public bool ShouldFadeFromBlack = false;

    private void Awake()
    {
        // Asegurar que solo existe una instancia
        PersistentGameData[] existingData = FindObjectsByType<PersistentGameData>(FindObjectsSortMode.None);
        if (existingData.Length > 1)
        {
            // Si ya existe otra instancia, destruir esta
            for (int i = 0; i < existingData.Length; i++)
            {
                if (existingData[i] != this)
                {
                    Destroy(gameObject);
                    return;
                }
            }
        }

        DontDestroyOnLoad(gameObject);
    }
}