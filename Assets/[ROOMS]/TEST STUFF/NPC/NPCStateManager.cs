using UnityEngine;

public class NPCStateManager : MonoBehaviour
{
    private NPCController controller;
    private NPCComponentController componentController;

    [SerializeField] private NPCController.NPCState currentState = NPCController.NPCState.NPC;

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
        componentController = GetComponent<NPCComponentController>();
    }

    public void SetInitialState()
    {
        SetState(NPCController.NPCState.NPC);
    }

    public void SetState(NPCController.NPCState newState)
    {
        currentState = newState;
        UpdateComponents();
    }

    private void UpdateComponents()
    {
        if (componentController != null)
        {
            componentController.UpdateComponentsForState(currentState);
        }
    }

    public NPCController.NPCState CurrentState => currentState;
}