using UnityEngine;

public class NPCDialogueSystem : MonoBehaviour
{
    private NPCController controller;
    private bool isDialogueActive = false;

    [Header("Transformation Settings")]
    [Tooltip("�Se transforma autom�ticamente al terminar el di�logo inicial?")]
    [SerializeField] private bool shouldTransformOnDialogueEnd = false;
    [Tooltip("Nombre del nodo que triggerea la transformaci�n")]
    [SerializeField] private string transformTriggerNodeName = "TransformTriggerNode";
    [Tooltip("Texto que debe contener un nodo para triggear transformaci�n")]
    [SerializeField] private string transformTriggerText = "[TRANSFORM]";

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
    }

    public void StartDialogue(DIALOGUENODE node)
    {
        if (isDialogueActive || node == null) return;

        Debug.Log($"Iniciando di�logo en {gameObject.name} - Estado: {controller.CurrentState}");
        isDialogueActive = true;

        // Solo configurar transformaci�n si estamos en estado NPC inicial
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

        // Verificar si este nodo debe triggear transformaci�n
        bool shouldTransform = node.name == transformTriggerNodeName ||
                              (!string.IsNullOrEmpty(node.dialogueText) && node.dialogueText.Contains(transformTriggerText));

        if (shouldTransform)
        {
            node.onNodeEnd.RemoveListener(OnTransformationTrigger);
            node.onNodeEnd.AddListener(OnTransformationTrigger);
            Debug.Log($"Configurado evento de transformaci�n en nodo: {node.name}");
        }

        // Si es nodo final y debe transformar al final
        if (node.isEndNode && shouldTransformOnDialogueEnd)
        {
            node.onNodeEnd.RemoveListener(OnTransformationTrigger);
            node.onNodeEnd.AddListener(OnTransformationTrigger);
            Debug.Log($"Configurado evento de transformaci�n en nodo final: {node.name}");
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
    }

    public bool IsDialogueActive => isDialogueActive;
}