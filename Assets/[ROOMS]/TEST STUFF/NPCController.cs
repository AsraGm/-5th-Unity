using UnityEngine;

public class NPCController : MonoBehaviour
{
    [Header("Dialogue Settings")]
    public DIALOGUENODE initialDialogueNode;
    public DIALOGUENODE postDefeatDialogueNode;

    [Header("NPC Components")]
    [Tooltip("Scripts que se desactivan al convertirse en enemigo")]
    public MonoBehaviour[] npcScripts;

    [Header("Enemy Components")]
    [Tooltip("Scripts que se activan al convertirse en enemigo")]
    public MonoBehaviour[] enemyScripts;

    [Header("Colliders")]
    [Tooltip("Collider del trigger de diálogo")]
    [SerializeField] private Collider dialogueTrigger;
    [Tooltip("Collider para combate")]
    [SerializeField] private Collider combatCollider;

    // Componentes modulares
    private NPCDialogueSystem dialogueSystem;
    private NPCTransformation transformation;
    private NPCEffectsManager effectsManager;

    // Estados principales
    public enum NPCState { NPC, Enemy, PostDefeat }
    [SerializeField] private NPCState currentState = NPCState.NPC;

    private void Awake()
    {
        InitializeComponents();
    }

    private void Start()
    {
        SetInitialState();
    }

    private void InitializeComponents()
    {
        // Obtener o agregar componentes modulares
        dialogueSystem = GetComponent<NPCDialogueSystem>() ?? gameObject.AddComponent<NPCDialogueSystem>();
        transformation = GetComponent<NPCTransformation>() ?? gameObject.AddComponent<NPCTransformation>();
        effectsManager = GetComponent<NPCEffectsManager>() ?? gameObject.AddComponent<NPCEffectsManager>();

        // Configurar componentes
        dialogueSystem.Initialize(this);
        transformation.Initialize(this);
        effectsManager.Initialize(this);
    }

    private void SetInitialState()
    {
        SetState(NPCState.NPC);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            HandlePlayerInteraction();
        }
    }

    private void HandlePlayerInteraction()
    {
        switch (currentState)
        {
            case NPCState.NPC:
                dialogueSystem.StartDialogue(initialDialogueNode);
                break;
            case NPCState.PostDefeat:
                dialogueSystem.StartDialogue(postDefeatDialogueNode);
                break;
            case NPCState.Enemy:
                // Los enemigos no inician diálogos
                break;
        }
    }

    // Método público llamado desde el sistema de diálogos
    public void TransformToEnemy()
    {
        if (currentState != NPCState.NPC) return;

        SetState(NPCState.Enemy);
        transformation.ExecuteTransformation();
        effectsManager.PlayTransformationEffects();
    }

    // Método público llamado desde LevelsManager
    public void DefeatBoss()
    {
        if (currentState != NPCState.Enemy) return;

        Debug.Log($"{gameObject.name} ha sido salvado/derrotado!");
        SetState(NPCState.PostDefeat);
        transformation.RevertToNPC();
        effectsManager.PlayDefeatEffects();
    }

    private void SetState(NPCState newState)
    {
        currentState = newState;
        UpdateComponents();
    }

    private void UpdateComponents()
    {
        switch (currentState)
        {
            case NPCState.NPC:
                SetScriptsEnabled(npcScripts, true);
                SetScriptsEnabled(enemyScripts, false);
                SetColliders(true, false);
                SetTag("NPC");
                break;

            case NPCState.Enemy:
                SetScriptsEnabled(npcScripts, false);
                SetScriptsEnabled(enemyScripts, true);
                SetColliders(false, true);
                SetTag("Enemy");
                break;

            case NPCState.PostDefeat:
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

    // Getters públicos
    public NPCState CurrentState => currentState;
    public bool IsNPC => currentState == NPCState.NPC;
    public bool IsEnemy => currentState == NPCState.Enemy;
    public bool IsPostDefeat => currentState == NPCState.PostDefeat;

    // Debug methods
    [ContextMenu("Transform to Enemy")]
    public void DebugTransform() => TransformToEnemy();

    [ContextMenu("Defeat Boss")]
    public void DebugDefeat() => DefeatBoss();
}