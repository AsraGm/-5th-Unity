using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealth : MonoBehaviour
{
    [Header("Health Settings")]
    [SerializeField] private int maxHealth = 3; // Configurar en Inspector
    private List<Image> originalHearts; // Cache de corazones originales
    [SerializeField] List<Image> hearts = new List<Image>();

    [Header("References")]
    [SerializeField] private RagdollController ragdollController;

    private bool isDead = false;

    private void Start()
    {
        // Guardar referencia de corazones originales
        originalHearts = new List<Image>(hearts);

        // Obtener RagdollController si no est� asignado
        if (ragdollController == null)
        {
            ragdollController = GetComponent<RagdollController>();
        }

        if (ragdollController == null)
        {
            Debug.LogWarning("RagdollController no encontrado en " + gameObject.name);
        }
    }

    public void TakeDamagePlayer(int damage)
    {
        if (isDead) return;

        for (int i = 0; i < damage; i++)
        {
            if (hearts.Count > 0) // Verifica si hay corazones disponibles
            {
                hearts[0].enabled = false; // Desactiva el primer coraz�n visible
                hearts.RemoveAt(0);        // Elimina el primer coraz�n de la lista
            }
        }

        if (hearts.Count == 0)
        {
            Die();
        }
    }

    public void ResetHealth()
    {
        isDead = false;

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

        // Asegurar que el ragdoll est� desactivado y el animator activo
        if (ragdollController != null)
        {
            ragdollController.EnableAnimator();
        }

        Debug.Log("Salud restaurada completamente");
    }

    void Die()
    {
        if (isDead) return; // Evitar m�ltiples llamadas

        isDead = true;
        Debug.Log("El jugador ha muerto.");

        // Activar ragdoll inmediatamente
        if (ragdollController != null)
        {
            ragdollController.EnableRagdoll();

            // Opcional: aplicar una peque�a fuerza para hacer m�s dram�tica la muerte
            Vector3 deathForce = Vector3.up * 2f + Random.insideUnitSphere * 1f;
            ragdollController.ApplyRagdollForce(deathForce, transform.position);
        }

        // Esperar un momento antes de iniciar el reset para que se vea el ragdoll
        StartCoroutine(DelayedReset());
    }

    private System.Collections.IEnumerator DelayedReset()
    {
        // Esperar 2 segundos para que el jugador vea el efecto ragdoll
        yield return new WaitForSeconds(2f);

        // Llamar al sistema de reset
        if (ResetSystem.Instance != null)
        {
            ResetSystem.Instance.OnPlayerDeath();
        }
    }

    // M�todo p�blico para comprobar si est� muerto
    public bool IsDead()
    {
        return isDead;
    }

    // M�todo para recibir da�o con fuerza (�til para explosiones o golpes)
    public void TakeDamageWithForce(int damage, Vector3 force, Vector3 hitPoint)
    {
        TakeDamagePlayer(damage);

        // Si muere, aplicar la fuerza al ragdoll
        if (isDead && ragdollController != null && ragdollController.IsRagdollActive())
        {
            ragdollController.ApplyRagdollForce(force, hitPoint);
        }
    }

    // M�todos para debug
    [ContextMenu("Test Death")]
    public void TestDeath()
    {
        Die();
    }

    [ContextMenu("Test Death with Force")]
    public void TestDeathWithForce()
    {
        Vector3 randomForce = Vector3.up * 5f + Random.insideUnitSphere * 3f;
        TakeDamageWithForce(hearts.Count, randomForce, transform.position);
    }
}