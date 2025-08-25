using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

[System.Serializable]
public class LevelComicData
{
    [Header("Level Info")]
    public int levelNumber;
    public string levelName;

    [Header("Comic Assets")]
    public Sprite comicSprite;
    public AudioClip levelMusic;

    [Header("Display Settings")]
    public float displayTime = 5f;
    public string customTitle = "";
}

public class LevelComicTransition : MonoBehaviour
{
    [Header("Level Comics Configuration")]
    [Tooltip("Configuración de comics para cada nivel")]
    [SerializeField] private LevelComicData[] levelComics;

    [Header("UI Components")]
    [Tooltip("GameObject que contiene toda la UI del comic")]
    [SerializeField] private GameObject comicScreen;
    [Tooltip("Image component donde se mostrará el comic")]
    [SerializeField] private Image comicImage;
    [Tooltip("Panel negro para fade in/out")]
    [SerializeField] private Image fadePanel;
    [Tooltip("Botón de continuar")]
    [SerializeField] private Button continueButton;
    [Tooltip("Slider de progreso de carga (opcional)")]
    [SerializeField] private Slider loadingBar;
    [Tooltip("Text para mostrar el título del nivel (opcional)")]
    [SerializeField] private Text levelTitle;

    [Header("UI Elements to Hide")]
    [Tooltip("GameObject del menú de selección a ocultar")]
    [SerializeField] private GameObject levelSelectionUI;

    [Header("Timing Settings")]
    [Tooltip("Duración del fade desde negro (segundos)")]
    [SerializeField] private float fadeFromBlackDuration = 1f;
    [Tooltip("Duración del fade a negro al final (segundos)")]
    [SerializeField] private float fadeToBlackDuration = 1f;

    [Header("Audio")]
    [Tooltip("Audio source para música del comic")]
    [SerializeField] private AudioSource comicAudioSource;

    [Header("Input Settings")]
    [Tooltip("Permitir continuar con la tecla Enter")]
    [SerializeField] private bool allowEnterKey = true;
    [Tooltip("¿También permitir Skip con teclas adicionales?")]
    [SerializeField] private bool allowSkipKeys = true;
    [Tooltip("Tecla para saltar el comic completamente")]
    [SerializeField] private KeyCode skipComicKey = KeyCode.Escape;

    private bool comicInProgress = false;
    private bool canContinue = false; // Nueva variable para controlar cuándo se puede continuar
    private AsyncOperation loadOperation;
    private LevelComicData currentLevelData;

    private void Start()
    {
        InitializeComicUI();
    }

    private void Update()
    {
        // Detectar input de Enter solo si el comic está en progreso y se puede continuar
        if (comicInProgress && canContinue && allowEnterKey)
        {
            if (Input.GetKeyDown(KeyCode.Return) || Input.GetKeyDown(KeyCode.KeypadEnter))
            {
                OnContinueButtonPressed();
            }
        }

        // Detectar input para saltar comic completamente
        if (comicInProgress && allowSkipKeys)
        {
            if (Input.GetKeyDown(skipComicKey))
            {
                Debug.Log($"Tecla Skip presionada: {skipComicKey}");
                SkipComic();
            }
        }
    }

    private void InitializeComicUI()
    {
        // Asegurar que la pantalla del comic esté desactivada inicialmente
        if (comicScreen != null)
        {
            comicScreen.SetActive(false);
        }

        // Configurar el botón de continuar
        if (continueButton != null)
        {
            continueButton.onClick.RemoveAllListeners();
            continueButton.onClick.AddListener(OnContinueButtonPressed);
            continueButton.interactable = false;
        }

        // Configurar panel de fade (inicialmente transparente)
        if (fadePanel != null)
        {
            Color fadeColor = fadePanel.color;
            fadeColor.a = 0f;
            fadePanel.color = fadeColor;
        }

        // Configurar loading bar
        if (loadingBar != null)
        {
            loadingBar.value = 0f;
            loadingBar.interactable = false;
        }

        Debug.Log("LevelComicTransition inicializado");
    }

    // Método público para llamar desde LEVELSelection
    public void StartLevelComicSequence(string sceneName, int levelNumber)
    {
        if (comicInProgress)
        {
            Debug.Log("Comic ya está en progreso");
            return;
        }

        if (string.IsNullOrEmpty(sceneName))
        {
            Debug.LogError("Nombre de escena no proporcionado");
            return;
        }

        if (comicScreen == null)
        {
            Debug.LogError("Pantalla del comic no configurada");
            return;
        }

        // Buscar datos del nivel
        currentLevelData = GetLevelComicData(levelNumber);
        if (currentLevelData == null)
        {
            Debug.LogWarning($"No se encontraron datos de comic para el nivel {levelNumber}. Cargando directamente...");
            SceneManager.LoadScene(sceneName);
            return;
        }

        comicInProgress = true;
        canContinue = false; // Resetear el flag
        Debug.Log($"Iniciando secuencia de comic para nivel {levelNumber}");

        StartCoroutine(LevelComicSequence(sceneName));
    }

    private LevelComicData GetLevelComicData(int levelNumber)
    {
        if (levelComics == null) return null;

        foreach (LevelComicData data in levelComics)
        {
            if (data.levelNumber == levelNumber)
            {
                return data;
            }
        }
        return null;
    }

    private IEnumerator LevelComicSequence(string sceneName)
    {
        // Paso 1: Ocultar menú de selección
        if (levelSelectionUI != null)
        {
            levelSelectionUI.SetActive(false);
            Debug.Log("Menú de selección ocultado");
        }

        // Paso 2: Activar pantalla del comic
        comicScreen.SetActive(true);

        // IMPORTANTE: Inmediatamente poner el fade panel en negro
        if (fadePanel != null)
        {
            Color fadeColor = fadePanel.color;
            fadeColor.a = 1f;
            fadePanel.color = fadeColor;
        }

        // Paso 3: Configurar comic del nivel actual
        if (comicImage != null && currentLevelData.comicSprite != null)
        {
            comicImage.sprite = currentLevelData.comicSprite;
        }

        // Paso 4: Configurar título si existe
        if (levelTitle != null)
        {
            string title = !string.IsNullOrEmpty(currentLevelData.customTitle)
                ? currentLevelData.customTitle
                : $"Level {currentLevelData.levelNumber}";
            levelTitle.text = title;
        }

        // Paso 5: Iniciar música del nivel si existe
        if (comicAudioSource != null && currentLevelData.levelMusic != null)
        {
            comicAudioSource.clip = currentLevelData.levelMusic;
            comicAudioSource.Play();
            Debug.Log("Música del nivel iniciada");
        }

        // Paso 6: Pequeña pausa para asegurar configuración
        yield return new WaitForEndOfFrame();

        // Paso 7: Iniciar carga del nivel en background
        Debug.Log($"Iniciando carga de {sceneName} en background...");
        loadOperation = SceneManager.LoadSceneAsync(sceneName);
        loadOperation.allowSceneActivation = false;

        // Paso 8: Fade desde negro (mostrar comic)
        yield return StartCoroutine(FadeFromBlack());

        // Paso 9: Mostrar comic por el tiempo especificado
        Debug.Log($"Mostrando comic por {currentLevelData.displayTime} segundos...");
        float elapsedTime = 0f;

        while (elapsedTime < currentLevelData.displayTime)
        {
            // Actualizar barra de progreso si existe
            if (loadingBar != null)
            {
                float progress = Mathf.Clamp01(loadOperation.progress / 0.9f);
                loadingBar.value = progress;
            }

            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // Paso 10: Esperar a que termine de cargar
        while (loadOperation.progress < 0.9f)
        {
            if (loadingBar != null)
            {
                float progress = Mathf.Clamp01(loadOperation.progress / 0.9f);
                loadingBar.value = progress;
            }
            yield return null;
        }

        // Paso 11: Mostrar botón de continuar y habilitar input
        if (loadingBar != null)
        {
            loadingBar.value = 1f;
        }

        if (continueButton != null)
        {
            continueButton.interactable = true;
        }

        // Habilitar la opción de continuar (tanto botón como Enter)
        canContinue = true;

        if (allowEnterKey)
        {
            Debug.Log("Botón de continuar habilitado - Presiona el botón o Enter para continuar");
        }
        else
        {
            Debug.Log("Botón de continuar habilitado - Comic listo para finalizar");
        }

        if (continueButton == null)
        {
            // Si no hay botón, continuar automáticamente después de un momento
            yield return new WaitForSeconds(2f);
            OnContinueButtonPressed();
        }
    }

    private IEnumerator FadeFromBlack()
    {
        if (fadePanel == null) yield break;

        float elapsedTime = 0f;
        Color fadeColor = fadePanel.color;

        while (elapsedTime < fadeFromBlackDuration)
        {
            elapsedTime += Time.deltaTime;
            float alpha = Mathf.Lerp(1f, 0f, elapsedTime / fadeFromBlackDuration);
            fadeColor.a = alpha;
            fadePanel.color = fadeColor;
            yield return null;
        }

        fadeColor.a = 0f;
        fadePanel.color = fadeColor;
        Debug.Log("Fade desde negro completado - Comic visible");
    }

    private IEnumerator FadeToBlack()
    {
        if (fadePanel == null) yield break;

        float elapsedTime = 0f;
        Color fadeColor = fadePanel.color;

        while (elapsedTime < fadeToBlackDuration)
        {
            elapsedTime += Time.deltaTime;
            float alpha = Mathf.Lerp(0f, 1f, elapsedTime / fadeToBlackDuration);
            fadeColor.a = alpha;
            fadePanel.color = fadeColor;
            yield return null;
        }

        fadeColor.a = 1f;
        fadePanel.color = fadeColor;
        Debug.Log("Fade a negro completado");
    }

    private void OnContinueButtonPressed()
    {
        if (loadOperation != null && canContinue)
        {
            canContinue = false; // Prevenir múltiples llamadas
            Debug.Log("Continuando - Iniciando transición al nivel");
            StartCoroutine(TransitionToLevel());
        }
    }

    private IEnumerator TransitionToLevel()
    {
        // Fade a negro antes de cambiar escena
        yield return StartCoroutine(FadeToBlack());

        // Parar música si existe
        if (comicAudioSource != null && comicAudioSource.isPlaying)
        {
            comicAudioSource.Stop();
        }

        // Activar la nueva escena
        Debug.Log($"Cargando nivel: {loadOperation}");
        loadOperation.allowSceneActivation = true;
    }

    // Método para saltar el comic
    public void SkipComic()
    {
        if (comicInProgress)
        {
            Debug.Log("Saltando comic...");
            StopAllCoroutines();

            // Parar música si existe
            if (comicAudioSource != null && comicAudioSource.isPlaying)
            {
                comicAudioSource.Stop();
            }

            // Resetear flags
            comicInProgress = false;
            canContinue = false;

            // Cargar escena directamente
            Time.timeScale = 1f;
            if (loadOperation != null)
            {
                loadOperation.allowSceneActivation = true;
            }
        }
    }

    // Métodos públicos para configuración en runtime
    public void SetAllowEnterKey(bool allow)
    {
        allowEnterKey = allow;
      
    }

    public void SetAllowSkipKeys(bool allow)
    {
        allowSkipKeys = allow;
       
    }

    public void SetSkipComicKey(KeyCode newKey)
    {
        skipComicKey = newKey;
        Debug.Log($"Tecla para saltar comic cambiada a: {newKey}");
    }

    // Método de debug para mostrar configuración actual
    [ContextMenu("Show Input Settings")]
    public void ShowInputSettings()
    {
        Debug.Log("=== INPUT SETTINGS LEVEL COMIC ===");
        Debug.Log($"Allow Enter Key: {allowEnterKey}");
        Debug.Log($"Allow Skip Keys: {allowSkipKeys}");
        Debug.Log($"Skip Comic Key: {skipComicKey}");
        Debug.Log($"Comic In Progress: {comicInProgress}");
        Debug.Log($"Can Continue: {canContinue}");
        Debug.Log("================================");
    }

    // Getters públicos
    public bool ComicInProgress => comicInProgress;
    public bool CanContinue => canContinue;
    public bool AllowEnterKey => allowEnterKey;
    public bool AllowSkipKeys => allowSkipKeys;
    public KeyCode SkipComicKey => skipComicKey;
    public LevelComicData CurrentLevelData => currentLevelData;
}