using UnityEngine;
using System.Collections;

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

    [Header("Post Defeat Position")]
    [Tooltip("Empty GameObject donde se moverá el jefe al ser derrotado")]
    [SerializeField] private Transform defeatPosition;
    [Tooltip("¿Mover instantáneamente o con animación?")]
    [SerializeField] private bool instantTeleport = true;
    [Tooltip("Velocidad de movimiento si no es teleport instantáneo")]
    [SerializeField] private float moveSpeed = 5f;

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

        // ========== NUEVA SECUENCIA: PARAR + MOVER A POSICIÓN ==========
        StartCoroutine(DefeatSequence());
    }

    private IEnumerator DefeatSequence()
    {
        // Paso 1: Parar todo movimiento inmediatamente
        StopAllMovement();

        // Paso 2: Mover a la posición de derrota si está configurada
        if (defeatPosition != null)
        {
            yield return StartCoroutine(MoveToDefeatPosition());
        }
        else
        {
            Debug.LogWarning($"No hay posición de derrota configurada para {gameObject.name}");
        }

        Debug.Log($"{gameObject.name} secuencia de derrota completada");
    }

    private IEnumerator MoveToDefeatPosition()
    {
        if (instantTeleport)
        {
            // Teleport instantáneo
            transform.position = defeatPosition.position;
            transform.rotation = defeatPosition.rotation;
            Debug.Log($"{gameObject.name} teleportado a posición de derrota");
        }
        else
        {
            // Movimiento suave
            Debug.Log($"{gameObject.name} moviéndose a posición de derrota...");

            Vector3 startPos = transform.position;
            Quaternion startRot = transform.rotation;
            float elapsedTime = 0f;
            float duration = Vector3.Distance(startPos, defeatPosition.position) / moveSpeed;

            while (elapsedTime < duration)
            {
                elapsedTime += Time.deltaTime;
                float progress = elapsedTime / duration;

                transform.position = Vector3.Lerp(startPos, defeatPosition.position, progress);
                transform.rotation = Quaternion.Lerp(startRot, defeatPosition.rotation, progress);

                yield return null;
            }

            // Asegurar posición final exacta
            transform.position = defeatPosition.position;
            transform.rotation = defeatPosition.rotation;

            Debug.Log($"{gameObject.name} llegó a posición de derrota");
        }
    }

    private void StopAllMovement()
    {
        // Parar NavMeshAgent
        var navAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        if (navAgent != null)
        {
            navAgent.isStopped = true;
            navAgent.velocity = Vector3.zero;
        }

        // Parar Rigidbody
        var rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.linearVelocity = Vector3.zero;
            rb.angularVelocity = Vector3.zero;
            rb.isKinematic = true;
        }

        // Parar Animator (opcional)
        var animator = GetComponent<Animator>();
        if (animator != null)
        {
            animator.speed = 0f; // Para animaciones de movimiento
        }

        Debug.Log($"{gameObject.name} detenido completamente");
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

    [ContextMenu("Move to Defeat Position")]
    public void DebugMoveToDefeatPosition()
    {
        if (defeatPosition != null)
        {
            StartCoroutine(MoveToDefeatPosition());
        }
    }
}