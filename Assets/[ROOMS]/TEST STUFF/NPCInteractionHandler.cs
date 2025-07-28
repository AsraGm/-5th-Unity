using UnityEngine;

public class NPCInteractionHandler : MonoBehaviour
{
    private NPCController controller;
    private NPCDialogueSystem dialogueSystem;

    public void Initialize(NPCController npcController, NPCDialogueSystem npcDialogueSystem)
    {
        controller = npcController;
        dialogueSystem = npcDialogueSystem;
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            HandlePlayerInteraction();
        }
    }

    private void HandlePlayerInteraction()
    {
        switch (controller.CurrentState)
        {
            case NPCController.NPCState.NPC:
                dialogueSystem.StartDialogue(controller.InitialDialogueNode);
                break;
            case NPCController.NPCState.PostDefeat:
                dialogueSystem.StartDialogue(controller.PostDefeatDialogueNode);
                break;
            case NPCController.NPCState.Enemy:
                // Los enemigos no inician diálogos
                break;
        }
    }
}