using UnityEngine;

public class ItemPickup : MonoBehaviour
{
    public ItemData itemData;

    [Header("Reset System")]
    [SerializeField] private bool wasPickedUp = false;

    [Header("Animation Settings")]
    [SerializeField] private float animationDuration = 1.5f; // Duración en segundos (ajústala según tu animación)
    [SerializeField] private bool useAnimationDuration = true; // Si false, detectará automáticamente cuando termine

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

            // Marcar como recogido y desactivar (NO destruir)
            wasPickedUp = true;

            // Obtener el animator del SCARECROW
            Animator scarecrowAnimator = GameObject.Find("SCARECROW").GetComponent<Animator>();

            // Ejecutar animación
            scarecrowAnimator.SetTrigger("Saxo");

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