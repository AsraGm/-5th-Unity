using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class UIItem : MonoBehaviour  // ✔️ Esta es la clase correcta
{
    public Image itemImage;
    public TMP_Text itemName;

    public void SetItemInfo(ITEM item)  // ✔️ Usa ITEM (ScriptableObject)
    {
        itemImage.sprite = item._sprite;
        itemName.text = item._name;
    }
}