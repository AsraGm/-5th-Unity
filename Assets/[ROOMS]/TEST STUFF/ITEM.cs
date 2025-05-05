using UnityEngine;

[CreateAssetMenu(menuName = "Items/New Item", fileName = "Item_")]  // Ruta clara en el menú
public class ITEM : ScriptableObject
{
    public string _name;
    [TextArea(3, 5)] public string _description;  // Cuadro de texto más grande en el Inspector
    public Sprite _sprite;  // Icono del ítem
    public GameObject _prefab;  // Prefab opcional para instanciar
}