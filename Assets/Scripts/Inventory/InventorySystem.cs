using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class InventorySystem : MonoBehaviour
{
    public static InventorySystem Instance;

    [SerializeField] private GameObject inventoryPanel;
    public GameObject inventoryItemPrefab;
    public Transform contentParent;
    public ItemLore itemLorePanel;

    [Header("Scroll Settings")]
    public ScrollRect inventoryScrollRect;
    [Range(0.1f, 50f)] public float scrollSensitivity = 1f;

    public int ItemCount => inventoryItems.Count;
    private List<ItemData> inventoryItems = new List<ItemData>();
    private bool isInventoryOpen = false;

    public static event Action<ItemData> OnItemAdded;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }
        if (inventoryScrollRect != null)
        {
            inventoryScrollRect.scrollSensitivity = scrollSensitivity;
        }
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.I))
        {
            ToggleInventory();
        }
    }

    public void ToggleInventory()
    {
        isInventoryOpen = !isInventoryOpen;
        inventoryPanel.SetActive(isInventoryOpen);

        if (isInventoryOpen)
        {
            Cursor.lockState = CursorLockMode.None;
            Cursor.visible = true;
            Time.timeScale = 0f;
        }
        else
        {
            Cursor.lockState = CursorLockMode.Locked;
            Cursor.visible = false;
            Time.timeScale = 1f;
        }
    }

    public void AddItem(ItemData newItem)
    {
        inventoryItems.Add(newItem);
        UpdateInventoryUI();
        OnItemAdded?.Invoke(newItem);
    }



    private void UpdateInventoryUI()
    {
        // Limpia los items existentes
        foreach (Transform child in contentParent)
        {
            Destroy(child.gameObject);
        }

        // Crea nuevos items en el UI
        foreach (ItemData item in inventoryItems)
        {
            GameObject newItem = Instantiate(inventoryItemPrefab, contentParent);
            newItem.GetComponent<InventoryItem>().Setup(item);
        }
    }

    public void ShowItemDetails(ItemData data)
    {
        itemLorePanel.ShowDetails(data);
        itemLorePanel.gameObject.SetActive(true);
    }

    public void SetItemCount(int targetCount)
    {
        // Si ya tenemos m�s �tems de los que necesitamos, no hacer nada
        if (inventoryItems.Count >= targetCount)
        {
            return;
        }
        Debug.Log($"SetItemCount llamado: Actual={inventoryItems.Count}, Target={targetCount}");
    }
    public List<ItemData> GetItemsToPreserve(int count)
    {
        List<ItemData> itemsToPreserve = new List<ItemData>();

        for (int i = 0; i < Mathf.Min(count, inventoryItems.Count); i++)
        {
            itemsToPreserve.Add(inventoryItems[i]);
        }

        return itemsToPreserve;
    }

    // M�TODO ALTERNATIVO: Restaurar �tems espec�ficos
    public void RestoreItems(List<ItemData> itemsToRestore)
    {
        inventoryItems.Clear();
        inventoryItems.AddRange(itemsToRestore);
        UpdateInventoryUI();

        Debug.Log($"Inventario restaurado con {inventoryItems.Count} �tems preservados");
    }

    public void ClearAllItems()
    {
        inventoryItems.Clear();
        UpdateInventoryUI();
        Debug.Log($"Inventario limpiado - {inventoryItems.Count} items restantes");
    }
}
