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

    // Componentes modulares existentes
    private NPCDialogueSystem dialogueSystem;
    private NPCTransformation transformation;
    private NPCEffectsManager effectsManager;

    // Nuevos componentes modulares
    private NPCStateManager stateManager;
    private NPCInteractionHandler interactionHandler;
    private NPCComponentController componentController;
    private NPCSceneTransition sceneTransition;

    // Estados principales
    public enum NPCState { NPC, Enemy, PostDefeat }

    private void Awake()
    {
        InitializeComponents();
    }

    private void Start()
    {
        stateManager.SetInitialState();
    }

    private void InitializeComponents()
    {
        // Componentes existentes
        dialogueSystem = GetComponent<NPCDialogueSystem>() ?? gameObject.AddComponent<NPCDialogueSystem>();
        transformation = GetComponent<NPCTransformation>() ?? gameObject.AddComponent<NPCTransformation>();
        effectsManager = GetComponent<NPCEffectsManager>() ?? gameObject.AddComponent<NPCEffectsManager>();

        // Nuevos componentes modulares
        stateManager = GetComponent<NPCStateManager>() ?? gameObject.AddComponent<NPCStateManager>();
        interactionHandler = GetComponent<NPCInteractionHandler>() ?? gameObject.AddComponent<NPCInteractionHandler>();
        componentController = GetComponent<NPCComponentController>() ?? gameObject.AddComponent<NPCComponentController>();
        sceneTransition = GetComponent<NPCSceneTransition>() ?? gameObject.AddComponent<NPCSceneTransition>();

        // Configurar todos los componentes
        dialogueSystem.Initialize(this);
        transformation.Initialize(this);
        effectsManager.Initialize(this);
        stateManager.Initialize(this);
        interactionHandler.Initialize(this, dialogueSystem);
        componentController.Initialize(this, npcScripts, enemyScripts, dialogueTrigger, combatCollider);
        sceneTransition.Initialize(this);
    }

    private void OnTriggerEnter(Collider other)
    {
        interactionHandler.OnTriggerEnter(other);
    }

    // Métodos públicos que mantienen la interfaz original
    public void TransformToEnemy()
    {
        if (stateManager.CurrentState != NPCState.NPC) return;

        stateManager.SetState(NPCState.Enemy);
        transformation.ExecuteTransformation();
        effectsManager.PlayTransformationEffects();
    }

    public void DefeatBoss()
    {
        if (stateManager.CurrentState != NPCState.Enemy) return;

        Debug.Log($"{gameObject.name} ha sido salvado/derrotado!");
        stateManager.SetState(NPCState.PostDefeat);
        transformation.RevertToNPC();
        effectsManager.PlayDefeatEffects();
    }

    public void RevertToNPC()
    {
        if (stateManager.CurrentState != NPCState.NPC)
        {
            Debug.Log($"Forzando {gameObject.name} de vuelta a estado NPC");
            stateManager.SetState(NPCState.NPC);
            transformation.RevertToNPC();
        }
    }

    // Getters públicos - mantienen la interfaz original
    public NPCState CurrentState => stateManager.CurrentState;
    public bool IsNPC => stateManager.CurrentState == NPCState.NPC;
    public bool IsEnemy => stateManager.CurrentState == NPCState.Enemy;
    public bool IsPostDefeat => stateManager.CurrentState == NPCState.PostDefeat;

    // Propiedades públicas para acceso de componentes
    public DIALOGUENODE InitialDialogueNode => initialDialogueNode;
    public DIALOGUENODE PostDefeatDialogueNode => postDefeatDialogueNode;

    // Debug methods - mantienen funcionalidad original
    [ContextMenu("Transform to Enemy")]
    public void DebugTransform() => TransformToEnemy();

    [ContextMenu("Defeat Boss")]
    public void DebugDefeat() => DefeatBoss();
}