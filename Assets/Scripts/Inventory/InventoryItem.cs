using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class InventoryItem : MonoBehaviour
{
    public ItemData itemData;
    public Image icon;
    public TextMeshProUGUI itemName;

    public void Setup(ItemData data)
    {
        itemData = data;
        icon.sprite = data.icon;
        itemName.text = data.itemName;
    }

    public void OnClick()
    {
        InventorySystem.Instance.ShowItemDetails(itemData);
    }
}