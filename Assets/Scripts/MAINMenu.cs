using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MAINMenu : MonoBehaviour
{
    [Header("Prologue System")]
    [Tooltip("Referencia al sistema de pr�logo")]
    [SerializeField] private MainMenuComicTransition prologueSystem;

    [Header("Direct Scene Loading (Backup)")]
    [Tooltip("�Permitir carga directa sin pr�logo? (para testing)")]
    [SerializeField] private bool allowDirectPlay = false;

    public void Play()
    {
        Time.timeScale = 1f;

        // Si hay sistema de pr�logo y no est� configurado para carga directa
        if (prologueSystem != null && !allowDirectPlay)
        {
            Debug.Log("Iniciando juego con pr�logo");
            prologueSystem.StartPrologueSequence();
        }
        else
        {
            // Carga directa (m�todo original)
            Debug.Log("Carga directa al nivel 1 (sin pr�logo)");
            SceneManager.LoadScene("LEVEL 1");
        }
    }

    // M�todo alternativo para saltar el pr�logo (puedes asignarlo a otro bot�n)
    public void PlayWithoutPrologue()
    {
        Time.timeScale = 1f;
        Debug.Log("Saltando pr�logo - Carga directa");
        SceneManager.LoadScene("LEVEL 1");
    }

    public void Levels()
    {
        SceneManager.LoadScene("LEVELS");
    }

    public void Exit()
    {
        SceneManager.LoadScene("CREDITS");
    }

    public void MainMenu()
    {
        Time.timeScale = 1f; // Cambiado de 0f a 1f (timeScale 0 pausa todo)
        SceneManager.LoadScene("MAIN MENU");
    }

    // M�todo de debug
    [ContextMenu("Test Prologue")]
    public void TestPrologue()
    {
        if (prologueSystem != null)
        {
            prologueSystem.StartPrologueSequence();
        }
        else
        {
            Debug.LogWarning("Sistema de pr�logo no asignado");
        }
    }
}