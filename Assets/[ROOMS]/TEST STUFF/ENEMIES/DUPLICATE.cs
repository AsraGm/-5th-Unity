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

    private void Awake()
    {
        inventorySystem = InventorySystem.Instance;
    }

    private void OnEnable()
    {
        InventorySystem.OnItemAdded += OnItemCollected;
    }

    private void OnDisable()
    {
        InventorySystem.OnItemAdded -= OnItemCollected;
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

        Instantiate(trigger.enemyPre, trigger.spawnPoint.position, trigger.spawnPoint.rotation);
        Debug.Log($"Enemigo spawnedo por ítem: {trigger.item.itemName}");
    }
}
