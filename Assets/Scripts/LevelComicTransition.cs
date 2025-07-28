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
    [Tooltip("Configuraci�n de comics para cada nivel")]
    [SerializeField] private LevelComicData[] levelComics;

    [Header("UI Components")]
    [Tooltip("GameObject que contiene toda la UI del comic")]
    [SerializeField] private GameObject comicScreen;
    [Tooltip("Image component donde se mostrar� el comic")]
    [SerializeField] private Image comicImage;
    [Tooltip("Panel negro para fade in/out")]
    [SerializeField] private Image fadePanel;
    [Tooltip("Bot�n de continuar")]
    [SerializeField] private Button continueButton;
    [Tooltip("Slider de progreso de carga (opcional)")]
    [SerializeField] private Slider loadingBar;
    [Tooltip("Text para mostrar el t�tulo del nivel (opcional)")]
    [SerializeField] private Text levelTitle;

    [Header("UI Elements to Hide")]
    [Tooltip("GameObject del men� de selecci�n a ocultar")]
    [SerializeField] private GameObject levelSelectionUI;

    [Header("Timing Settings")]
    [Tooltip("Duraci�n del fade desde negro (segundos)")]
    [SerializeField] private float fadeFromBlackDuration = 1f;
    [Tooltip("Duraci�n del fade a negro al final (segundos)")]
    [SerializeField] private float fadeToBlackDuration = 1f;

    [Header("Audio")]
    [Tooltip("Audio source para m�sica del comic")]
    [SerializeField] private AudioSource comicAudioSource;

    private bool comicInProgress = false;
    private AsyncOperation loadOperation;
    private LevelComicData currentLevelData;

    private void Start()
    {
        InitializeComicUI();
    }

    private void InitializeComicUI()
    {
        // Asegurar que la pantalla del comic est� desactivada inicialmente
        if (comicScreen != null)
        {
            comicScreen.SetActive(false);
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

        Debug.Log("LevelComicTransition inicializado");
    }

    // M�todo p�blico para llamar desde LEVELSelection
    public void StartLevelComicSequence(string sceneName, int levelNumber)
    {
        if (comicInProgress)
        {
            Debug.Log("Comic ya est� en progreso");
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
        // Paso 1: Ocultar men� de selecci�n
        if (levelSelectionUI != null)
        {
            levelSelectionUI.SetActive(false);
            Debug.Log("Men� de selecci�n ocultado");
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

        // Paso 4: Configurar t�tulo si existe
        if (levelTitle != null)
        {
            string title = !string.IsNullOrEmpty(currentLevelData.customTitle)
                ? currentLevelData.customTitle
                : $"Level {currentLevelData.levelNumber}";
            levelTitle.text = title;
        }

        // Paso 5: Iniciar m�sica del nivel si existe
        if (comicAudioSource != null && currentLevelData.levelMusic != null)
        {
            comicAudioSource.clip = currentLevelData.levelMusic;
            comicAudioSource.Play();
            Debug.Log("M�sica del nivel iniciada");
        }

        // Paso 6: Peque�a pausa para asegurar configuraci�n
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

        // Paso 11: Mostrar bot�n de continuar
        if (loadingBar != null)
        {
            loadingBar.value = 1f;
        }

        if (continueButton != null)
        {
            continueButton.interactable = true;
            Debug.Log("Bot�n de continuar habilitado - Comic listo para finalizar");
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
        if (loadOperation != null)
        {
            Debug.Log("Bot�n continuar presionado - Iniciando transici�n al nivel");
            StartCoroutine(TransitionToLevel());
        }
    }

    private IEnumerator TransitionToLevel()
    {
        // Fade a negro antes de cambiar escena
        yield return StartCoroutine(FadeToBlack());

        // Parar m�sica si existe
        if (comicAudioSource != null && comicAudioSource.isPlaying)
        {
            comicAudioSource.Stop();
        }

        // Activar la nueva escena
        Debug.Log($"Cargando nivel: {loadOperation}");
        loadOperation.allowSceneActivation = true;
    }

    // M�todo para saltar el comic
    public void SkipComic()
    {
        if (comicInProgress)
        {
            Debug.Log("Saltando comic...");
            StopAllCoroutines();

            // Parar m�sica si existe
            if (comicAudioSource != null && comicAudioSource.isPlaying)
            {
                comicAudioSource.Stop();
            }

            // Cargar escena directamente
            Time.timeScale = 1f;
            if (loadOperation != null)
            {
                loadOperation.allowSceneActivation = true;
            }
        }
    }

    // Getters p�blicos
    public bool ComicInProgress => comicInProgress;
    public LevelComicData CurrentLevelData => currentLevelData;
}