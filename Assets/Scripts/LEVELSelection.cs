using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LEVELSelection : MonoBehaviour
{
    [Header("Level Comic System")]
    [Tooltip("Referencia al sistema de transición con comics")]
    [SerializeField] private LevelComicTransition levelComicSystem;

    [Header("Direct Loading (Backup)")]
    [Tooltip("¿Permitir carga directa sin comics? (para testing)")]
    [SerializeField] private bool allowDirectLoad = false;

    public void Level1()
    {
        Time.timeScale = 1f;

        if (levelComicSystem != null && !allowDirectLoad)
        {
            Debug.Log("Cargando Level 1 con comic");
            levelComicSystem.StartLevelComicSequence("LEVEL 1", 1);
        }
        else
        {
            Debug.Log("Carga directa a Level 1 (sin comic)");
            SceneManager.LoadScene("LEVEL 1");
        }
    }

    public void Level2()
    {
        Time.timeScale = 1f;

        if (levelComicSystem != null && !allowDirectLoad)
        {
            Debug.Log("Cargando Level 2 con comic");
            levelComicSystem.StartLevelComicSequence("LEVEL 2", 2);
        }
        else
        {
            Debug.Log("Carga directa a Level 2 (sin comic)");
            SceneManager.LoadScene("LEVEL 2");
        }
    }

    public void Level3()
    {
        Time.timeScale = 1f;

        if (levelComicSystem != null && !allowDirectLoad)
        {
            Debug.Log("Cargando Level 3 con comic");
            levelComicSystem.StartLevelComicSequence("LEVEL 3", 3);
        }
        else
        {
            Debug.Log("Carga directa a Level 3 (sin comic)");
            SceneManager.LoadScene("LEVEL 3");
        }
    }

    // Métodos alternativos para carga directa (sin comics)
    public void Level1Direct()
    {
        Time.timeScale = 1f;
        Debug.Log("Carga directa a Level 1");
        SceneManager.LoadScene("LEVEL 1");
    }

    public void Level2Direct()
    {
        Time.timeScale = 1f;
        Debug.Log("Carga directa a Level 2");
        SceneManager.LoadScene("LEVEL 2");
    }

    public void Level3Direct()
    {
        Time.timeScale = 1f;
        Debug.Log("Carga directa a Level 3");
        SceneManager.LoadScene("LEVEL 3");
    }

    // Método de debug
    [ContextMenu("Test Level 1 Comic")]
    public void TestLevel1Comic()
    {
        if (levelComicSystem != null)
        {
            levelComicSystem.StartLevelComicSequence("LEVEL 1", 1);
        }
        else
        {
            Debug.LogWarning("Sistema de comics de nivel no asignado");
        }
    }
}