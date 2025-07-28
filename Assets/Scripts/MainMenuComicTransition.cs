using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class MainMenuComicTransition : MonoBehaviour
{
    [Header("Scene Settings")]
    [Tooltip("Nombre de la escena del primer nivel")]
    [SerializeField] private string firstLevelScene = "LEVEL 1";

    [Header("Prologue Comic Screen")]
    [Tooltip("GameObject que contiene toda la UI del pr�logo")]
    [SerializeField] private GameObject prologueScreen;
    [Tooltip("Image component donde se mostrar� el comic del pr�logo")]
    [SerializeField] private Image prologueComicImage;
    [Tooltip("Sprite del pr�logo a mostrar")]
    [SerializeField] private Sprite prologueSprite;
    [Tooltip("Panel negro para fade in/out")]
    [SerializeField] private Image fadePanel;
    [Tooltip("Bot�n de continuar")]
    [SerializeField] private Button continueButton;
    [Tooltip("Slider de progreso de carga (opcional)")]
    [SerializeField] private Slider loadingBar;

    [Header("UI Elements to Hide")]
    [Tooltip("GameObject del men� principal a ocultar durante el pr�logo")]
    [SerializeField] private GameObject mainMenuUI;

    [Header("Timing Settings")]
    [Tooltip("Tiempo que se muestra el pr�logo antes del bot�n (segundos)")]
    [SerializeField] private float prologueDisplayTime = 5f;
    [Tooltip("Duraci�n del fade desde negro (segundos)")]
    [SerializeField] private float fadeFromBlackDuration = 1f;
    [Tooltip("Duraci�n del fade a negro al final (segundos)")]
    [SerializeField] private float fadeToBlackDuration = 1f;

    [Header("Audio (Opcional)")]
    [Tooltip("Audio source para m�sica del pr�logo")]
    [SerializeField] private AudioSource prologueAudioSource;
    [Tooltip("Clip de audio para el pr�logo")]
    [SerializeField] private AudioClip prologueMusic;

    private bool prologueInProgress = false;
    private AsyncOperation loadOperation;

    private void Start()
    {
        InitializePrologueUI();
    }

    private void InitializePrologueUI()
    {
        // Asegurar que la pantalla del pr�logo est� desactivada inicialmente
        if (prologueScreen != null)
        {
            prologueScreen.SetActive(false);
        }

        // Configurar el comic sprite si est� asignado
        if (prologueComicImage != null && prologueSprite != null)
        {
            prologueComicImage.sprite = prologueSprite;
        }

        // Configurar el bot�n de continuar
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

        Debug.Log("MainMenuComicTransition inicializado");
    }

    // M�todo p�blico para llamar desde el bot�n Play del men�
    public void StartPrologueSequence()
    {
        if (prologueInProgress)
        {
            Debug.Log("Pr�logo ya est� en progreso");
            return;
        }

        if (string.IsNullOrEmpty(firstLevelScene))
        {
            Debug.LogError("Escena del primer nivel no configurada");
            return;
        }

        if (prologueScreen == null)
        {
            Debug.LogError("Pantalla del pr�logo no configurada");
            return;
        }

        prologueInProgress = true;
        Debug.Log("Iniciando secuencia de pr�logo");

        StartCoroutine(PrologueSequence());
    }

    private IEnumerator PrologueSequence()
    {
        // Paso 1: Ocultar men� principal
        if (mainMenuUI != null)
        {
            mainMenuUI.SetActive(false);
            Debug.Log("Men� principal ocultado");
        }

        // Paso 2: Activar pantalla del pr�logo (oculta por fade panel negro)
        prologueScreen.SetActive(true);

        // IMPORTANTE: Inmediatamente poner el fade panel en negro
        if (fadePanel != null)
        {
            Color fadeColor = fadePanel.color;
            fadeColor.a = 1f; // Negro inmediatamente
            fadePanel.color = fadeColor;
        }

        Debug.Log("Pantalla de pr�logo activada (oculta por fade panel)");

        // Paso 3: Iniciar m�sica del pr�logo si existe
        if (prologueAudioSource != null && prologueMusic != null)
        {
            prologueAudioSource.clip = prologueMusic;
            prologueAudioSource.Play();
            Debug.Log("M�sica del pr�logo iniciada");
        }

        // Paso 4: Peque�a pausa para asegurar que se aplic� el fade
        yield return new WaitForEndOfFrame();

        // Paso 5: Iniciar carga del primer nivel en background
        Debug.Log("Iniciando carga del primer nivel en background...");
        loadOperation = SceneManager.LoadSceneAsync(firstLevelScene);
        loadOperation.allowSceneActivation = false; // No activar hasta que presionen continuar

        // Paso 6: Fade desde negro (mostrar pr�logo)
        yield return StartCoroutine(FadeFromBlack());

        // Paso 7: Mostrar pr�logo por el tiempo especificado
        Debug.Log($"Mostrando pr�logo por {prologueDisplayTime} segundos...");
        float elapsedTime = 0f;

        while (elapsedTime < prologueDisplayTime)
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

        // Paso 8: Esperar a que termine de cargar
        while (loadOperation.progress < 0.9f)
        {
            if (loadingBar != null)
            {
                float progress = Mathf.Clamp01(loadOperation.progress / 0.9f);
                loadingBar.value = progress;
            }
            yield return null;
        }

        // Paso 9: Mostrar bot�n de continuar
        if (loadingBar != null)
        {
            loadingBar.value = 1f;
        }

        if (continueButton != null)
        {
            continueButton.interactable = true;
            Debug.Log("Bot�n de continuar habilitado - Pr�logo listo para finalizar");
        }
        else
        {
            // Si no hay bot�n, continuar autom�ticamente despu�s de un momento
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
        Debug.Log("Fade desde negro completado - Pr�logo visible");
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
        if (loadOperation != null)
        {
            Debug.Log("Bot�n continuar presionado - Iniciando transici�n al primer nivel");
            StartCoroutine(TransitionToFirstLevel());
        }
    }

    private IEnumerator TransitionToFirstLevel()
    {
        // Fade a negro antes de cambiar escena
        yield return StartCoroutine(FadeToBlack());

        // Parar m�sica si existe
        if (prologueAudioSource != null && prologueAudioSource.isPlaying)
        {
            prologueAudioSource.Stop();
        }

        // Activar la nueva escena
        Debug.Log($"Cargando primer nivel: {firstLevelScene}");
        loadOperation.allowSceneActivation = true;
    }

    // M�todo para saltar el pr�logo (�til para testing o jugadores que ya lo vieron)
    public void SkipPrologue()
    {
        if (prologueInProgress)
        {
            Debug.Log("Saltando pr�logo...");
            StopAllCoroutines();

            // Parar m�sica si existe
            if (prologueAudioSource != null && prologueAudioSource.isPlaying)
            {
                prologueAudioSource.Stop();
            }

            // Cargar escena directamente
            Time.timeScale = 1f;
            SceneManager.LoadScene(firstLevelScene);
        }
    }

    // M�todos de debug
    [ContextMenu("Test Prologue")]
    public void DebugStartPrologue()
    {
        Debug.Log("=== TESTING PROLOGUE SEQUENCE ===");
        StartPrologueSequence();
    }

    [ContextMenu("Skip Prologue")]
    public void DebugSkipPrologue()
    {
        SkipPrologue();
    }

    // Getters p�blicos
    public bool PrologueInProgress => prologueInProgress;
    public string FirstLevelScene => firstLevelScene;
}