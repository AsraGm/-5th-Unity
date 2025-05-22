using Unity.VisualScripting;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class ItemLore : MonoBehaviour
{
    public Image itemIcon;

    public void ShowDetails(ItemData data)
    {
        itemIcon.sprite = data.loreImage;
        gameObject.SetActive(true);
    }

    public void CloseImageLore()
    {
        gameObject.SetActive(false);
    }
}