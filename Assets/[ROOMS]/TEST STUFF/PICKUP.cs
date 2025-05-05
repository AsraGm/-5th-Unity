using System.Collections;
using System.Collections.Generic;
using Unity.VisualScripting;
using UnityEngine;

public class PICKUP : MonoBehaviour, IINTERACTABLE
{
    [SerializeField] private ITEM item;  // Asigna el ScriptableObject desde el Inspector

    private INVENTORYHANDLER inventory;

    private void Start()
    {
        inventory = FindObjectOfType<INVENTORYHANDLER>();
    }

    public void Interact()
    {
        if (item == null)
        {
            Debug.LogError("¡ITEM no asignado en " + gameObject.name + "!");
            return;
        }

        if (inventory.AddItem(item))
        {
            Debug.Log($"{item._name} añadido. Descripción: {item._description}");
            Destroy(gameObject);
        }
        else
        {
            Debug.Log("Inventario lleno");
        }
    }
}