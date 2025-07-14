using UnityEngine;

public class NPC : MonoBehaviour
{
    public DIALOGUENODE startNode;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            DialogueManager.Instance.StartDialogue(startNode);
        }
    }
}