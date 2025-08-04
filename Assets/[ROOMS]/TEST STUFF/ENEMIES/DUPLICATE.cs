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
    }

    [Header("Configuración")]
    [SerializeField] private List<SpawnTrigger> spawnTriggers = new List<SpawnTrigger>();
    [Tooltip("Segundos delay de instanciamiento")]
    [SerializeField] private float delayBetweenSpawns = 0.3f;

    private float lastSpawnTime;
    private InventorySystem inventorySystem;

    // ========== LISTA PARA TRACKEAR ENEMIGOS SPAWNEADOS ==========
    private List<GameObject> spawnedEnemies = new List<GameObject>();

    private void Awake()
    {
        inventorySystem = InventorySystem.Instance;
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

        // Resetear contadores
        foreach (var trigger in spawnTriggers)
        {
            trigger.totalSpawned = 0;
        }

        Debug.Log($"DUPLICATE: {spawnedEnemies.Count} enemigos duplicados eliminados");
    }

    private void OnItemCollected(ItemData newItem)
    {
        foreach (var trigger in spawnTriggers)
        {
            if (trigger.item == newItem)
            {
                StartCoroutine(SpawnMultipleEnemies(trigger)); // Usamos una corrutina para spawnear múltiples enemigos
                break;
            }
        }
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

        // ========== AGREGAR EL SCRIPT DE CONTROL AUTOMÁTICAMENTE ==========
        if (newEnemy.GetComponent<SpawnedPrefabController>() == null)
        {
            newEnemy.AddComponent<SpawnedPrefabController>();
        }

        spawnedEnemies.Add(newEnemy);
        trigger.totalSpawned++;

        Debug.Log($"DUPLICATE: Enemigo spawneado con auto-destrucción. Total: {spawnedEnemies.Count}");
    }
}