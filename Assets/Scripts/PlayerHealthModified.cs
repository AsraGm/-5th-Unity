using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealthModified : MonoBehaviour
{
    [Header("Reset System")]
    [SerializeField] private int maxHealth = 3;
    private List<Image> originalHearts;
    [SerializeField] List<Image> hearts = new List<Image>();

    [Header("Ragdoll System")]
    [SerializeField] private RagdollController ragdollController;
    [SerializeField] private float ragdollDuration = 2f;

    [Header("Mexicanadas - Elige UNA")]
    [SerializeField] private PlayerHealthPatch mexicanada1;
    [SerializeField] private RagdollResetManager mexicanada2;
    [SerializeField] private SafePlayerController mexicanada3;
    
    [Header("Configuración")]
    [SerializeField] private MexicanadaType tipoMexicanada = MexicanadaType.ResetBruto;

    public enum MexicanadaType
    {
        ResetBruto,      // Mexicanada #1
        DelayInteligente, // Mexicanada #2
        EstadoSeguro      // Mexicanada #3
    }

    private bool isDead = false;

    private void Start()
    {
        originalHearts = new List<Image>(hearts);

        if (ragdollController == null)
        {
            ragdollController = GetComponent<RagdollController>();
        }

        // Auto-asignar mexicanadas si no están asignadas
        if (mexicanada1 == null) mexicanada1 = GetComponent<PlayerHealthPatch>();
        if (mexicanada2 == null) mexicanada2 = GetComponent<RagdollResetManager>();
        if (mexicanada3 == null) mexicanada3 = GetComponent<SafePlayerController>();

        // Verificar que al menos una mexicanada esté disponible
        bool hasAnyMexicanada = mexicanada1 != null || mexicanada2 != null || mexicanada3 != null;
        
        if (!hasAnyMexicanada)
        {
            Debug.LogWarning("¡No hay ninguna mexicanada asignada! El reset podría fallar.");
        }
    }

    public void TakeDamagePlayer(int damage)
    {
        if (isDead) return;

        for (int i = 0; i < damage; i++)
        {
            if (hearts.Count > 0)
            {
                hearts[0].enabled = false;
                hearts.RemoveAt(0);
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
        hearts.Clear();
        hearts.AddRange(originalHearts);

        for (int i = 0; i < hearts.Count; i++)
        {
            if (hearts[i] != null)
            {
                hearts[i].enabled = true;
            }
        }

        if (ragdollController != null)
        {
            ragdollController.DisableRagdoll();
        }
    }

    void Die()
    {
        if (isDead) return;

        isDead = true;
        Debug.Log("El jugador ha muerto.");

        // Activar ragdoll
        if (ragdollController != null)
        {
            ragdollController.EnableRagdoll();
        }

        // USAR LA MEXICANADA SELECCIONADA
        UsarMexicanadaSeleccionada();
    }

    private void UsarMexicanadaSeleccionada()
    {
        switch (tipoMexicanada)
        {
            case MexicanadaType.ResetBruto:
                if (mexicanada1 != null)
                {
                    Debug.Log("🌮 Usando Mexicanada #1: Reset Bruto");
                    StartCoroutine(DelayedMexicanada1());
                }
                else
                {
                    Debug.LogError("Mexicanada #1 no disponible, usando método original");
                    StartCoroutine(DelayedReset());
                }
                break;

            case MexicanadaType.DelayInteligente:
                if (mexicanada2 != null)
                {
                    Debug.Log("🌮 Usando Mexicanada #2: Delay Inteligente");
                    mexicanada2.TriggerSmartReset();
                }
                else
                {
                    Debug.LogError("Mexicanada #2 no disponible, usando método original");
                    StartCoroutine(DelayedReset());
                }
                break;

            case MexicanadaType.EstadoSeguro:
                if (mexicanada3 != null)
                {
                    Debug.Log("🌮 Usando Mexicanada #3: Estado Seguro");
                    mexicanada3.OnPlayerDied();
                }
                else
                {
                    Debug.LogError("Mexicanada #3 no disponible, usando método original");
                    StartCoroutine(DelayedReset());
                }
                break;
        }
    }

    private System.Collections.IEnumerator DelayedMexicanada1()
    {
        yield return new WaitForSeconds(ragdollDuration);
        
        if (mexicanada1 != null)
        {
            mexicanada1.ForceCompleteReset();
        }
    }

    private System.Collections.IEnumerator DelayedReset()
    {
        yield return new WaitForSeconds(ragdollDuration);

        if (ResetSystem.Instance != null)
        {
            ResetSystem.Instance.OnPlayerDeath();
        }
    }

    public bool IsDead()
    {
        return isDead;
    }

    [ContextMenu("Test Death")]
    public void TestDeath()
    {
        Die();
    }

    [ContextMenu("Cambiar a Mexicanada #1")]
    public void UsarMexicanada1()
    {
        tipoMexicanada = MexicanadaType.ResetBruto;
        Debug.Log("🌮 Cambiado a Mexicanada #1: Reset Bruto");
    }

    [ContextMenu("Cambiar a Mexicanada #2")]
    public void UsarMexicanada2()
    {
        tipoMexicanada = MexicanadaType.DelayInteligente;
        Debug.Log("🌮 Cambiado a Mexicanada #2: Delay Inteligente");
    }

    [ContextMenu("Cambiar a Mexicanada #3")]
    public void UsarMexicanada3()
    {
        tipoMexicanada = MexicanadaType.EstadoSeguro;
        Debug.Log("🌮 Cambiado a Mexicanada #3: Estado Seguro");
    }
}