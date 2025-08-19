using UnityEngine;
using SmallHedge.SoundManager;

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

        SoundType soundToPlay = SoundType.None;

        // Decidimos qué variable del controller usar según el estado
        switch (newState)
        {
            case NPCController.NPCState.NPC:
                soundToPlay = controller.musicNPCState; // <-- Usa la variable pública
                break;

            case NPCController.NPCState.Enemy:
                soundToPlay = controller.musicEnemyState; // <-- Usa la variable pública
                break;

            case NPCController.NPCState.PostDefeat:
                soundToPlay = controller.musicPostDefeatState; // <-- Usa la variable pública
                break;
        }

        // Solo reproducimos el sonido si se ha asignado uno diferente a "None"
        if (soundToPlay != SoundType.None)
        {
            SoundManager.PlaySound(soundToPlay);
        }
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