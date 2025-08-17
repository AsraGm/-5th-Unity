using UnityEngine;
using TMPro;

public class NPCReturnMessage : MonoBehaviour
{
    [Header("Mensaje de Retorno")]
    [Tooltip("Mensaje que se mostrará cuando el NPC regrese a su posición")]
    [TextArea(2, 4)]
    [SerializeField] private string returnMessage = "Debo encontrar a {npcName}...";

    [Header("Referencias UI")]
    [Tooltip("Canvas donde se mostrará el mensaje (se buscará automáticamente si está vacío)")]
    [SerializeField] private Canvas messageCanvas;
    [Tooltip("Contenedor del mensaje (se creará automáticamente si no existe)")]
    [SerializeField] private GameObject messageContainer;
    [Tooltip("Componente de texto (se creará automáticamente si no existe)")]
    [SerializeField] private TextMeshProUGUI messageText;

    [Header("Configuración")]
    [Tooltip("ID único para este mensaje")]
    [SerializeField] private string messageID = "return_message";
    [Tooltip("Tiempo antes de mostrar el mensaje (segundos)")]
    [SerializeField] private float delayBeforeShow = 0.5f;
    [Tooltip("¿Usar el nombre del GameObject como nombre del NPC?")]
    [SerializeField] private bool useGameObjectName = true;
    [Tooltip("Nombre personalizado del NPC (si no se usa el GameObject name)")]
    [SerializeField] private string customNPCName = "";

    // Referencias internas
    private NPCController controller;
    private bool messageActive = false;
    private bool isInitialized = false;

    // Control global de mensajes
    private static GameObject currentActiveContainer = null;
    private static string currentActiveMessageID = "";

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
        messageID = $"{gameObject.name}_return_message";

        // Configurar UI automáticamente
        SetupMessageUI();

        // Ocultar inicialmente
        HideMessage();

        isInitialized = true;
        Debug.Log($"NPCReturnMessage inicializado para {gameObject.name}");
    }

    private void SetupMessageUI()
    {
        // Buscar o crear Canvas
        if (messageCanvas == null)
        {
            messageCanvas = FindCanvasInScene();
        }

        if (messageCanvas == null)
        {
            Debug.LogWarning($"No se encontró Canvas para mensaje de retorno en {gameObject.name}");
            return;
        }

        // Crear o encontrar contenedor
        if (messageContainer == null)
        {
            messageContainer = CreateOrFindMessageContainer();
        }

        // Crear o encontrar texto
        if (messageText == null && messageContainer != null)
        {
            messageText = messageContainer.GetComponentInChildren<TextMeshProUGUI>();
            if (messageText == null)
            {
                messageText = CreateMessageText();
            }
        }
    }

    private Canvas FindCanvasInScene()
    {
        // Buscar canvas común primero
        GameObject canvasObj = GameObject.Find("MESSAGER");
        if (canvasObj != null)
        {
            return canvasObj.GetComponent<Canvas>();
        }

        // Buscar cualquier canvas en la escena
        Canvas[] canvases = FindObjectsOfType<Canvas>();
        foreach (Canvas canvas in canvases)
        {
            if (canvas.gameObject.activeInHierarchy)
            {
                return canvas;
            }
        }

        return null;
    }

    private GameObject CreateOrFindMessageContainer()
    {
        if (messageCanvas == null) return null;

        // Buscar contenedor existente
        Transform existingContainer = messageCanvas.transform.Find("ReturnMessageContainer");
        if (existingContainer != null)
        {
            return existingContainer.gameObject;
        }

        // Crear nuevo contenedor
        GameObject container = new GameObject("ReturnMessageContainer");
        container.transform.SetParent(messageCanvas.transform, false);

        // Configurar RectTransform para posición centrada-superior
        RectTransform rectTransform = container.AddComponent<RectTransform>();
        rectTransform.anchorMin = new Vector2(0.5f, 0.8f);
        rectTransform.anchorMax = new Vector2(0.5f, 0.8f);
        rectTransform.anchoredPosition = Vector2.zero;
        rectTransform.sizeDelta = new Vector2(400, 100);

        return container;
    }

    private TextMeshProUGUI CreateMessageText()
    {
        if (messageContainer == null) return null;

        GameObject textObj = new GameObject("ReturnMessageText");
        textObj.transform.SetParent(messageContainer.transform, false);

        TextMeshProUGUI textComponent = textObj.AddComponent<TextMeshProUGUI>();

        // Configurar texto
        textComponent.text = GetFormattedMessage();
        textComponent.fontSize = 24;
        textComponent.color = Color.white;
        textComponent.alignment = TextAlignmentOptions.Center;
        textComponent.fontStyle = FontStyles.Bold;

        // Configurar RectTransform
        RectTransform textRect = textComponent.GetComponent<RectTransform>();
        textRect.anchorMin = Vector2.zero;
        textRect.anchorMax = Vector2.one;
        textRect.offsetMin = Vector2.zero;
        textRect.offsetMax = Vector2.zero;

        // Agregar outline para mejor legibilidad
        var outline = textObj.AddComponent<UnityEngine.UI.Outline>();
        outline.effectColor = Color.black;
        outline.effectDistance = new Vector2(2, 2);

        return textComponent;
    }

    private string GetFormattedMessage()
    {
        string npcName = useGameObjectName ? gameObject.name : customNPCName;
        return returnMessage.Replace("{npcName}", npcName);
    }

    public void ShowReturnMessage()
    {
        if (!isInitialized || messageActive)
        {
            return;
        }

        // ========== ARREGLO: Solo mostrar si está en PostDefeat ==========
        if (controller == null || !controller.IsPostDefeat)
        {
            Debug.Log($"No se muestra mensaje de retorno en {gameObject.name} - Estado actual: {controller?.CurrentState}");
            return;
        }

        // Corrutina para mostrar con delay
        StartCoroutine(ShowMessageWithDelay());
    }

    private System.Collections.IEnumerator ShowMessageWithDelay()
    {
        yield return new WaitForSeconds(delayBeforeShow);

        // ========== VERIFICACIÓN REFORZADA: Solo en PostDefeat ==========
        if (controller != null && controller.IsPostDefeat && !messageActive)
        {
            // Ocultar mensaje activo anterior si existe
            if (currentActiveContainer != null && currentActiveContainer != messageContainer)
            {
                currentActiveContainer.SetActive(false);
            }

            // Mostrar este mensaje
            if (messageContainer != null)
            {
                messageActive = true;
                currentActiveContainer = messageContainer;
                currentActiveMessageID = messageID;

                messageContainer.SetActive(true);

                // Actualizar texto por si acaso
                if (messageText != null)
                {
                    messageText.text = GetFormattedMessage();
                }

                Debug.Log($"Mensaje de retorno mostrado para {gameObject.name}: {GetFormattedMessage()}");
            }
        }
    }

    public void HideMessage()
    {
        if (messageActive && currentActiveMessageID == messageID)
        {
            messageActive = false;

            if (messageContainer != null)
            {
                messageContainer.SetActive(false);
            }

            // Limpiar variables globales si este era el mensaje activo
            if (currentActiveMessageID == messageID)
            {
                currentActiveContainer = null;
                currentActiveMessageID = "";
            }

            Debug.Log($"Mensaje de retorno ocultado para {gameObject.name}");
        }
    }

    public void UpdateMessage(string newMessage)
    {
        returnMessage = newMessage;
        if (messageText != null && messageActive)
        {
            messageText.text = GetFormattedMessage();
        }
    }

    // Método estático para ocultar todos los mensajes de retorno
    public static void HideAllReturnMessages()
    {
        if (currentActiveContainer != null)
        {
            currentActiveContainer.SetActive(false);
            currentActiveContainer = null;
            currentActiveMessageID = "";
        }
    }

    // Getters públicos
    public bool IsMessageActive => messageActive;
    public string MessageID => messageID;

    // Métodos de debug
    [ContextMenu("Test Show Message")]
    public void DebugShowMessage()
    {
        if (!isInitialized)
        {
            Initialize(GetComponent<NPCController>());
        }

        // ========== ARREGLO: Solo para debug forzado ==========
        Debug.Log($"DEBUG: Forzando mensaje de retorno (Estado actual: {controller?.CurrentState})");
        if (controller != null && !controller.IsPostDefeat)
        {
            Debug.LogWarning($"ADVERTENCIA: Mostrando mensaje de retorno en estado {controller.CurrentState} (solo para debug)");
        }

        StartCoroutine(ShowMessageWithDelay());
    }

    [ContextMenu("Test Hide Message")]
    public void DebugHideMessage()
    {
        HideMessage();
    }

    [ContextMenu("Test Update Message")]
    public void DebugUpdateMessage()
    {
        UpdateMessage("¡Mensaje de prueba actualizado!");
    }
}