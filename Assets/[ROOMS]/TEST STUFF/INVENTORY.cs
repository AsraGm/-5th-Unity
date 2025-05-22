//using System;
//using UnityEngine;
//using UnityEngine.Events;
//using UnityEngine.UI;

//public class INVENTORY : MonoBehaviour
//{
//    [Header("UI References")]
//    [SerializeField] private GameObject inventoryPanel;
//    [SerializeField] private GameObject uiItemPrefab;
//    [SerializeField] private Transform itemsContainer;

//    [Header("Navigation")]
//    [SerializeField] private Button nextPageButton;
//    [SerializeField] private Button prevPageButton;

//    [Header("Events")]
//    public UnityEvent onInventoryOpen;
//    public UnityEvent onInventoryClose;

//    private INVENTORYHANDLER inventory;
//    private GameObject[] uiItems;
//    private int currentPage = 0;
//    private const int ItemsPerPage = 8;

//    private void Awake()
//    {
//        inventory = FindFirstObjectByType<INVENTORYHANDLER>();
//        uiItems = new GameObject[inventory.maxCapacity];

//        // Configurar botones
//        if (nextPageButton) nextPageButton.onClick.AddListener(NextPage);
//        if (prevPageButton) prevPageButton.onClick.AddListener(PreviousPage);

//        // Inicializar UI
//        InitializeUI();
//        CloseInventory();
//    }

//    private void InitializeUI()
//    {
//        for (int i = 0; i < inventory.maxCapacity; i++)
//        {
//            uiItems[i] = Instantiate(uiItemPrefab, itemsContainer);
//            uiItems[i].SetActive(false);
//        }
//    }

//    public void ToggleInventory()
//    {
//        if (inventoryPanel.activeSelf)
//        {
//            CloseInventory();
//        }
//        else
//        {
//            OpenInventory();
//        }
//    }

//    public void OpenInventory()
//    {
//        inventoryPanel.SetActive(true);
//        UpdateInventoryUI();
//        onInventoryOpen.Invoke();
//    }

//    public void CloseInventory()
//    {
//        inventoryPanel.SetActive(false);
//        onInventoryClose.Invoke();
//    }

//    private void UpdateInventoryUI()
//    {
//        // Actualizar todos los items del inventario
//        for (int i = 0; i < inventory._Inventario.Count; i++)
//        {
//            if (i < uiItems.Length)
//            {
//                uiItems[i].GetComponent<UIItem>().SetItemInfo(inventory._Inventario[i]);
//            }
//        }

//        // Mostrar solo los items de la página actual
//        ShowCurrentPage();
//    }

//    private void ShowCurrentPage()
//    {
//        int startIndex = currentPage * ItemsPerPage;
//        int endIndex = Mathf.Min(startIndex + ItemsPerPage, uiItems.Length);

//        // Ocultar todos los items primero
//        foreach (var item in uiItems)
//        {
//            if (item != null) item.SetActive(false);
//        }

//        // Mostrar solo los de la página actual
//        for (int i = startIndex; i < endIndex; i++)
//        {
//            if (i < inventory._Inventario.Count && uiItems[i] != null)
//            {
//                uiItems[i].SetActive(true);
//            }
//        }
//    }

//    public void NextPage()
//    {
//        int maxPages = Mathf.CeilToInt(inventory.maxCapacity / (float)ItemsPerPage) - 1;
//        currentPage = Mathf.Min(currentPage + 1, maxPages);
//        ShowCurrentPage();
//    }

//    public void PreviousPage()
//    {
//        currentPage = Mathf.Max(currentPage - 1, 0);
//        ShowCurrentPage();
//    }
//