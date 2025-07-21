using UnityEngine;

public class NPCEnemyTransform : MonoBehaviour
{
    [Header("Dialogue Settings")]
    public DIALOGUENODE startNode;

    [Header("NPC Components")]
    [Tooltip("Scripts que se desactivan al convertirse en enemigo")]
    public MonoBehaviour[] npcScripts;

    [Header("Enemy Components")]
    [Tooltip("Scripts que se activan al convertirse en enemigo")]
    public MonoBehaviour[] enemyScripts;

    [Header("Optional Components")]
    [Tooltip("Collider del trigger de di�logo (se desactiva)")]
    [SerializeField] private Collider dialogueTrigger;
    [Tooltip("Collider para combate (se activa)")]
    [SerializeField] private Collider combatCollider;

    [Header("Visual Changes")]
    [Tooltip("Material/Shader para modo enemigo")]
    [SerializeField] private Material enemyMaterial;
    [Tooltip("Renderer del personaje")]
    [SerializeField] private Renderer characterRenderer;

    [Header("Animation")]
    [Tooltip("Animator del personaje")]
    [SerializeField] private Animator characterAnimator;
    [Tooltip("Trigger de animaci�n para transformaci�n")]
    [SerializeField] private string transformTrigger = "TransformToEnemy";

    [Header("Audio")]
    [Tooltip("Sonido de transformaci�n")]
    [SerializeField] private AudioClip transformSound;
    [Tooltip("AudioSource del personaje")]
    [SerializeField] private AudioSource audioSource;

    [Header("Transformation Settings")]
    [Tooltip("�Se transforma autom�ticamente al terminar el di�logo?")]
    [SerializeField] private bool shouldTransformOnDialogueEnd = false;
    [Tooltip("Nombre del nodo que triggerea la transformaci�n")]
    [SerializeField] private string transformTriggerNodeName = "TransformTriggerNode";
    [Tooltip("Texto que debe contener un nodo para triggear transformaci�n")]
    [SerializeField] private string transformTriggerText = "[TRANSFORM]";
    // Estados
    private bool hasTransformed = false;
    private bool isDialogueActive = false;

    // Cache del material original
    private Material originalMaterial;

    private void Start()
    {
        InitializeNPC();
    }

    private void InitializeNPC()
    {
        // Cachear material original
        if (characterRenderer != null)
        {
            originalMaterial = characterRenderer.material;
        }

        // Asegurar que empiece en modo NPC
        SetNPCMode();
    }

    private void OnTriggerEnter(Collider other)
    {
        // Solo activar di�logo si no se ha transformado y no hay di�logo activo
        if (hasTransformed || isDialogueActive) return;

        if (other.CompareTag("Player"))
        {
            StartDialogue();
        }
    }

    private void StartDialogue()
    {
        isDialogueActive = true;

        if (startNode != null)
        {
            // OPCI�N 1: Configurar el evento antes de iniciar el di�logo
            ConfigureDialogueEvents(startNode);

            DialogueManager.Instance.StartDialogue(startNode);
        }
    }

    // Configura eventos para nodos espec�ficos que deben triggear la transformaci�n
    private void ConfigureDialogueEvents(DIALOGUENODE node)
    {
        // Recorrer todos los nodos del �rbol de di�logo
        ConfigureNodeEvents(node);
    }

    private void ConfigureNodeEvents(DIALOGUENODE node)
    {
        if (node == null) return;

        // OPCI�N A: Si el nodo tiene un nombre espec�fico
        if (node.name == "TransformTriggerNode" || node.dialogueText.Contains("[TRANSFORM]"))
        {
            // Remover listeners anteriores para evitar duplicados
            node.onNodeEnd.RemoveListener(TransformToEnemy);
            // Agregar el evento de transformaci�n
            node.onNodeEnd.AddListener(TransformToEnemy);
        }

        // OPCI�N B: Si es un nodo final y quieres que siempre transforme al final
        if (node.isEndNode && shouldTransformOnDialogueEnd)
        {
            node.onNodeEnd.RemoveListener(TransformToEnemy);
            node.onNodeEnd.AddListener(TransformToEnemy);
        }

        // Recursivamente configurar eventos para respuestas
        if (node.responses != null)
        {
            foreach (var response in node.responses)
            {
                if (response.nextNode != null)
                {
                    ConfigureNodeEvents(response.nextNode);
                }
            }
        }
    }

    // M�todo p�blico para llamar desde el sistema de di�logos o eventos
    public void TransformToEnemy()
    {
        if (hasTransformed) return;

        StartCoroutine(TransformationSequence());
    }

    // M�todo p�blico para configurar transformaci�n en nodo espec�fico (llamar desde el inspector o script)
    public void SetTransformationNode(DIALOGUENODE node)
    {
        if (node != null)
        {
            node.onNodeEnd.RemoveListener(TransformToEnemy);
            node.onNodeEnd.AddListener(TransformToEnemy);
        }
    }

    // Secuencia de transformaci�n con efectos
    private System.Collections.IEnumerator TransformationSequence()
    {
        hasTransformed = true;
        isDialogueActive = false;

        // 1. Reproducir sonido
        if (audioSource != null && transformSound != null)
        {
            audioSource.PlayOneShot(transformSound);
        }

        // 2. Animaci�n de transformaci�n
        if (characterAnimator != null && !string.IsNullOrEmpty(transformTrigger))
        {
            characterAnimator.SetTrigger(transformTrigger);
            yield return new WaitForSeconds(0.5f); // Tiempo para la animaci�n
        }

        // 3. Cambio visual
        if (characterRenderer != null && enemyMaterial != null)
        {
            characterRenderer.material = enemyMaterial;
        }

        // 4. Cambio de scripts y componentes
        SetEnemyMode();

        // 5. Peque�a pausa dram�tica
        yield return new WaitForSeconds(1f);

        Debug.Log($"{gameObject.name} se ha transformado en enemigo!");
    }

    private void SetNPCMode()
    {
        // Activar scripts de NPC
        SetScriptsEnabled(npcScripts, true);

        // Desactivar scripts de enemigo
        SetScriptsEnabled(enemyScripts, false);

        // Configurar colliders
        if (dialogueTrigger != null) dialogueTrigger.enabled = true;
        if (combatCollider != null) combatCollider.enabled = false;
    }

    private void SetEnemyMode()
    {
        // Desactivar scripts de NPC
        SetScriptsEnabled(npcScripts, false);

        // Activar scripts de enemigo
        SetScriptsEnabled(enemyScripts, true);

        // Configurar colliders
        if (dialogueTrigger != null) dialogueTrigger.enabled = false;
        if (combatCollider != null) combatCollider.enabled = true;

        // Cambiar tag si es necesario
        if (gameObject.CompareTag("NPC"))
        {
            gameObject.tag = "Enemy";
        }
    }

    private void SetScriptsEnabled(MonoBehaviour[] scripts, bool enabled)
    {
        if (scripts == null) return;

        foreach (var script in scripts)
        {
            if (script != null)
            {
                script.enabled = enabled;
            }
        }
    }

    // M�todo para revertir transformaci�n (por si acaso lo necesitas)
    public void RevertToNPC()
    {
        if (!hasTransformed) return;

        hasTransformed = false;
        isDialogueActive = false;

        // Restaurar material original
        if (characterRenderer != null && originalMaterial != null)
        {
            characterRenderer.material = originalMaterial;
        }

        // Restaurar modo NPC
        SetNPCMode();

        // Revertir tag
        if (gameObject.CompareTag("Enemy"))
        {
            gameObject.tag = "NPC";
        }
    }

    // Para debugging en el inspector
    [ContextMenu("Transform to Enemy")]
    public void DebugTransform()
    {
        TransformToEnemy();
    }

    [ContextMenu("Revert to NPC")]
    public void DebugRevert()
    {
        RevertToNPC();
    }

    // Getters para otros scripts
    public bool HasTransformed => hasTransformed;
    public bool IsDialogueActive => isDialogueActive;
}