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
    [Tooltip("Image component donde se mostrar� el comic")]
    [SerializeField] private Image comicImage;
    [Tooltip("Sprite del comic a mostrar")]
    [SerializeField] private Sprite comicSprite;
    [Tooltip("Panel negro para fade in/out")]
    [SerializeField] private Image fadePanel;
    [Tooltip("Bot�n de continuar")]
    [SerializeField] private Button continueButton;
    [Tooltip("Slider de progreso de carga (opcional)")]
    [SerializeField] private Slider loadingBar;

    [Header("Timing Settings")]
    [Tooltip("Duraci�n del fade a negro (segundos)")]
    [SerializeField] private float fadeToBlackDuration = 1f;
    [Tooltip("Tiempo que se muestra el comic antes del bot�n (segundos)")]
    [SerializeField] private float comicDisplayTime = 3f;
    [Tooltip("Duraci�n del fade desde negro (segundos)")]
    [SerializeField] private float fadeFromBlackDuration = 1f;

    [Header("Activation Method")]
    [Tooltip("C�mo se activar� la transici�n")]
    [SerializeField] private ActivationMethod activationMethod = ActivationMethod.DialogueNodeEvent;

    [Header("Node Event Method")]
    [Tooltip("Texto que debe contener el nodo de di�logo para activar transici�n")]
    [SerializeField] private string transitionTriggerText = "[SCENE_TRANSITION]";
    [Tooltip("Nombre espec�fico del nodo que activa la transici�n")]
    [SerializeField] private string transitionNodeName = "EndLevelNode";

    [Header("Auto Method")]
    [Tooltip("�Activar autom�ticamente al terminar di�logo PostDefeat?")]
    [SerializeField] private bool triggerOnPostDefeatEnd = true;

    public enum ActivationMethod
    {
        DialogueNodeEvent,  // Se activa desde un nodo espec�fico del di�logo
        AutoOnPostDefeat,   // Se activa autom�ticamente en PostDefeat
        Manual             // Solo activaci�n manual
    }

    private NPCController controller;
    private bool transitionInProgress = false;
    private AsyncOperation loadOperation;

    public void Initialize(NPCController npcController)
    {
        controller = npcController;

        // Verificar configuraci�n
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

        // Configurar seg�n el m�todo de activaci�n
        SetupActivationMethod();

        Debug.Log($"NPCSceneTransition inicializado - Target: {targetSceneName}, M�todo: {activationMethod}");
    }

    private void InitializeComicUI()
    {
        // Asegurar que la pantalla de carga est� desactivada inicialmente
        if (comicLoadingScreen != null)
        {
            comicLoadingScreen.SetActive(false);
        }

        // Configurar el comic sprite si est� asignado
        if (comicImage != null && comicSprite != null)
        {
            comicImage.sprite = comicSprite;
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
    }

    private void SetupActivationMethod()
    {
        switch (activationMethod)
        {
            case ActivationMethod.DialogueNodeEvent:
                SetupDialogueEvents();
                break;
            case ActivationMethod.AutoOnPostDefeat:
                Debug.Log($"Transici�n autom�tica configurada para PostDefeat en {gameObject.name}");
                break;
            case ActivationMethod.Manual:
                Debug.Log($"Transici�n configurada para activaci�n manual en {gameObject.name}");
                break;
        }
    }

    private void SetupDialogueEvents()
    {
        // Configurar eventos en el di�logo PostDefeat
        if (controller.PostDefeatDialogueNode != null)
        {
            ConfigureNodeForTransition(controller.PostDefeatDialogueNode);
            Debug.Log($"Eventos de transici�n configurados en di�logo PostDefeat de {gameObject.name}");
        }
    }

    private void ConfigureNodeForTransition(DIALOGUENODE node)
    {
        if (node == null) return;

        // Verificar si este nodo debe activar la transici�n
        bool shouldTriggerTransition = node.name == transitionNodeName ||
                                     (!string.IsNullOrEmpty(node.dialogueText) &&
                                      node.dialogueText.Contains(transitionTriggerText));

        if (shouldTriggerTransition)
        {
            // Limpiar listeners previos para evitar duplicados
            node.onNodeEnd.RemoveListener(OnDialogueTransitionTrigger);
            node.onNodeEnd.AddListener(OnDialogueTransitionTrigger);
            Debug.Log($"Configurado evento de transici�n en nodo: {node.name}");
        }

        // Si es el nodo final y est� configurado para activar al final
        if (node.isEndNode && triggerOnPostDefeatEnd && activationMethod == ActivationMethod.DialogueNodeEvent)
        {
            node.onNodeEnd.RemoveListener(OnDialogueTransitionTrigger);
            node.onNodeEnd.AddListener(OnDialogueTransitionTrigger);
            Debug.Log($"Configurado evento de transici�n en nodo final: {node.name}");
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

    // Este m�todo se llama desde los eventos del di�logo
    private void OnDialogueTransitionTrigger()
    {
        Debug.Log($"Evento de di�logo activado - Iniciando secuencia de comic desde {gameObject.name}");
        TriggerSceneTransition();
    }

    // M�todo p�blico para activaci�n autom�tica
    public void OnPostDefeatDialogueEnd()
    {
        if (activationMethod == ActivationMethod.AutoOnPostDefeat && triggerOnPostDefeatEnd)
        {
            Debug.Log("Di�logo PostDefeat terminado - Activando secuencia de comic");
            TriggerSceneTransition();
        }
    }

    // M�todo principal de activaci�n
    public void TriggerSceneTransition()
    {
        if (transitionInProgress)
        {
            Debug.Log($"Transici�n ya est� en progreso en {gameObject.name}");
            return;
        }

        if (string.IsNullOrEmpty(targetSceneName))
        {
            Debug.LogError($"No se puede iniciar transici�n: Nombre de escena no configurado en {gameObject.name}");
            return;
        }

        if (comicLoadingScreen == null)
        {
            Debug.LogError($"No se puede iniciar transici�n: Comic Loading Screen no configurado en {gameObject.name}");
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

        // Paso 2: Peque�a pausa para asegurar que se aplic� el fade
        yield return new WaitForEndOfFrame();

        // Paso 3: Iniciar carga de escena en background
        Debug.Log("Iniciando carga de escena en background...");
        loadOperation = SceneManager.LoadSceneAsync(targetSceneName);
        loadOperation.allowSceneActivation = false; // No activar hasta que presionen continuar

        // Paso 4: Fade desde negro (mostrar comic)
        yield return StartCoroutine(FadeFromBlack());

        // Paso 5: Mostrar comic por el tiempo especificado
        Debug.Log($"Mostrando comic por {comicDisplayTime} segundos...");
        float elapsedTime = 0f;

        while (elapsedTime < comicDisplayTime)
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

        // Paso 6: Esperar a que termine de cargar
        while (loadOperation.progress < 0.9f)
        {
            if (loadingBar != null)
            {
                float progress = Mathf.Clamp01(loadOperation.progress / 0.9f);
                loadingBar.value = progress;
            }
            yield return null;
        }

        // Paso 7: Mostrar bot�n de continuar
        if (loadingBar != null)
        {
            loadingBar.value = 1f;
        }

        if (continueButton != null)
        {
            continueButton.interactable = true;
            Debug.Log("Bot�n de continuar habilitado");
        }
        else
        {
            // Si no hay bot�n, continuar autom�ticamente despu�s de un momento
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
            Debug.Log("Bot�n continuar presionado - Activando nueva escena");
            loadOperation.allowSceneActivation = true;
        }
    }

    // M�todos de debug
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
        Debug.Log($"Transici�n reseteada en {gameObject.name}");
    }

    // Getters p�blicos
    public bool TransitionInProgress => transitionInProgress;
    public string TargetSceneName => targetSceneName;
    public ActivationMethod CurrentActivationMethod => activationMethod;
}