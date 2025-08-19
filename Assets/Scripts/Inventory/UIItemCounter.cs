using UnityEngine;
using TMPro; // Asegúrate de tener esta librería para TextMeshPro

public class UIItemCounter : MonoBehaviour
{
    // Singleton
    public static UIItemCounter Instance { get; private set; }

    [SerializeField] private TMP_Text counterText; // Arrastra tu TextMeshPro aquí desde el Inspector
    private int itemsCollected = 0;
    private int totalItems = 0;

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
    }

    private void UpdateUI()
    {
        if (counterText != null)
        {
            counterText.text = $"{itemsCollected} / {totalItems}";
        }
    }
}