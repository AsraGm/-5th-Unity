using UnityEngine;
using System.Collections.Generic;

public class ItemManager : MonoBehaviour
{
    // Arrastra todos tus objetos (incluso si están desactivados) a esta lista desde el Inspector
    public List<GameObject> allItemsInScene;

    private void Start()
    {
        if (UIItemCounter.Instance != null)
        {
            // Pasa el número total de ítems de la lista al script de la UI
            UIItemCounter.Instance.SetTotalItems(allItemsInScene.Count);
        }
    }
}