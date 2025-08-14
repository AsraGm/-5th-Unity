using UnityEngine;
using System.Collections.Generic;

/// <summary>
/// Componente modular que maneja la activación de objetos recolectables
/// cuando el NPC se transforma en enemigo - INTEGRADO CON RESET SYSTEM
/// </summary>
public class NPCItemSpawner : MonoBehaviour
{
    [Header("Items de Recolección")]
    [Tooltip("Lista de GameObjects que se activarán cuando el NPC se vuelva enemigo")]
    [SerializeField] private List<GameObject> collectibleItems = new List<GameObject>();

    [Header("Configuración de Activación")]
    [Tooltip("¿Activar todos los items al mismo tiempo?")]
    [SerializeField] private bool activateAllAtOnce = true;

    [Tooltip("Si no es 'activateAllAtOnce', retraso entre activaciones")]
    [SerializeField] private float delayBetweenActivations = 0.5f;

    [Header("Efectos Opcionales")]
    [Tooltip("Efecto de partículas al activar items (opcional)")]
    [SerializeField] private GameObject spawnEffect;

    [Tooltip("Sonido al activar items (opcional)")]
    [SerializeField] private AudioSource spawnSound;

    [Header("Debug")]
    [SerializeField] private bool showDebugLogs = true;

    // Referencias
    private NPCController npcController;
    private bool itemsActivated = false;

    // NUEVO: Estado inicial para el reset system
    private List<ItemSpawnerState> initialItemStates = new List<ItemSpawnerState>();

    [System.Serializable]
    private class ItemSpawnerState
    {
        public GameObject item;
        public bool wasActiveInitially;
    }

    private void Awake()
    {
        npcController = GetComponent<NPCController>();

        if (npcController == null)
        {
            Debug.LogError($"{gameObject.name} - NPCItemSpawner necesita un NPCController en el mismo GameObject!");
            return;
        }

        // NUEVO: Guardar estado inicial de los items antes de desactivarlos
        SaveInitialItemStates();

        // Asegurar que todos los items estén desactivados al inicio
        DeactivateAllItems();

        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - NPCItemSpawner inicializado con {collectibleItems.Count} items");
    }

    private void Start()
    {
        // El reset se hace directamente desde ResetSystem, no necesitamos el evento
        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - NPCItemSpawner listo");
    }

    private void OnDestroy()
    {
        // Ya no necesitamos desuscribirnos del evento
    }

    // ELIMINADO: Ya no necesitamos este método porque el reset se llama directamente
    // private void OnLevelReset() - BORRAR ESTE MÉTODO

    // NUEVO: Guardar el estado inicial de todos los items
    private void SaveInitialItemStates()
    {
        initialItemStates.Clear();

        foreach (GameObject item in collectibleItems)
        {
            if (item != null)
            {
                ItemSpawnerState state = new ItemSpawnerState
                {
                    item = item,
                    wasActiveInitially = item.activeInHierarchy
                };
                initialItemStates.Add(state);
            }
        }

        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - Estados iniciales guardados para {initialItemStates.Count} items");
    }

    private void Update()
    {
        // Monitorear cambio de estado NPC -> Enemy
        if (npcController != null && !itemsActivated && npcController.IsEnemy)
        {
            ActivateCollectibleItems();
        }
    }

    /// <summary>
    /// Desactiva todos los items de la lista
    /// </summary>
    private void DeactivateAllItems()
    {
        foreach (GameObject item in collectibleItems)
        {
            if (item != null)
            {
                item.SetActive(false);

                // Si tiene ItemPickup, también resetear su estado
                ItemPickup pickup = item.GetComponent<ItemPickup>();
                if (pickup != null)
                {
                    pickup.ResetItem();
                }
            }
        }

        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - Todos los items desactivados");
    }

    /// <summary>
    /// Activa todos los items recolectables
    /// </summary>
    public void ActivateCollectibleItems()
    {
        if (itemsActivated)
        {
            if (showDebugLogs)
                Debug.Log($"{gameObject.name} - Items ya fueron activados previamente");
            return;
        }

        if (collectibleItems.Count == 0)
        {
            Debug.LogWarning($"{gameObject.name} - No hay items para activar!");
            return;
        }

        itemsActivated = true;

        if (activateAllAtOnce)
        {
            ActivateAllItemsInstantly();
        }
        else
        {
            StartCoroutine(ActivateItemsWithDelay());
        }

        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - Proceso de activación de items iniciado");
    }

    /// <summary>
    /// Activa todos los items instantáneamente
    /// </summary>
    private void ActivateAllItemsInstantly()
    {
        foreach (GameObject item in collectibleItems)
        {
            if (item != null)
            {
                ActivateSingleItem(item);
            }
        }

        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - {collectibleItems.Count} items activados instantáneamente");
    }

    /// <summary>
    /// Activa los items con retraso entre cada uno
    /// </summary>
    private System.Collections.IEnumerator ActivateItemsWithDelay()
    {
        for (int i = 0; i < collectibleItems.Count; i++)
        {
            if (collectibleItems[i] != null)
            {
                ActivateSingleItem(collectibleItems[i]);

                if (showDebugLogs)
                    Debug.Log($"{gameObject.name} - Item {i + 1}/{collectibleItems.Count} activado");

                // Esperar antes del siguiente (excepto en el último)
                if (i < collectibleItems.Count - 1)
                {
                    yield return new WaitForSeconds(delayBetweenActivations);
                }
            }
        }

        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - Todos los items activados con retraso");
    }

    /// <summary>
    /// Activa un item individual con efectos
    /// </summary>
    private void ActivateSingleItem(GameObject item)
    {
        // DEBUG: Mostrar posición antes de activar
        if (showDebugLogs)
        {
            Debug.Log($"{gameObject.name} - Activando {item.name} en posición: {item.transform.position}");
        }

        // Activar el item
        item.SetActive(true);

        // DEBUG: Mostrar posición después de activar
        if (showDebugLogs)
        {
            Debug.Log($"{gameObject.name} - {item.name} activado, posición actual: {item.transform.position}");
        }

        // Efectos visuales
        if (spawnEffect != null)
        {
            GameObject effect = Instantiate(spawnEffect, item.transform.position, item.transform.rotation);
            // Destruir el efecto después de unos segundos
            Destroy(effect, 3f);
        }

        // Efecto de sonido
        if (spawnSound != null)
        {
            spawnSound.Play();
        }
    }

    /// <summary>
    /// Resetea el spawner para permitir reactivación
    /// INTEGRADO CON RESET SYSTEM
    /// </summary>
    public void ResetSpawner()
    {
        // Marcar como no activado
        itemsActivated = false;

        // NUEVO: Restaurar cada item a su estado inicial (no necesariamente desactivado)
        foreach (ItemSpawnerState state in initialItemStates)
        {
            if (state.item != null)
            {
                // Restaurar al estado inicial que tenía cada item
                state.item.SetActive(state.wasActiveInitially);

                // Si tiene ItemPickup, resetear su estado también
                ItemPickup pickup = state.item.GetComponent<ItemPickup>();
                if (pickup != null)
                {
                    pickup.ResetItem();
                }

                if (showDebugLogs)
                    Debug.Log($"{gameObject.name} - {state.item.name} restaurado a estado inicial: {state.wasActiveInitially}");
            }
        }

        if (showDebugLogs)
            Debug.Log($"{gameObject.name} - NPCItemSpawner reseteado completamente");
    }

    /// <summary>
    /// Verifica si todos los items han sido recogidos
    /// </summary>
    public bool AllItemsCollected()
    {
        if (!itemsActivated) return false;

        foreach (GameObject item in collectibleItems)
        {
            if (item != null && item.activeInHierarchy)
            {
                // Si hay algún item aún activo, no todos han sido recogidos
                return false;
            }
        }

        return true;
    }

    /// <summary>
    /// Obtiene la cantidad de items que faltan por recoger
    /// </summary>
    public int GetRemainingItemsCount()
    {
        if (!itemsActivated) return collectibleItems.Count;

        int activeItems = 0;
        foreach (GameObject item in collectibleItems)
        {
            if (item != null && item.activeInHierarchy)
            {
                activeItems++;
            }
        }

        return activeItems;
    }

    /// <summary>
    /// Obtiene la cantidad total de items
    /// </summary>
    public int GetTotalItemsCount()
    {
        return collectibleItems.Count;
    }

    // Métodos para el Inspector (Context Menu)
    [ContextMenu("Preview - Activate All Items")]
    private void DebugActivateItems()
    {
        if (Application.isPlaying)
        {
            ActivateCollectibleItems();
        }
        else
        {
            Debug.Log("Solo funciona en Play Mode");
        }
    }

    [ContextMenu("Preview - Reset Spawner")]
    private void DebugResetSpawner()
    {
        if (Application.isPlaying)
        {
            ResetSpawner();
        }
        else
        {
            Debug.Log("Solo funciona en Play Mode");
        }
    }

    [ContextMenu("Validate Items in List")]
    private void ValidateItems()
    {
        int validItems = 0;
        int nullItems = 0;
        int itemsWithPickup = 0;

        foreach (GameObject item in collectibleItems)
        {
            if (item == null)
            {
                nullItems++;
            }
            else
            {
                validItems++;
                if (item.GetComponent<ItemPickup>() != null)
                {
                    itemsWithPickup++;
                }
            }
        }

        Debug.Log($"{gameObject.name} - Validación: {validItems} items válidos, {nullItems} items null, {itemsWithPickup} con ItemPickup");
    }

    // Propiedades públicas de solo lectura
    public bool ItemsActivated => itemsActivated;
    public int CollectibleItemsCount => collectibleItems.Count;
    public List<GameObject> CollectibleItems => new List<GameObject>(collectibleItems); // Copia para seguridad
}