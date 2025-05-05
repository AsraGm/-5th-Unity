using UnityEngine;

public class INVENTORYUIHANDLER : MonoBehaviour
{
    [SerializeField] private GameObject inventoryPanel;
    [SerializeField] private GameObject uiItemPrefab;
    [SerializeField] private Transform itemsContainer;
    private GameObject[] uiItems;
    private INVENTORYHANDLER inventory;
    private int currentPage = 0;
    private const int ItemsPerPage = 8;

    private void Start()
    {
        inventory = FindObjectOfType<INVENTORYHANDLER>();
        uiItems = new GameObject[inventory.maxCapacity];
        InitializeUI();
        CloseInventory();
    }
    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.I))
        {
            Debug.Log("Tecla I presionada"); // ¿Aparece en la Consola?
        }
        ToggleInventory();
    }

    private void InitializeUI()
    {
        for (int i = 0; i < inventory.maxCapacity; i++)
        {
            uiItems[i] = Instantiate(uiItemPrefab, itemsContainer);
            uiItems[i].SetActive(false);
        }
    }

    public void ToggleInventory()
    {
        if (Input.GetKeyDown(KeyCode.I))
        {
            if (inventoryPanel.activeSelf) CloseInventory();
            else OpenInventory();
        }
    }

    private void OpenInventory()
    {
        inventoryPanel.SetActive(true);
        UpdateUI();
        Cursor.lockState = CursorLockMode.None;
    }

    private void CloseInventory()
    {
        inventoryPanel.SetActive(false);
        Cursor.lockState = CursorLockMode.Locked;
    }

    private void UpdateUI()
    {
        for (int i = 0; i < inventory._Inventario.Count; i++)
        {
            uiItems[i].GetComponent<UIItem>().SetItemInfo(inventory._Inventario[i]);
            uiItems[i].SetActive(i >= currentPage * ItemsPerPage && i < (currentPage + 1) * ItemsPerPage);
        }
    }

    public void NextPage()
    {
        if (currentPage < (inventory.maxCapacity / ItemsPerPage) - 1)
        {
            currentPage++;
            UpdateUI();
        }
    }

    public void PreviousPage()
    {
        if (currentPage > 0)
        {
            currentPage--;
            UpdateUI();
        }
    }

}