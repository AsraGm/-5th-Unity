using UnityEngine;

public class ItemPickup : MonoBehaviour
{
    public ItemData itemData;

    [Header("Reset System")]
    [SerializeField] private bool wasPickedUp = false;

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
            gameObject.SetActive(false);

            Debug.Log($"Item {itemData.name} recogido y desactivado");
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