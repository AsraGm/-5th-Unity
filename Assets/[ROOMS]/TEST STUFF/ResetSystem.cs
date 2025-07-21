using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ResetSystem : MonoBehaviour
{
    public static ResetSystem Instance;

    [Header("Reset Settings")]
    [Tooltip("Duración del efecto visual de rebobinado")]
    [SerializeField] private float rewindEffectDuration = 3f;
    [Tooltip("Velocidad del efecto de rebobinado")]
    [SerializeField] private float rewindSpeed = 2f;

    [Header("Player References")]
    [SerializeField] private Transform player;
    [SerializeField] private PlayerHealth playerHealth;
    [SerializeField] private Camera playerCamera;

    [Header("Audio")]
    [SerializeField] private AudioSource rewindAudioSource;
    [SerializeField] private AudioClip rewindSound;

    // Estados iniciales
    private LevelInitialState initialState;

    // Para el efecto visual
    private Queue<PlayerSnapshot> recentPositions;
    private int maxSnapshots = 150; // ~5 segundos a 30fps

    // Control del sistema
    private bool isRewinding = false;

    [System.Serializable]
    public class LevelInitialState
    {
        public Vector3 playerPosition;
        public Quaternion playerRotation;
        public Vector3 cameraPosition;
        public Quaternion cameraRotation;
        public List<NPCInitialState> npcStates;
        public List<ItemInitialState> itemStates;
    }

    [System.Serializable]
    public class NPCInitialState
    {
        public NPCController npcController;
        public Vector3 position;
        public Quaternion rotation;
        public NPCController.NPCState initialNPCState;
    }

    [System.Serializable]
    public class ItemInitialState
    {
        public ItemPickup itemPickup;
        public Vector3 position;
        public Quaternion rotation;
        public bool wasActive;
    }

    [System.Serializable]
    public class PlayerSnapshot
    {
        public Vector3 position;
        public Quaternion rotation;
        public Vector3 cameraPosition;
        public Quaternion cameraRotation;
        public float timestamp;
    }

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            recentPositions = new Queue<PlayerSnapshot>();
        }
        else
        {
            Destroy(gameObject);
        }
    }

    private void Start()
    {
        SaveInitialLevelState();
        StartCoroutine(TrackRecentMovement());

        // Suscribirse al evento de muerte del jugador
        if (playerHealth != null)
        {
            // Modificaremos PlayerHealth para que llame a este sistema
        }
    }

    private void SaveInitialLevelState()
    {
        initialState = new LevelInitialState();

        // Guardar estado del jugador
        if (player != null)
        {
            initialState.playerPosition = player.position;
            initialState.playerRotation = player.rotation;
        }

        // Guardar estado de la cámara
        if (playerCamera != null)
        {
            initialState.cameraPosition = playerCamera.transform.position;
            initialState.cameraRotation = playerCamera.transform.rotation;
        }

        // Guardar estado de todos los NPCs
        initialState.npcStates = new List<NPCInitialState>();
        NPCController[] allNPCs = FindObjectsOfType<NPCController>();

        foreach (NPCController npc in allNPCs)
        {
            NPCInitialState npcState = new NPCInitialState
            {
                npcController = npc,
                position = npc.transform.position,
                rotation = npc.transform.rotation,
                initialNPCState = npc.CurrentState
            };
            initialState.npcStates.Add(npcState);
        }

        // Guardar estado de todos los items
        initialState.itemStates = new List<ItemInitialState>();
        ItemPickup[] allItems = FindObjectsOfType<ItemPickup>();

        foreach (ItemPickup item in allItems)
        {
            ItemInitialState itemState = new ItemInitialState
            {
                itemPickup = item,
                position = item.transform.position,
                rotation = item.transform.rotation,
                wasActive = item.gameObject.activeInHierarchy
            };
            initialState.itemStates.Add(itemState);
        }

        Debug.Log($"Estado inicial guardado: {allNPCs.Length} NPCs, {allItems.Length} items");
    }

    private IEnumerator TrackRecentMovement()
    {
        while (true)
        {
            if (!isRewinding && player != null)
            {
                // Crear snapshot del jugador
                PlayerSnapshot snapshot = new PlayerSnapshot
                {
                    position = player.position,
                    rotation = player.rotation,
                    cameraPosition = playerCamera != null ? playerCamera.transform.position : Vector3.zero,
                    cameraRotation = playerCamera != null ? playerCamera.transform.rotation : Quaternion.identity,
                    timestamp = Time.time
                };

                recentPositions.Enqueue(snapshot);

                // Mantener solo los snapshots recientes
                while (recentPositions.Count > maxSnapshots)
                {
                    recentPositions.Dequeue();
                }
            }

            yield return new WaitForSeconds(1f / 30f); // 30fps tracking
        }
    }

    public void OnPlayerDeath()
    {
        if (isRewinding) return;

        Debug.Log("¡Jugador ha muerto! Iniciando secuencia de reset...");
        StartCoroutine(DeathResetSequence());
    }

    private IEnumerator DeathResetSequence()
    {
        isRewinding = true;

        // Pausar el juego
        Time.timeScale = 0.3f; // Cámara lenta para el efecto

        // Reproducir sonido de rebobinado
        if (rewindAudioSource != null && rewindSound != null)
        {
            rewindAudioSource.PlayOneShot(rewindSound);
        }

        // Efecto visual de rebobinado
        yield return PlayRewindEffect();

        // Reset completo instantáneo
        ResetLevelToInitial();

        // Restaurar velocidad normal
        Time.timeScale = 1f;
        isRewinding = false;

        Debug.Log("¡Reset completo ejecutado!");
    }

    private IEnumerator PlayRewindEffect()
    {
        if (recentPositions.Count == 0) yield break;

        // Convertir queue a array para poder iterar hacia atrás
        PlayerSnapshot[] snapshots = recentPositions.ToArray();

        float effectTime = 0f;

        // Reproducir snapshots hacia atrás
        for (int i = snapshots.Length - 1; i >= 0 && effectTime < rewindEffectDuration; i--)
        {
            if (player != null)
            {
                player.position = snapshots[i].position;
                player.rotation = snapshots[i].rotation;
            }

            if (playerCamera != null)
            {
                playerCamera.transform.position = snapshots[i].cameraPosition;
                playerCamera.transform.rotation = snapshots[i].cameraRotation;
            }

            effectTime += Time.unscaledDeltaTime;
            yield return new WaitForSecondsRealtime(1f / (30f * rewindSpeed));
        }
    }

    private void ResetLevelToInitial()
    {
        // 1. Reset del jugador
        ResetPlayerState();

        // 2. Reset de todos los NPCs
        ResetAllNPCs();

        // 3. Reset de todos los items del mundo
        ResetAllItems();

        // 4. Limpiar inventario
        ClearPlayerInventory();

        // 5. Reset de diálogos (si tienes sistema de diálogos persistente)
        ResetDialogueSystem();

        // 6. Limpiar queue de posiciones
        recentPositions.Clear();
    }

    private void ResetPlayerState()
    {
        if (player != null)
        {
            // Restaurar posición y rotación
            player.position = initialState.playerPosition;
            player.rotation = initialState.playerRotation;

            // Restaurar vida completa
            if (playerHealth != null)
            {
                playerHealth.ResetHealth(); // Necesitamos agregar este método
            }

            // Parar movimiento si tiene Rigidbody
            Rigidbody playerRb = player.GetComponent<Rigidbody>();
            if (playerRb != null)
            {
                playerRb.linearVelocity = Vector3.zero;
                playerRb.angularVelocity = Vector3.zero;
            }
        }

        // Restaurar cámara
        if (playerCamera != null)
        {
            playerCamera.transform.position = initialState.cameraPosition;
            playerCamera.transform.rotation = initialState.cameraRotation;
        }
    }

    private void ResetAllNPCs()
    {
        foreach (NPCInitialState npcState in initialState.npcStates)
        {
            if (npcState.npcController != null)
            {
                // Restaurar posición
                npcState.npcController.transform.position = npcState.position;
                npcState.npcController.transform.rotation = npcState.rotation;

                // Restaurar estado inicial (NPC, Enemy, etc.)
                if (npcState.npcController.CurrentState != npcState.initialNPCState)
                {
                    // Forzar estado inicial
                    if (npcState.initialNPCState == NPCController.NPCState.NPC)
                    {
                        npcState.npcController.RevertToNPC(); // Si tiene este método
                    }
                }
            }
        }
    }

    private void ResetAllItems()
    {
        // Método 1: Usar el sistema de la clase ItemInitialState (por si faltan items)
        foreach (ItemInitialState itemState in initialState.itemStates)
        {
            if (itemState.itemPickup != null)
            {
                itemState.itemPickup.ResetItem();
            }
        }

        // Método 2: Buscar TODOS los ItemPickup existentes (más seguro)
        ItemPickup[] allItems = FindObjectsOfType<ItemPickup>(true); // incluye inactivos
        foreach (ItemPickup item in allItems)
        {
            item.ResetItem();
        }

        Debug.Log($"Items reseteados: {allItems.Length} items encontrados");
    }

    private void ClearPlayerInventory()
    {
        if (InventorySystem.Instance != null)
        {
            InventorySystem.Instance.ClearAllItems(); // Necesitamos agregar este método
            Debug.Log("Inventario limpiado");
        }
    }

    private void ResetDialogueSystem()
    {
        // Si tienes un sistema que trackee diálogos completados, resetéalo aquí
        Debug.Log("Diálogos reseteados");
    }

    // Método para debug
    [ContextMenu("Test Death Reset")]
    public void TestDeathReset()
    {
        OnPlayerDeath();
    }
}
