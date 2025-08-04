using UnityEngine;
using UnityEngine.UI;
using UnityEngine.SceneManagement;
using System.Collections;

public class NPCSceneTransition : MonoBehaviour
{
    [Header("Scene Transition Settings")]
    [Tooltip("Nombre de la escena a cargar")]
    [SerializeField] private string targetSceneName;

    [Header("Comic Loading Screen")]
    [Tooltip("GameObject que contiene toda la UI de carga con comic")]
    [SerializeField] private GameObject comicLoadingScreen;
    [Tooltip("Image component donde se mostrará el comic")]
    [SerializeField] private Image comicImage;
    [Tooltip("Sprite del comic a mostrar")]
    [SerializeField] private Sprite comicSprite;
    [Tooltip("Panel negro para fade in/out")]
    [SerializeField] private Image fadePanel;
    [Tooltip("Botón de continuar")]
    [SerializeField] private Button continueButton;
    [Tooltip("Slider de progreso de carga (opcional)")]
    [SerializeField] private Slider loadingBar;

    [Header("Timing Settings")]
    [Tooltip("Duración del fade a negro (segundos)")]
    [SerializeField] private float fadeToBlackDuration = 1f;
    [Tooltip("Tiempo que se muestra el comic antes del botón (segundos)")]
    [SerializeField] private float comicDisplayTime = 3f;
    [Tooltip("Duración del fade desde negro (segundos)")]
    [SerializeField] private float fadeFromBlackDuration = 1f;

    [Header("Activation Method")]
    [Tooltip("Cómo se activará la transición")]
    [SerializeField] private ActivationMethod activationMethod = ActivationMethod.DialogueNodeEvent;

    [Header("Node Event Method")]
    [Tooltip("Texto que debe contener el nodo de diálogo para activar transición")]
    [SerializeField] private string transitionTriggerText = "[SCENE_TRANSITION]";
    [Tooltip("Nombre específico del nodo que activa la transición")]
    [SerializeField] private string transitionNodeName = "EndLevelNode";

    [Header("Auto Method")]
    [Tooltip("¿Activar automáticamente al terminar diálogo PostDefeat?")]
    [SerializeField] private bool triggerOnPostDefeatEnd = true;

    public enum ActivationMethod
    {
        DialogueNodeEvent,  // Se activa desde un nodo específico del diálogo
        AutoOnPostDefeat,   // Se activa automáticamente en PostDefeat
        Manual             // Solo activación manual
    }

    private NPCController controller;
    private bool transitionInProgress = false;
    private AsyncOperation loadOperation;

    public void Initialize(NPCController npcController)
    {
        controller = npcController;

        // Verificar configuración
        if (string.IsNullOrEmpty(targetSceneName))
        {
            Debug.LogWarning($"Nombre de escena target no configurado en {gameObject.name}");
            return;
        }

        // Verificar componentes de UI
        if (comicLoadingScreen == null)
        {
            Debug.LogWarning($"Comic Loading Screen no asignado en {gameObject.name}");
            return;
        }

        // Inicializar UI
        InitializeComicUI();

        // Configurar según el método de activación
        SetupActivationMethod();

        Debug.Log($"NPCSceneTransition inicializado - Target: {targetSceneName}, Método: {activationMethod}");
    }

    private void InitializeComicUI()
    {
        // Asegurar que la pantalla de carga esté desactivada inicialmente
        if (comicLoadingScreen != null)
        {
            comicLoadingScreen.SetActive(false);
        }

        // Configurar el comic sprite si está asignado
        if (comicImage != null && comicSprite != null)
        {
            comicImage.sprite = comicSprite;
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
    }

    private void SetupActivationMethod()
    {
        switch (activationMethod)
        {
            case ActivationMethod.DialogueNodeEvent:
                SetupDialogueEvents();
                break;
            case ActivationMethod.AutoOnPostDefeat:
                Debug.Log($"Transición automática configurada para PostDefeat en {gameObject.name}");
                break;
            case ActivationMethod.Manual:
                Debug.Log($"Transición configurada para activación manual en {gameObject.name}");
                break;
        }
    }

    private void SetupDialogueEvents()
    {
        // Configurar eventos en el diálogo PostDefeat
        if (controller.PostDefeatDialogueNode != null)
        {
            ConfigureNodeForTransition(controller.PostDefeatDialogueNode);
            Debug.Log($"Eventos de transición configurados en diálogo PostDefeat de {gameObject.name}");
        }
    }

    private void ConfigureNodeForTransition(DIALOGUENODE node)
    {
        if (node == null) return;

        // Verificar si este nodo debe activar la transición
        bool shouldTriggerTransition = node.name == transitionNodeName ||
                                     (!string.IsNullOrEmpty(node.dialogueText) &&
                                      node.dialogueText.Contains(transitionTriggerText));

        if (shouldTriggerTransition)
        {
            // Limpiar listeners previos para evitar duplicados
            node.onNodeEnd.RemoveListener(OnDialogueTransitionTrigger);
            node.onNodeEnd.AddListener(OnDialogueTransitionTrigger);
            Debug.Log($"Configurado evento de transición en nodo: {node.name}");
        }

        // Si es el nodo final y está configurado para activar al final
        if (node.isEndNode && triggerOnPostDefeatEnd && activationMethod == ActivationMethod.DialogueNodeEvent)
        {
            node.onNodeEnd.RemoveListener(OnDialogueTransitionTrigger);
            node.onNodeEnd.AddListener(OnDialogueTransitionTrigger);
            Debug.Log($"Configurado evento de transición en nodo final: {node.name}");
        }

        // Configurar recursivamente en las respuestas
        if (node.responses != null)
        {
            for (int i = 0; i < node.responses.Length; i++)
            {
                if (node.responses[i].nextNode != null)
                {
                    ConfigureNodeForTransition(node.responses[i].nextNode);
                }
            }
        }
    }

    // Este método se llama desde los eventos del diálogo
    private void OnDialogueTransitionTrigger()
    {
        Debug.Log($"Evento de diálogo activado - Iniciando secuencia de comic desde {gameObject.name}");
        TriggerSceneTransition();
    }

    // Método público para activación automática
    public void OnPostDefeatDialogueEnd()
    {
        if (activationMethod == ActivationMethod.AutoOnPostDefeat && triggerOnPostDefeatEnd)
        {
            Debug.Log("Diálogo PostDefeat terminado - Activando secuencia de comic");
            TriggerSceneTransition();
        }
    }

    // Método principal de activación
    public void TriggerSceneTransition()
    {
        if (transitionInProgress)
        {
            Debug.Log($"Transición ya está en progreso en {gameObject.name}");
            return;
        }

        if (string.IsNullOrEmpty(targetSceneName))
        {
            Debug.LogError($"No se puede iniciar transición: Nombre de escena no configurado en {gameObject.name}");
            return;
        }

        if (comicLoadingScreen == null)
        {
            Debug.LogError($"No se puede iniciar transición: Comic Loading Screen no configurado en {gameObject.name}");
            return;
        }

        transitionInProgress = true;
        Debug.Log($"Iniciando secuencia de comic para escena: {targetSceneName}");

        StartCoroutine(ComicTransitionSequence());
    }

    private IEnumerator ComicTransitionSequence()
    {
        // Paso 1: Activar la pantalla de carga
        comicLoadingScreen.SetActive(true);

        // IMPORTANTE: Inmediatamente poner el fade panel en negro para ocultar el comic
        if (fadePanel != null)
        {
            Color fadeColor = fadePanel.color;
            fadeColor.a = 1f; // Negro inmediatamente
            fadePanel.color = fadeColor;
        }

        Debug.Log("Pantalla de comic activada (oculta por fade panel)");

        // Paso 2: Pequeña pausa para asegurar que se aplicó el fade
        yield return new WaitForEndOfFrame();

        // Paso 3: Iniciar carga de escena en background
        Debug.Log("Iniciando carga de escena en background...");
        loadOperation = SceneManager.LoadSceneAsync(targetSceneName);
        loadOperation.allowSceneActivation = false; // No activar hasta que presionen continuar

        // Paso 4: Fade desde negro (mostrar comic)
        yield return StartCoroutine(FadeFromBlack());

        // Paso 5: Mostrar comic por el tiempo especificado Y cargar en paralelo
        Debug.Log($"Mostrando comic por {comicDisplayTime} segundos...");
        float elapsedTime = 0f;

        // ========== LÓGICA ARREGLADA: ESPERAR TIEMPO O CARGA (LO QUE TERMINE PRIMERO) ==========
        while (elapsedTime < comicDisplayTime && loadOperation.progress < 0.9f)
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

        // ========== ESPERAR LO QUE FALTE ==========
        // Si la carga terminó pero el tiempo no
        while (elapsedTime < comicDisplayTime)
        {
            if (loadingBar != null)
            {
                loadingBar.value = 1f;
            }
            elapsedTime += Time.deltaTime;
            yield return null;
        }

        // Si el tiempo terminó pero la carga no (muy raro, pero por si acaso)
        while (loadOperation.progress < 0.9f)
        {
            if (loadingBar != null)
            {
                float progress = Mathf.Clamp01(loadOperation.progress / 0.9f);
                loadingBar.value = progress;
            }
            yield return null;
        }

        // ========== ACTIVAR BOTÓN SIEMPRE ==========
        Debug.Log("¡Activando botón de continuar!");

        if (loadingBar != null)
        {
            loadingBar.value = 1f;
        }

        if (continueButton != null)
        {
            continueButton.interactable = true;
            Debug.Log("✅ Botón de continuar ACTIVADO");

            // ========== DEBUG EXTRA ==========
            Debug.Log($"Estado del botón: activo={continueButton.gameObject.activeInHierarchy}, interactable={continueButton.interactable}");
        }
        else
        {
            Debug.LogWarning("❌ ContinueButton es NULL!");
            // Si no hay botón, continuar automáticamente después de un momento
            yield return new WaitForSeconds(1f);
            OnContinueButtonPressed();
        }
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

    private void OnContinueButtonPressed()
    {
        if (loadOperation != null)
        {
            Debug.Log("Botón continuar presionado - Activando nueva escena");
            loadOperation.allowSceneActivation = true;
        }
    }

    // Métodos de debug
    [ContextMenu("Test Comic Transition")]
    public void DebugTriggerTransition()
    {
        Debug.Log("=== TESTING COMIC TRANSITION ===");
        TriggerSceneTransition();
    }

    [ContextMenu("Reset Transition")]
    public void DebugResetTransition()
    {
        transitionInProgress = false;
        if (comicLoadingScreen != null)
        {
            comicLoadingScreen.SetActive(false);
        }
        Debug.Log($"Transición reseteada en {gameObject.name}");
    }

    // Getters públicos
    public bool TransitionInProgress => transitionInProgress;
    public string TargetSceneName => targetSceneName;
    public ActivationMethod CurrentActivationMethod => activationMethod;
}