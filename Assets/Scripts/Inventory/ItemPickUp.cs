using UnityEngine;

public class ItemPickup : MonoBehaviour
{
    public ItemData itemData;

    private void Awake()
    {
        if (itemData == null)
            Debug.LogWarning($"{gameObject.name} no tiene asignado un ItemData.", this);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (itemData == null)
            {
                Debug.Log("itemData es null");
            }
            if (InventorySystem.Instance == null)
            {
                Debug.Log("InventorySystem.Instance es null");
            }
            if (itemData != null && InventorySystem.Instance != null)
            {
                InventorySystem.Instance.AddItem(itemData);
            }
            else
            {
                Debug.Log("No te cache el inventario");
            }
            Destroy(gameObject);
        }
    }
}