
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealth : MonoBehaviour
{
    [SerializeField] List<Image> hearts = new List<Image>();


    public void TakeDamagePlayer(int damage)
    {
        for (int i = 0; i < damage; i++)
        {
            if (hearts.Count > 0) // Verifica si hay corazones disponibles
            {
                hearts[0].enabled = false; // Desactiva el primer corazón visible
                hearts.RemoveAt(0);        // Elimina el primer corazón de la lista
            }
        }

        Debug.Log("Daño recibido");

        if (hearts.Count == 0)
        {
            Die();
        }
    }
    void Die()
    {
        Debug.Log("El jugador ha muerto.");

    }
}
