using UnityEngine;
using UnityEngine.Events;

[CreateAssetMenu(fileName = "DIALOGUENODE", menuName = "DIALOGUE/DIALOGUENODE")]
public class DIALOGUENODE : ScriptableObject
{
    [TextArea(3, 10)]
    public string dialogueText;  // Texto del di�logo.
    public DialogueResponse[] responses;  // Posibles respuestas.
    public bool isEndNode;      // Si es true, termina el di�logo.

    public UnityEvent onNodeStart;
    public UnityEvent onNodeEnd;
}

[System.Serializable]
public class DialogueResponse
{
    public string responseText; // Texto de la respuesta.
    public DIALOGUENODE nextNode; // Nodo al que lleva esta respuesta. 
}