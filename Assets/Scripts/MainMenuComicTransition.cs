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
    [Tooltip("GameObject que contiene toda la UI del prólogo")]
    [SerializeField] private GameObject prologueScreen;
    [Tooltip("Image component donde se mostrará el comic del prólogo")]
    [SerializeField] private Image prologueComicImage;
    [Tooltip("Sprite del prólogo a mostrar")]
    [SerializeField] private Sprite prologueSprite;
    [Tooltip("Panel negro para fade in/out")]
    [SerializeField] private Image fadePanel;
    [Tooltip("Botón de continuar")]
    [SerializeField] private Button continueButton;
    [Tooltip("Slider de progreso de carga (opcional)")]
    [SerializeField] private Slider loadingBar;

    [Header("UI Elements to Hide")]
    [Tooltip("GameObject del menú principal a ocultar durante el prólogo")]
    [SerializeField] private GameObject mainMenuUI;

    [Header("Timing Settings")]
    [Tooltip("Tiempo que se muestra el prólogo antes del botón (segundos)")]
    [SerializeField] private float prologueDisplayTime = 5f;
    [Tooltip("Duración del fade desde negro (segundos)")]
    [SerializeField] private float fadeFromBlackDuration = 1f;
    [Tooltip("Duración del fade a negro al final (segundos)")]
    [SerializeField] private float fadeToBlackDuration = 1f;

    [Header("Audio (Opcional)")]
    [Tooltip("Audio source para música del prólogo")]
    [SerializeField] private AudioSource prologueAudioSource;
    [Tooltip("Clip de audio para el prólogo")]
    [SerializeField] private AudioClip prologueMusic;

    [Header("Input Settings")]
    [Tooltip("Permitir continuar con la tecla Enter")]
    [SerializeField] private bool allowEnterKey = true;

    private bool prologueInProgress = false;
    private bool canContinue = false; // Nueva variable para controlar cuándo se puede continuar
    private AsyncOperation loadOperation;

    private void Start()
    {
        InitializePrologueUI();
    }

    private void Update()
    {
        // Detectar input de Enter solo si el prólogo está en progreso y se puede continuar
        if (prologueInProgress && canContinue && allowEnterKey)
        {
            if (Input.GetKeyDown(KeyCode.Return) || Input.GetKeyDown(KeyCode.KeypadEnter))
            {
                OnContinueButtonPressed();
            }
        }
    }

    private void InitializePrologueUI()
    {
        // Asegurar que la pantalla del prólogo esté desactivada inicialmente
        if (prologueScreen != null)
        {
            prologueScreen.SetActive(false);
        }

        // Configurar el comic sprite si está asignado
        if (prologueComicImage != null && prologueSprite != null)
        {
            prologueComicImage.sprite = prologueSprite;
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

        Debug.Log("MainMenuComicTransition inicializado");
    }

    // Método público para llamar desde el botón Play del menú
    public void StartPrologueSequence()
    {
        if (prologueInProgress)
        {
            Debug.Log("Prólogo ya está en progreso");
            return;
        }

        if (string.IsNullOrEmpty(firstLevelScene))
        {
            Debug.LogError("Escena del primer nivel no configurada");
            return;
        }

        if (prologueScreen == null)
        {
            Debug.LogError("Pantalla del prólogo no configurada");
            return;
        }

        prologueInProgress = true;
        canContinue = false; // Resetear el flag
        Debug.Log("Iniciando secuencia de prólogo");

        StartCoroutine(PrologueSequence());
    }

    private IEnumerator PrologueSequence()
    {
        // Paso 1: Ocultar menú principal
        if (mainMenuUI != null)
        {
            mainMenuUI.SetActive(false);
            Debug.Log("Menú principal ocultado");
        }

        // Paso 2: Activar pantalla del prólogo (oculta por fade panel negro)
        prologueScreen.SetActive(true);

        // IMPORTANTE: Inmediatamente poner el fade panel en negro
        if (fadePanel != null)
        {
            Color fadeColor = fadePanel.color;
            fadeColor.a = 1f; // Negro inmediatamente
            fadePanel.color = fadeColor;
        }

        Debug.Log("Pantalla de prólogo activada (oculta por fade panel)");

        // Paso 3: Iniciar música del prólogo si existe
        if (prologueAudioSource != null && prologueMusic != null)
        {
            prologueAudioSource.clip = prologueMusic;
            prologueAudioSource.Play();
            Debug.Log("Música del prólogo iniciada");
        }

        // Paso 4: Pequeña pausa para asegurar que se aplicó el fade
        yield return new WaitForEndOfFrame();

        // Paso 5: Iniciar carga del primer nivel en background
        Debug.Log("Iniciando carga del primer nivel en background...");
        loadOperation = SceneManager.LoadSceneAsync(firstLevelScene);
        loadOperation.allowSceneActivation = false; // No activar hasta que presionen continuar

        // Paso 6: Fade desde negro (mostrar prólogo)
        yield return StartCoroutine(FadeFromBlack());

        // Paso 7: Mostrar prólogo por el tiempo especificado
        Debug.Log($"Mostrando prólogo por {prologueDisplayTime} segundos...");
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

        // Paso 9: Mostrar botón de continuar y habilitar input
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
            Debug.Log("Botón de continuar habilitado - Prólogo listo para finalizar");
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
        Debug.Log("Fade desde negro completado - Prólogo visible");
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
            Debug.Log("Continuando - Iniciando transición al primer nivel");
            StartCoroutine(TransitionToFirstLevel());
        }
    }

    private IEnumerator TransitionToFirstLevel()
    {
        // Fade a negro antes de cambiar escena
        yield return StartCoroutine(FadeToBlack());

        // Parar música si existe
        if (prologueAudioSource != null && prologueAudioSource.isPlaying)
        {
            prologueAudioSource.Stop();
        }

        // Activar la nueva escena
        Debug.Log($"Cargando primer nivel: {firstLevelScene}");
        loadOperation.allowSceneActivation = true;
    }

    // Método para saltar el prólogo (útil para testing o jugadores que ya lo vieron)
    public void SkipPrologue()
    {
        if (prologueInProgress)
        {
            Debug.Log("Saltando prólogo...");
            StopAllCoroutines();

            // Parar música si existe
            if (prologueAudioSource != null && prologueAudioSource.isPlaying)
            {
                prologueAudioSource.Stop();
            }

            // Resetear flags
            prologueInProgress = false;
            canContinue = false;

            // Cargar escena directamente
            Time.timeScale = 1f;
            SceneManager.LoadScene(firstLevelScene);
        }
    }

    // Método para cambiar la configuración de la tecla Enter en runtime
    public void SetAllowEnterKey(bool allow)
    {
        allowEnterKey = allow;
       
    }

    // Métodos de debug
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

    // Getters públicos
    public bool PrologueInProgress => prologueInProgress;
    public bool CanContinue => canContinue;
    public bool AllowEnterKey => allowEnterKey;
    public string FirstLevelScene => firstLevelScene;
}