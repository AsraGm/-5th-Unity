using UnityEngine;

public class ItemPickup : MonoBehaviour
{
    public ItemData itemData;

    [Header("Reset System")]
    [SerializeField] private bool wasPickedUp = false;

    [Header("Animation Settings")]
    [SerializeField] private float animationDuration = 1.5f; // Duración en segundos (ajústala según tu animación)
    [SerializeField] private bool useAnimationDuration = true; // Si false, detectará automáticamente cuando termine

    [Header("Particle System")]
    [SerializeField] private GameObject particlePrefab; // Arrastra aquí tu prefab de partículas
    [SerializeField] private Transform saxophoneSpawnPoint; // El GameObject vacío hijo del saxofón

    // Referencias para el reset
    private Vector3 originalPosition;
    private Quaternion originalRotation;
    private bool originalActiveState;

    private void Awake()
    {
        if (itemData == null)
            Debug.LogWarning($"{gameObject.name} no tiene asignado un ItemData.", this);

        // Guardar estado original
        originalPosition = transform.position;
        originalRotation = transform.rotation;
        originalActiveState = gameObject.activeInHierarchy;
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player") && !wasPickedUp)
        {
            if (itemData == null)
            {
                Debug.Log("itemData es null");
                return;
            }

            if (InventorySystem.Instance == null)
            {
                Debug.Log("InventorySystem.Instance es null");
                return;
            }

            // Agregar al inventario
            InventorySystem.Instance.AddItem(itemData);

            if (UIItemCounter.Instance != null)
            {
                UIItemCounter.Instance.IncrementCollectedItems();
            }

            // Marcar como recogido y desactivar (NO destruir)
            wasPickedUp = true;

            // Obtener el animator del SCARECROW
            Animator scarecrowAnimator = GameObject.Find("SCARECROW").GetComponent<Animator>();

            // Ejecutar animación
            scarecrowAnimator.SetTrigger("Saxo");

            // NUEVO: Crear y activar el sistema de partículas
            SpawnParticles();

            // Deshabilitar movimiento del jugador usando el GameManager
            if (useAnimationDuration)
            {
                // Opción 1: Usar duración fija
                GameManager.Instance.DisableMovementForDuration(animationDuration);
            }
            else
            {
                // Opción 2: Detectar automáticamente cuando termine la animación
                GameManager.Instance.DisableMovementUntilAnimationEnds(scarecrowAnimator, "Saxo");
            }

            gameObject.SetActive(false);
            Debug.Log($"Item {itemData.name} recogido y desactivado. Movimiento del jugador bloqueado.");
        }
    }

    // NUEVO: Método para spawnear las partículas
    private void SpawnParticles()
    {
        if (particlePrefab != null && saxophoneSpawnPoint != null)
        {
            // Instanciar las partículas como hijo del punto de spawn
            GameObject particles = Instantiate(particlePrefab, saxophoneSpawnPoint);

            // Registrar las partículas en el GameManager para que puedan ser destruidas
            GameManager.SetCurrentParticleSystem(particles);

            Debug.Log("Partículas de saxofón spawneadas");
        }
        else
        {
            Debug.LogWarning("Particle Prefab o Saxophone Spawn Point no están asignados en " + gameObject.name);
        }
    }

    // Método para el sistema de reset
    public void ResetItem()
    {
        // Restaurar estado original
        transform.position = originalPosition;
        transform.rotation = originalRotation;
        wasPickedUp = false;
        gameObject.SetActive(originalActiveState);
        Debug.Log($"Item {gameObject.name} reseteado");
    }

    // Getters para el sistema de reset
    public bool WasPickedUp => wasPickedUp;
    public Vector3 OriginalPosition => originalPosition;
    public Quaternion OriginalRotation => originalRotation;
    public bool OriginalActiveState => originalActiveState;
}