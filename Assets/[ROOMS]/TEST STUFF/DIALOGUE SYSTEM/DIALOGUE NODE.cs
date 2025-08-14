using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "DIALOGUENODE", menuName = "DIALOGUE/DIALOGUENODE")]
public class DIALOGUENODE : ScriptableObject
{
    [TextArea(3, 10)]
    public string dialogueText;  // Texto del diálogo.

    public DialogueResponse[] responses;  // Posibles respuestas.

    public bool isEndNode;      // Si es true, termina el diálogo.

    [Header("Texto de Botón de Cierre")]
    [Tooltip("Texto que aparecerá en el botón cuando sea nodo final. Si está vacío, usa 'Cerrar'")]
    public string customCloseButtonText = ""; // NUEVA PROPIEDAD

    public UnityEvent onNodeStart;
    public UnityEvent onNodeEnd;

    // Método helper para obtener el texto del botón
    public string GetCloseButtonText()
    {
        return string.IsNullOrEmpty(customCloseButtonText) ? "Cerrar" : customCloseButtonText;
    }
}

[System.Serializable]
public class DialogueResponse
{
    public string responseText; // Texto de la respuesta.
    public DIALOGUENODE nextNode; // Nodo al que lleva esta respuesta. 
}