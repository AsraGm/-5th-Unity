using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MAINMenu : MonoBehaviour
{
    [Header("Prologue System")]
    [Tooltip("Referencia al sistema de prólogo")]
    [SerializeField] private MainMenuComicTransition prologueSystem;

    [Header("Direct Scene Loading (Backup)")]
    [Tooltip("¿Permitir carga directa sin prólogo? (para testing)")]
    [SerializeField] private bool allowDirectPlay = false;

    public void Play()
    {
        Time.timeScale = 1f;

        // Si hay sistema de prólogo y no está configurado para carga directa
        if (prologueSystem != null && !allowDirectPlay)
        {
            Debug.Log("Iniciando juego con prólogo");
            prologueSystem.StartPrologueSequence();
        }
        else
        {
            // Carga directa (método original)
            Debug.Log("Carga directa al nivel 1 (sin prólogo)");
            SceneManager.LoadScene("LEVEL 1");
        }
    }

    // Método alternativo para saltar el prólogo (puedes asignarlo a otro botón)
    public void PlayWithoutPrologue()
    {
        Time.timeScale = 1f;
        Debug.Log("Saltando prólogo - Carga directa");
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

    // Método de debug
    [ContextMenu("Test Prologue")]
    public void TestPrologue()
    {
        if (prologueSystem != null)
        {
            prologueSystem.StartPrologueSequence();
        }
        else
        {
            Debug.LogWarning("Sistema de prólogo no asignado");
        }
    }
}