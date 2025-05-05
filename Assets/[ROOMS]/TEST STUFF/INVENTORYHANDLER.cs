using System;
using System.Collections.Generic;
using UnityEngine;

public class INVENTORYHANDLER : MonoBehaviour
{
    [SerializeField] private List<ITEM> _inventario = new List<ITEM>();
    public List<ITEM> _Inventario => _inventario; // Propiedad de solo lectura
    public int maxCapacity = 24;
    public int indiceActual = 0;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.G))
        {
            TirarObjeto();
        }
    }

    public bool AddItem(ITEM item)
    {
        if (_inventario.Count >= maxCapacity)
        {
            Debug.Log("Inventario lleno");
            return false;
        }
        _inventario.Add(item);
        return true;
    }

    public void TirarObjeto()
    {
        if (_inventario.Count == 0) return;

        Instantiate(_inventario[indiceActual]._prefab, transform.position, Quaternion.identity);
        _inventario.RemoveAt(indiceActual);
        indiceActual = Mathf.Clamp(indiceActual, 0, _inventario.Count - 1);
    }
}