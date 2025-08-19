using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DUPLICATE : MonoBehaviour
{
    [System.Serializable]
    public class SpawnTrigger
    {
        [Tooltip("El item requerido para que funcione")]
        public ItemData item;
        [Tooltip("Prefab del enemigo a instanciar")]
        public GameObject enemyPre;
        [Tooltip("Punto donde este aparecera")]
        public Transform spawnPoint;
        [Tooltip("Cantidad de prefabs a instanciar")]
        public int c2Spawn = 1;
        [HideInInspector] public int totalSpawned = 0; // Contador total de instancias
        [HideInInspector] public int originalC2Spawn; // Para guardar el valor original
    }

    [Header("Configuración")]
    [SerializeField] private List<SpawnTrigger> spawnTriggers = new List<SpawnTrigger>();
    [Tooltip("Segundos delay de instanciamiento")]
    [SerializeField] private float delayBetweenSpawns = 0.3f;

    private float lastSpawnTime;
    private InventorySystem inventorySystem;

    // ========== LISTA PARA TRACKEAR ENEMIGOS SPAWNEADOS ==========
    private List<GameObject> spawnedEnemies = new List<GameObject>();

    // ========== NUEVA VARIABLE PARA TRACKEAR EL ÚLTIMO OBJETO ==========
    private SpawnTrigger lastTriggeredSpawn = null;

    private void Awake()
    {
        inventorySystem = InventorySystem.Instance;

        // ========== GUARDAR VALORES ORIGINALES ==========
        foreach (var trigger in spawnTriggers)
        {
            trigger.originalC2Spawn = trigger.c2Spawn;
        }
    }

    private void OnEnable()
    {
        InventorySystem.OnItemAdded += OnItemCollected;
        // ========== SUSCRIBIRSE AL RESET ==========
        ResetSystem.OnLevelReset += ClearAllSpawnedEnemies;
    }

    private void OnDisable()
    {
        InventorySystem.OnItemAdded -= OnItemCollected;
        // ========== DESUSCRIBIRSE DEL RESET ==========
        ResetSystem.OnLevelReset -= ClearAllSpawnedEnemies;
    }

    // ========== MÉTODO DE LIMPIEZA AUTOMÁTICA ==========
    private void ClearAllSpawnedEnemies()
    {
        // Destruir todos los enemigos spawneados
        foreach (GameObject enemy in spawnedEnemies)
        {
            if (enemy != null)
            {
                Destroy(enemy);
            }
        }

        // Limpiar la lista
        spawnedEnemies.Clear();

        // Resetear contadores y restaurar valores originales
        foreach (var trigger in spawnTriggers)
        {
            trigger.totalSpawned = 0;
            trigger.c2Spawn = trigger.originalC2Spawn; // Restaurar valor original
        }

        // Resetear el último trigger
        lastTriggeredSpawn = null;

        Debug.Log($"DUPLICATE: {spawnedEnemies.Count} enemigos duplicados eliminados y valores restaurados");
    }

    private void OnItemCollected(ItemData newItem)
    {
        foreach (var trigger in spawnTriggers)
        {
            if (trigger.item == newItem)
            {
                // ========== NUEVO: VERIFICAR SI ES EL ÚLTIMO OBJETO ==========
                CheckIfLastItem(trigger);

                StartCoroutine(SpawnMultipleEnemies(trigger)); // Usamos una corrutina para spawnear múltiples enemigos
                break;
            }
        }
    }

    // ========== NUEVO MÉTODO PARA VERIFICAR SI ES EL ÚLTIMO OBJETO ==========
    private void CheckIfLastItem(SpawnTrigger currentTrigger)
    {
        // Verificar si este es el último objeto que queda por recolectar
        if (UIItemCounter.Instance != null)
        {
            // Usar las propiedades públicas del UIItemCounter
            if (UIItemCounter.Instance.IsLastItem)
            {
                Debug.Log($"DUPLICATE: Último objeto detectado. Cambiando c2Spawn a 0 para {currentTrigger.item.name}");
                currentTrigger.c2Spawn = 0;
                lastTriggeredSpawn = currentTrigger;
            }
        }
        else
        {
            // Método alternativo: verificar directamente con ItemManager si UIItemCounter no está disponible
            CheckLastItemAlternative(currentTrigger);
        }
    }

    // ========== MÉTODO ALTERNATIVO PARA DETECTAR EL ÚLTIMO OBJETO ==========
    private void CheckLastItemAlternative(SpawnTrigger currentTrigger)
    {
        ItemManager itemManager = FindObjectOfType<ItemManager>();
        if (itemManager != null)
        {
            int activeItems = 0;
            foreach (GameObject item in itemManager.allItemsInScene)
            {
                if (item != null && item.activeInHierarchy)
                {
                    activeItems++;
                }
            }

            // Si solo queda 1 objeto activo (el que estamos a punto de recolectar), es el último
            if (activeItems <= 1)
            {
                Debug.Log($"DUPLICATE: Último objeto detectado (método alternativo). Cambiando c2Spawn a 0 para {currentTrigger.item.name}");
                currentTrigger.c2Spawn = 0;
                lastTriggeredSpawn = currentTrigger;
            }
        }
    }

    // ========== MÉTODOS AUXILIARES (SIMPLIFICADOS) ==========
    private int GetTotalItemsCount()
    {
        ItemManager itemManager = FindObjectOfType<ItemManager>();
        return itemManager != null ? itemManager.allItemsInScene.Count : 0;
    }

    private IEnumerator SpawnMultipleEnemies(SpawnTrigger trigger)
    {
        for (int i = 0; i < trigger.c2Spawn; i++)
        {
            SpawnEnemy(trigger);
            yield return new WaitForSeconds(delayBetweenSpawns); // Delay opcional entre spawns
        }
    }

    private void SpawnEnemy(SpawnTrigger trigger)
    {
        if (trigger.enemyPre == null || trigger.spawnPoint == null) return;

        // Instanciar el prefab
        GameObject newEnemy = Instantiate(trigger.enemyPre, trigger.spawnPoint.position, trigger.spawnPoint.rotation);

        EnemyFollow cloneEnemyFollow = newEnemy.GetComponent<EnemyFollow>();
        if (cloneEnemyFollow != null)
        {
            // Marcar que es un clon para que use su propio animator
            cloneEnemyFollow.SetAsClone(true);
        }

        if (newEnemy.GetComponent<SpawnedPrefabController>() == null)
        {
            newEnemy.AddComponent<SpawnedPrefabController>();
        }

        spawnedEnemies.Add(newEnemy);
        trigger.totalSpawned++;

        Debug.Log($"DUPLICATE: Enemigo spawneado con auto-destrucción. Total: {spawnedEnemies.Count}");
    }
}