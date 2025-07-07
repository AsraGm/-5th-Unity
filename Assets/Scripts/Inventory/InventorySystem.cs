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
}
