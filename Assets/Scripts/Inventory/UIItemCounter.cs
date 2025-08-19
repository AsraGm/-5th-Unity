using UnityEngine;
using TMPro;

public class UIItemCounter : MonoBehaviour
{
    // Singleton
    public static UIItemCounter Instance { get; private set; }

    [SerializeField] private TMP_Text counterText;

    private int itemsCollected = 0;
    private int totalItems = 0;

    // ========== PROPIEDADES PÚBLICAS PARA ACCESO EXTERNO ==========
    public int ItemsCollected => itemsCollected;
    public int TotalItems => totalItems;
    public bool IsLastItem => (itemsCollected + 1) >= totalItems;

    private void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(this.gameObject);
        }
        else
        {
            Instance = this;
        }

        if (counterText == null)
        {
            Debug.LogError("El componente de texto de la UI no está asignado en UIItemCounter.");
        }
    }

    public void SetTotalItems(int total)
    {
        totalItems = total;
        UpdateUI();
    }

    public void IncrementCollectedItems()
    {
        itemsCollected++;
        UpdateUI();

        // ========== EVENTO OPCIONAL PARA NOTIFICAR CUANDO ES EL ÚLTIMO OBJETO ==========
        if (itemsCollected >= totalItems)
        {
            Debug.Log("UIItemCounter: ¡Todos los objetos han sido recolectados!");
        }
    }

    private void UpdateUI()
    {
        if (counterText != null)
        {
            counterText.text = $"{itemsCollected} / {totalItems}";
        }
    }

    // ========== MÉTODO PARA RESETEAR EL CONTADOR ==========
    public void ResetCounter()
    {
        itemsCollected = 0;
        UpdateUI();
    }
}