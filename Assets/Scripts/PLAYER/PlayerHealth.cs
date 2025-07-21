
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealth : MonoBehaviour
{
    [Header("Reset System")]
    [SerializeField] private int maxHealth = 3; // Configurar en Inspector
    private List<Image> originalHearts; // Cache de corazones originales


    [SerializeField] List<Image> hearts = new List<Image>();

    private void Start()
    {
        // Guardar referencia de corazones originales
        originalHearts = new List<Image>(hearts);
    }

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

        if (hearts.Count == 0)
        {
            Die();
        }
    }
    public void ResetHealth()
    {
        // Restaurar todos los corazones
        hearts.Clear();
        hearts.AddRange(originalHearts);

        // Reactivar todos los corazones
        for (int i = 0; i < hearts.Count; i++)
        {
            if (hearts[i] != null)
            {
                hearts[i].enabled = true;
            }
        }
    }
    void Die()
    {
        Debug.Log("El jugador ha muerto.");
        if (ResetSystem.Instance != null)
        {
            ResetSystem.Instance.OnPlayerDeath();
        }
    }

}