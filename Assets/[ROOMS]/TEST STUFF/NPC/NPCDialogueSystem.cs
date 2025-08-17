using UnityEngine;

public class NPCDialogueSystem : MonoBehaviour
{
    private NPCController controller;
    private bool isDialogueActive = false;
    private DIALOGUENODE currentDialogueNode; // Nueva variable para trackear el diálogo actual

    [Header("Transformation Settings")]
    [Tooltip("¿Se transforma automáticamente al terminar el diálogo inicial?")]
    [SerializeField] private bool shouldTransformOnDialogueEnd = false;
    [Tooltip("Nombre del nodo que triggerea la transformación")]
    [SerializeField] private string transformTriggerNodeName = "TransformTriggerNode";
    [Tooltip("Texto que debe contener un nodo para triggear transformación")]
    [SerializeField] private string transformTriggerText = "[TRANSFORM]";

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
    }

    public void StartDialogue(DIALOGUENODE node)
    {
        if (isDialogueActive || node == null) return;

        Debug.Log($"Iniciando diálogo en {gameObject.name} - Estado: {controller.CurrentState}");
        isDialogueActive = true;
        currentDialogueNode = node; // Guardar referencia del diálogo actual

        // ========== NUEVO: Ocultar mensaje de retorno al iniciar cualquier diálogo ==========
        if (controller.ReturnMessage != null && controller.ReturnMessage.IsMessageActive)
        {
            controller.HideReturnMessage();
            Debug.Log($"Mensaje de retorno ocultado al iniciar diálogo en {gameObject.name}");
        }

        // Solo configurar transformación si estamos en estado NPC inicial
        if (controller.IsNPC)
        {
            ConfigureTransformationEvents(node);
        }

        DialogueManager.Instance.StartDialogue(node);
    }

    private void ConfigureTransformationEvents(DIALOGUENODE node)
    {
        ConfigureNodeEvents(node);
    }

    private void ConfigureNodeEvents(DIALOGUENODE node)
    {
        if (node == null) return;

        // Verificar si este nodo debe triggear transformación
        bool shouldTransform = node.name == transformTriggerNodeName ||
                              (!string.IsNullOrEmpty(node.dialogueText) && node.dialogueText.Contains(transformTriggerText));

        if (shouldTransform)
        {
            node.onNodeEnd.RemoveListener(OnTransformationTrigger);
            node.onNodeEnd.AddListener(OnTransformationTrigger);
            Debug.Log($"Configurado evento de transformación en nodo: {node.name}");
        }

        // Si es nodo final y debe transformar al final
        if (node.isEndNode && shouldTransformOnDialogueEnd)
        {
            node.onNodeEnd.RemoveListener(OnTransformationTrigger);
            node.onNodeEnd.AddListener(OnTransformationTrigger);
            Debug.Log($"Configurado evento de transformación en nodo final: {node.name}");
        }

        // Configurar recursivamente las respuestas
        if (node.responses != null)
        {
            for (int i = 0; i < node.responses.Length; i++)
            {
                if (node.responses[i].nextNode != null)
                {
                    ConfigureNodeEvents(node.responses[i].nextNode);
                }
            }
        }
    }

    private void OnTransformationTrigger()
    {
        isDialogueActive = false;
        controller.TransformToEnemy();
    }

    public void OnDialogueEnd()
    {
        isDialogueActive = false;

        // Verificar si era un diálogo PostDefeat que terminó
        if (controller.IsPostDefeat && currentDialogueNode == controller.PostDefeatDialogueNode)
        {
            Debug.Log("Diálogo PostDefeat terminado - Activando transición de escena");
            GetComponent<NPCSceneTransition>()?.OnPostDefeatDialogueEnd();
        }

        // ========== NUEVO: Si terminó un diálogo pero el NPC sigue en PostDefeat, mostrar mensaje de retorno de nuevo ==========
        // Esto es por si el jugador cancela el diálogo o si no hay transición de escena
        else if (controller.IsPostDefeat && currentDialogueNode != controller.PostDefeatDialogueNode)
        {
            // Pequeño delay para que el diálogo se cierre completamente antes de mostrar el mensaje
            StartCoroutine(ShowReturnMessageAfterDelay());
        }

        // Limpiar referencia
        currentDialogueNode = null;
    }

    // ========== NUEVO: Corrutina para mostrar mensaje de retorno con delay ==========
    private System.Collections.IEnumerator ShowReturnMessageAfterDelay()
    {
        yield return new WaitForSeconds(0.5f);

        // Verificar que aún esté en PostDefeat y no haya otro diálogo activo
        if (controller.IsPostDefeat && !isDialogueActive)
        {
            controller.ShowReturnMessage();
            Debug.Log($"Mensaje de retorno reactivado después de cerrar diálogo en {gameObject.name}");
        }
    }

    public bool IsDialogueActive => isDialogueActive;
}

    // ========== NUEVO: Méto