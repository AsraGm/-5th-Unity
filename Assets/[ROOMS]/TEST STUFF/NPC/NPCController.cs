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

    [Header("Animation Settings")]
    [Tooltip("Nombre del state de muerte en el Animator (debe coincidir exactamente)")]
    [SerializeField] private string deathStateName = "Death";
    [Tooltip("Tiempo máximo de espera por la animación (seguridad)")]
    [SerializeField] private float maxAnimationWaitTime = 5f;

    // Componentes modulares existentes
    private NPCDialogueSystem dialogueSystem;
    private NPCTransformation transformation;
    private NPCEffectsManager effectsManager;

    // Nuevos componentes modulares
    private NPCStateManager stateManager;
    private NPCInteractionHandler interactionHandler;
    private NPCComponentController componentController;
    private NPCSceneTransition sceneTransition;
    private NPCItemSpawner itemSpawner;

    // ========== NUEVO: Componente de mensaje de retorno ==========
    private NPCReturnMessage returnMessage;

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
        itemSpawner = GetComponent<NPCItemSpawner>() ?? gameObject.AddComponent<NPCItemSpawner>();
        dialogueSystem = GetComponent<NPCDialogueSystem>() ?? gameObject.AddComponent<NPCDialogueSystem>();
        transformation = GetComponent<NPCTransformation>() ?? gameObject.AddComponent<NPCTransformation>();
        effectsManager = GetComponent<NPCEffectsManager>() ?? gameObject.AddComponent<NPCEffectsManager>();

        // Nuevos componentes modulares
        stateManager = GetComponent<NPCStateManager>() ?? gameObject.AddComponent<NPCStateManager>();
        interactionHandler = GetComponent<NPCInteractionHandler>() ?? gameObject.AddComponent<NPCInteractionHandler>();
        componentController = GetComponent<NPCComponentController>() ?? gameObject.AddComponent<NPCComponentController>();
        sceneTransition = GetComponent<NPCSceneTransition>() ?? gameObject.AddComponent<NPCSceneTransition>();

        // ========== NUEVO: Inicializar componente de mensaje de retorno ==========
        returnMessage = GetComponent<NPCReturnMessage>() ?? gameObject.AddComponent<NPCReturnMessage>();

        // Configurar todos los componentes
        dialogueSystem.Initialize(this);
        transformation.Initialize(this);
        effectsManager.Initialize(this);
        stateManager.Initialize(this);
        interactionHandler.Initialize(this, dialogueSystem);
        componentController.Initialize(this, npcScripts, enemyScripts, dialogueTrigger, combatCollider);
        sceneTransition.Initialize(this);

        // ========== NUEVO: Inicializar mensaje de retorno ==========
        returnMessage.Initialize(this);
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
        effectsManager.PlayTransformationEffects(); // ========== AQUÍ SE SPAWEAN LAS PARTÍCULAS ==========
        if (itemSpawner != null)
        {
            itemSpawner.ActivateCollectibleItems();
        }

        // ========== NUEVO: Ocultar mensaje de retorno si estaba activo ==========
        if (returnMessage != null)
        {
            returnMessage.HideMessage();
        }
    }

    public bool AllRequiredItemsCollected()
    {
        return itemSpawner != null ? itemSpawner.AllItemsCollected() : true;
    }

    public int GetRemainingItemsCount()
    {
        return itemSpawner != null ? itemSpawner.GetRemainingItemsCount() : 0;
    }

    public void DefeatBoss()
    {
        if (stateManager.CurrentState != NPCState.Enemy) return;

        Debug.Log($"{gameObject.name} ha sido salvado/derrotado!");
        stateManager.SetState(NPCState.PostDefeat);
        // NO llamar transformation.RevertToNPC() aquí - se hará al final
        effectsManager.PlayDefeatEffects();

        // ========== NUEVA SECUENCIA MEJORADA ==========
        StartCoroutine(DefeatSequenceWithAnimation());
    }

    private IEnumerator DefeatSequenceWithAnimation()
    {
        // Paso 1: Parar movimiento PERO mantener animator activo para la animación
        StopMovementButKeepAnimation();

        // Paso 2: Activar animación de muerte
        Animator animator = GetComponent<Animator>();
        if (animator != null)
        {
            animator.SetTrigger("Death");
            Debug.Log($"{gameObject.name} - Animación de muerte activada");
        }
        else
        {
            Debug.LogWarning($"{gameObject.name} - No se encontró Animator!");
        }

        // Paso 3: Esperar a que termine la animación
        yield return StartCoroutine(WaitForDeathAnimation());

        // Paso 4: Ahora sí mover a la posición de derrota
        if (defeatPosition != null)
        {
            yield return StartCoroutine(MoveToDefeatPosition());
        }
        else
        {
            Debug.LogWarning($"No hay posición de derrota configurada para {gameObject.name}");
        }

        // Paso 5: AHORA SÍ convertir a NPC (después de todo)
        transformation.RevertToNPC();
        
        // ========== NUEVO: DESTRUIR PARTÍCULAS AL VOLVER A NPC ==========
        effectsManager.DestroyParticleSystem();
        Debug.Log($"{gameObject.name} - Partículas destruidas al volver a NPC");
        
        Debug.Log($"{gameObject.name} - Convertido a NPC después de secuencia completa");

        // ========== NUEVO: Paso 6 - Mostrar mensaje de retorno ==========
        if (returnMessage != null)
        {
            returnMessage.ShowReturnMessage();
            Debug.Log($"{gameObject.name} - Mensaje de retorno activado");
        }

        Debug.Log($"{gameObject.name} - Secuencia de derrota completada");
    }

    private IEnumerator WaitForDeathAnimation()
    {
        Animator animator = GetComponent<Animator>();
        if (animator == null)
        {
            Debug.LogWarning($"{gameObject.name} - No hay Animator, saltando espera de animación");
            yield break;
        }

        float waitStartTime = Time.time;

        // Esperar un frame para que el trigger se procese
        yield return null;

        // Esperar hasta que entre al state de muerte (con timeout de seguridad)
        while (!IsInDeathState(animator) && (Time.time - waitStartTime) < maxAnimationWaitTime)
        {
            yield return null;
        }

        if (!IsInDeathState(animator))
        {
            Debug.LogWarning($"{gameObject.name} - No se pudo detectar el state de muerte '{deathStateName}'. Continuando...");
            yield break;
        }

        Debug.Log($"{gameObject.name} - Entrando en animación de muerte...");

        // Esperar hasta que la animación termine (normalizedTime >= 1.0)
        while (IsInDeathState(animator) && animator.GetCurrentAnimatorStateInfo(0).normalizedTime < 1.0f
               && (Time.time - waitStartTime) < maxAnimationWaitTime)
        {
            yield return null;
        }

        Debug.Log($"{gameObject.name} - Animación de muerte completada");
    }

    private bool IsInDeathState(Animator animator)
    {
        if (animator == null) return false;

        AnimatorStateInfo currentState = animator.GetCurrentAnimatorStateInfo(0);
        return currentState.IsName(deathStateName);
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

    // NUEVO: Método que para el movimiento pero permite que siga la animación
    private void StopMovementButKeepAnimation()
    {
        // Parar NavMeshAgent
        var navAgent = GetComponent<UnityEngine.AI.NavMeshAgent>();
        if (navAgent != null)
        {
            navAgent.isStopped = true;
            navAgent.velocity = Vector3.zero;
            navAgent.ResetPath(); // Limpiar path
        }

        // Parar Rigidbody
        var rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.linearVelocity = Vector3.zero;
            rb.angularVelocity = Vector3.zero;
            // NO ponemos isKinematic = true aquí para que la animación pueda mover el objeto si es necesario
        }

        // Parar scripts de seguimiento enemigo
        var enemyFollow = GetComponent<EnemyFollow>();
        if (enemyFollow != null)
        {
            enemyFollow.StopFollowing();
        }

        // Parar combate
        var enemy = GetComponent<Enemy>();
        if (enemy != null)
        {
            enemy.DisableDamage();
        }

        // NUEVO: Asegurar que Following esté en false para el Animator
        var animator = GetComponent<Animator>();
        if (animator != null)
        {
            animator.SetBool("Following", false);
            Debug.Log($"{gameObject.name} - Following establecido en false");
        }

        // MANTENER el Animator activo - NO tocamos animator.speed aquí

        Debug.Log($"{gameObject.name} - Movimiento detenido, animación activa");
    }

    // Mantener el método original por compatibilidad
    private void StopAllMovement()
    {
        StopMovementButKeepAnimation();

        // Además parar completamente el animator
        var animator = GetComponent<Animator>();
        if (animator != null)
        {
            animator.speed = 0f;
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
            
            // ========== NUEVO: DESTRUIR PARTÍCULAS SI LAS HAY ==========
            effectsManager.DestroyParticleSystem();
        }
    }

    // ========== NUEVO: Métodos públicos para el mensaje de retorno ==========
    public void ShowReturnMessage()
    {
        // ========== ARREGLO: Solo mostrar en PostDefeat ==========
        if (returnMessage != null && IsPostDefeat)
        {
            returnMessage.ShowReturnMessage();
            Debug.Log($"Mostrando mensaje de retorno para {gameObject.name} en estado PostDefeat");
        }
        else
        {
            Debug.Log($"No se muestra mensaje de retorno para {gameObject.name} - Estado: {CurrentState}");
        }
    }

    public void HideReturnMessage()
    {
        if (returnMessage != null)
        {
            returnMessage.HideMessage();
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

    // ========== NUEVO: Getter para el componente de mensaje ==========
    public NPCReturnMessage ReturnMessage => returnMessage;

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

    [ContextMenu("Test Death Animation Wait")]
    public void DebugTestDeathAnimation()
    {
        StartCoroutine(DefeatSequenceWithAnimation());
    }

    // ========== NUEVO: Métodos de debug para mensaje de retorno ==========
    [ContextMenu("Show Return Message")]
    public void DebugShowReturnMessage() => ShowReturnMessage();

    [ContextMenu("Hide Return Message")]
    public void DebugHideReturnMessage() => HideReturnMessage();

    // ========== NUEVO: Métodos de debug para partículas ==========
    [ContextMenu("Debug Spawn Particles")]
    public void DebugSpawnParticles() => effectsManager.PlayTransformationEffects();

    [ContextMenu("Debug Destroy Particles")]
    public void DebugDestroyParticles() => effectsManager.DestroyParticleSystem();
}