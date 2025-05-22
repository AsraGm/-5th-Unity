using System.Collections.Generic;
using UnityEngine;

public class InventorySystem : MonoBehaviour
{
    public static InventorySystem Instance;

    public GameObject inventoryPanel;
    public GameObject inventoryItemPrefab;
    public Transform contentParent;
    public ItemLore itemLorePanel;

    private List<ItemData> inventoryItems = new List<ItemData>();
    private bool isInventoryOpen = false;


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
           // newItem.transform.localPosition = contentParent.localPosition; // Establece la posición local
            newItem.GetComponent<InventoryItem>().Setup(item);

        }
    }

    public void ShowItemDetails(ItemData data)
    {
        itemLorePanel.ShowDetails(data);
        itemLorePanel.gameObject.SetActive(true);
    }
}
