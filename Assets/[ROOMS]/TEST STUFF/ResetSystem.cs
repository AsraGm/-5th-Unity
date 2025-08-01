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
    [SerializeField] private RagdollController ragdollController;

    [Header("Audio")]
    [SerializeField] private AudioSource rewindAudioSource;
    [SerializeField] private AudioClip rewindSound;

    // NUEVO: Para trackear ítems por nivel
    [Header("Level Management")]
    [SerializeField] private LevelsManager levelsManager; // Referencia al LevelsManager

    // Estados iniciales
    private LevelInitialState initialState;
    public static System.Action OnLevelReset;

    // Para el efecto visual
    private Queue<PlayerSnapshot> recentPositions;
    private int maxSnapshots = 150;

    // Control del sistema
    private bool isRewinding = false;

    // NUEVO: Variables para preservar progreso
    private List<ItemData> itemsFromPreviousLevels = new List<ItemData>(); // Ítems específicos que se deben preservar

    [System.Serializable]
    public class LevelInitialState
    {
        public Vector3 playerPosition;
        public Quaternion playerRotation;
        public Vector3 cameraPosition;
        public Quaternion cameraRotation;
        public List<NPCInitialState> npcStates;
        public List<ItemInitialState> itemStates;
        public List<ItemData> preservedItems; // NUEVO: ítems específicos que se deben preservar
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
        if (ragdollController == null && player != null)
        {
            ragdollController = player.GetComponent<RagdollController>();
        }

        // NUEVO: Obtener referencia al LevelsManager si no está asignada
        if (levelsManager == null)
        {
            levelsManager = FindFirstObjectByType<LevelsManager>();
        }

        SaveInitialLevelState();
        StartCoroutine(TrackRecentMovement());
    }

    // NUEVO: Método público para actualizar el estado cuando se cambia de nivel
    public void UpdateLevelState()
    {
        SaveInitialLevelState();
        Debug.Log("Estado del nivel actualizado - Ítems preservados: " + itemsFromPreviousLevels);
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

        // NUEVO: Calcular ítems de niveles anteriores que se deben preservar
        CalculatePreservedItems();
        initialState.preservedItems = new List<ItemData>(itemsFromPreviousLevels);

        // Guardar estado de todos los NPCs
        initialState.npcStates = new List<NPCInitialState>();
        NPCController[] allNPCs = FindObjectsByType<NPCController>(FindObjectsSortMode.None);

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
        ItemPickup[] allItems = FindObjectsByType<ItemPickup>(FindObjectsSortMode.None);

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

        Debug.Log($"Estado inicial guardado: {allNPCs.Length} NPCs, {allItems.Length} items, {itemsFromPreviousLevels.Count} ítems preservados");
    }

    // NUEVO: Método para calcular cuántos ítems se deben preservar de niveles anteriores
    private void CalculatePreservedItems()
    {
        itemsFromPreviousLevels.Clear();

        if (levelsManager != null && InventorySystem.Instance != null)
        {
            int currentLevel = levelsManager.GetCurrentLevelIndex();
            int totalItemsFromPreviousLevels = 0;

            // Calcular cuántos ítems corresponden a niveles anteriores completados
            for (int i = 0; i < currentLevel; i++)
            {
                if (i < levelsManager.GetLevelsCount())
                {
                    var levelData = levelsManager.GetLevelData(i);
                    if (levelData != null && levelData.bossDefeated)
                    {
                        totalItemsFromPreviousLevels = levelData.itemsRequired;
                    }
                }
            }

            // Obtener los primeros X ítems del inventario actual (que corresponden a niveles anteriores)
            itemsFromPreviousLevels = InventorySystem.Instance.GetItemsToPreserve(totalItemsFromPreviousLevels);
        }
    }

    private IEnumerator TrackRecentMovement()
    {
        while (true)
        {
            if (!isRewinding && player != null)
            {
                PlayerSnapshot snapshot = new PlayerSnapshot
                {
                    position = player.position,
                    rotation = player.rotation,
                    cameraPosition = playerCamera != null ? playerCamera.transform.position : Vector3.zero,
                    cameraRotation = playerCamera != null ? playerCamera.transform.rotation : Quaternion.identity,
                    timestamp = Time.time
                };

                recentPositions.Enqueue(snapshot);

                while (recentPositions.Count > maxSnapshots)
                {
                    recentPositions.Dequeue();
                }
            }

            yield return new WaitForSeconds(1f / 30f);
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

        Time.timeScale = 0.3f;

        if (rewindAudioSource != null && rewindSound != null)
        {
            rewindAudioSource.PlayOneShot(rewindSound);
        }

        yield return PlayRewindEffect();

        ResetLevelToInitial();

        Time.timeScale = 1f;
        isRewinding = false;

        Debug.Log("¡Reset completo ejecutado!");
    }

    private IEnumerator PlayRewindEffect()
    {
        if (recentPositions.Count == 0) yield break;

        PlayerSnapshot[] snapshots = recentPositions.ToArray();
        float effectTime = 0f;

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

        // 4. MODIFICADO: Limpiar inventario PERO preservar ítems de niveles anteriores
        ResetInventoryWithPreservation();

        // 5. Reset de diálogos
        ResetDialogueSystem();

        // 6. Limpiar queue de posiciones
        recentPositions.Clear();

        OnLevelReset?.Invoke();
    }

    // NUEVO: Método modificado para preservar ítems de niveles anteriores
    private void ResetInventoryWithPreservation()
    {
        if (InventorySystem.Instance != null)
        {
            // Restaurar solo los ítems de niveles anteriores
            InventorySystem.Instance.RestoreItems(initialState.preservedItems);
            Debug.Log($"Inventario reseteado con {initialState.preservedItems.Count} ítems preservados de niveles anteriores");
        }
    }

    private void ResetPlayerState()
    {
        StartCoroutine(CompletePlayerReset());
    }

    private IEnumerator CompletePlayerReset()
    {
        yield return new WaitForEndOfFrame();
        yield return new WaitForEndOfFrame();

        if (player != null)
        {
            Rigidbody playerRb = player.GetComponent<Rigidbody>();
            if (playerRb != null)
            {
                playerRb.linearVelocity = Vector3.zero;
                playerRb.angularVelocity = Vector3.zero;
                playerRb.isKinematic = false;
                Debug.Log("Rigidbody principal reseteado");
            }

            player.position = initialState.playerPosition;
            player.rotation = initialState.playerRotation;
            Debug.Log($"Posición restaurada a: {initialState.playerPosition}");

            Animator animator = player.GetComponent<Animator>();
            if (animator != null)
            {
                animator.enabled = true;
                Debug.Log("Animator reactivado");
            }

            if (playerHealth != null)
            {
                playerHealth.ResetHealth();
                Debug.Log("Salud restaurada");
            }

            MOVEPLAYER moveScript = player.GetComponent<MOVEPLAYER>();
            if (moveScript != null)
            {
                moveScript.controlActivo = true;
                moveScript.EnableControl();
                Debug.Log("Control del jugador reactivado");
            }
        }

        if (playerCamera != null)
        {
            playerCamera.transform.position = initialState.cameraPosition;
            playerCamera.transform.rotation = initialState.cameraRotation;
            Debug.Log("Cámara restaurada");
        }
    }

    private void ResetAllNPCs()
    {
        foreach (NPCInitialState npcState in initialState.npcStates)
        {
            if (npcState.npcController != null)
            {
                npcState.npcController.transform.position = npcState.position;
                npcState.npcController.transform.rotation = npcState.rotation;

                if (npcState.npcController.CurrentState != npcState.initialNPCState)
                {
                    if (npcState.initialNPCState == NPCController.NPCState.NPC)
                    {
                        npcState.npcController.RevertToNPC();
                    }
                }
            }
        }
    }

    private void ResetAllItems()
    {
        foreach (ItemInitialState itemState in initialState.itemStates)
        {
            if (itemState.itemPickup != null)
            {
                itemState.itemPickup.ResetItem();
            }
        }

        ItemPickup[] allItems = FindObjectsByType<ItemPickup>(FindObjectsInactive.Include, FindObjectsSortMode.None);
        foreach (ItemPickup item in allItems)
        {
            item.ResetItem();
        }

        Debug.Log($"Items reseteados: {allItems.Length} items encontrados");
    }

    private void ResetDialogueSystem()
    {
        Debug.Log("Diálogos reseteados");
    }

    [ContextMenu("Test Death Reset")]
    public void TestDeathReset()
    {
        OnPlayerDeath();
    }
}