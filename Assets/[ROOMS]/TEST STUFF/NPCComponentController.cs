using UnityEngine;

public class NPCComponentController : MonoBehaviour
{
    private NPCController controller;
    private MonoBehaviour[] npcScripts;
    private MonoBehaviour[] enemyScripts;
    private Collider dialogueTrigger;
    private Collider combatCollider;

    public void Initialize(NPCController npcController, MonoBehaviour[] npcScriptsArray,
                          MonoBehaviour[] enemyScriptsArray, Collider dialogueCollider, Collider combatCollider)
    {
        controller = npcController;
        npcScripts = npcScriptsArray;
        enemyScripts = enemyScriptsArray;
        dialogueTrigger = dialogueCollider;
        this.combatCollider = combatCollider;
    }

    public void UpdateComponentsForState(NPCController.NPCState state)
    {
        switch (state)
        {
            case NPCController.NPCState.NPC:
                SetScriptsEnabled(npcScripts, true);
                SetScriptsEnabled(enemyScripts, false);
                SetColliders(true, false);
                SetTag("NPC");
                break;

            case NPCController.NPCState.Enemy:
                SetScriptsEnabled(npcScripts, false);
                SetScriptsEnabled(enemyScripts, true);
                SetColliders(false, true);
                SetTag("Enemy");
                break;

            case NPCController.NPCState.PostDefeat:
                SetScriptsEnabled(npcScripts, true);
                SetScriptsEnabled(enemyScripts, false);
                SetColliders(true, false);
                SetTag("NPC");
                break;
        }
    }

    private void SetScriptsEnabled(MonoBehaviour[] scripts, bool enabled)
    {
        if (scripts == null) return;

        for (int i = 0; i < scripts.Length; i++)
        {
            if (scripts[i] != null && scripts[i].enabled != enabled)
            {
                scripts[i].enabled = enabled;
            }
        }
    }

    private void SetColliders(bool dialogueEnabled, bool combatEnabled)
    {
        if (dialogueTrigger != null) dialogueTrigger.enabled = dialogueEnabled;
        if (combatCollider != null) combatCollider.enabled = combatEnabled;
    }

    private void SetTag(string newTag)
    {
        if (gameObject.tag != newTag)
        {
            gameObject.tag = newTag;
        }
    }
}