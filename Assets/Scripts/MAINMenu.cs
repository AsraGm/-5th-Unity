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

    [Header("Keyboard Input Settings")]
    [Tooltip("¿Habilitar controles de teclado?")]
    [SerializeField] private bool enableKeyboardControls = true;

    [Space(10)]
    [Header("Key Assignments")]
    [Tooltip("Tecla para Play (iniciar juego)")]
    [SerializeField] private KeyCode playKey = KeyCode.Return;
    [Tooltip("¿Habilitar tecla Play?")]
    [SerializeField] private bool enablePlayKey = true;

    [Space(5)]
    [Tooltip("Tecla para Levels (selector de niveles)")]
    [SerializeField] private KeyCode levelsKey = KeyCode.L;
    [Tooltip("¿Habilitar tecla Levels?")]
    [SerializeField] private bool enableLevelsKey = true;

    [Space(5)]
    [Tooltip("Tecla para Exit (salir del juego)")]
    [SerializeField] private KeyCode exitKey = KeyCode.Escape;
    [Tooltip("¿Habilitar tecla Exit?")]
    [SerializeField] private bool enableExitKey = true;

    [Space(5)]
    [Tooltip("Tecla para Main Menu (volver al menú)")]
    [SerializeField] private KeyCode mainMenuKey = KeyCode.M;
    [Tooltip("¿Habilitar tecla Main Menu?")]
    [SerializeField] private bool enableMainMenuKey = true;

    [Space(5)]
    [Tooltip("Tecla para Play sin prólogo (carga directa)")]
    [SerializeField] private KeyCode playDirectKey = KeyCode.P;
    [Tooltip("¿Habilitar tecla Play directo?")]
    [SerializeField] private bool enablePlayDirectKey = true;

    [Header("Alternative Keys")]
    [Tooltip("Teclas alternativas para Play")]
    [SerializeField] private KeyCode[] alternativePlayKeys = { KeyCode.Space };
    [Tooltip("Teclas alternativas para Exit")]
    [SerializeField] private KeyCode[] alternativeExitKeys = { KeyCode.Q };

    [Header("Debug Info")]
    [Tooltip("¿Mostrar información de debug en consola?")]
    [SerializeField] private bool showDebugInfo = true;

    void Start()
    {
        if (showDebugInfo)
        {
            LogKeyAssignments();
        }
    }

    void Update()
    {
        if (!enableKeyboardControls) return;

        // Verificar tecla Play
        if (enablePlayKey && Input.GetKeyDown(playKey))
        {
            DebugLog($"Tecla Play presionada: {playKey}");
            Play();
        }

        // Verificar teclas alternativas para Play
        foreach (KeyCode key in alternativePlayKeys)
        {
            if (enablePlayKey && Input.GetKeyDown(key))
            {
                DebugLog($"Tecla alternativa Play presionada: {key}");
                Play();
                break;
            }
        }

        // Verificar tecla Levels
        if (enableLevelsKey && Input.GetKeyDown(levelsKey))
        {
            DebugLog($"Tecla Levels presionada: {levelsKey}");
            Levels();
        }

        // Verificar tecla Exit
        if (enableExitKey && Input.GetKeyDown(exitKey))
        {
            DebugLog($"Tecla Exit presionada: {exitKey}");
            Exit();
        }

        // Verificar teclas alternativas para Exit
        foreach (KeyCode key in alternativeExitKeys)
        {
            if (enableExitKey && Input.GetKeyDown(key))
            {
                DebugLog($"Tecla alternativa Exit presionada: {key}");
                Exit();
                break;
            }
        }

        // Verificar tecla Main Menu
        if (enableMainMenuKey && Input.GetKeyDown(mainMenuKey))
        {
            DebugLog($"Tecla Main Menu presionada: {mainMenuKey}");
            MainMenu();
        }

        // Verificar tecla Play directo (sin prólogo)
        if (enablePlayDirectKey && Input.GetKeyDown(playDirectKey))
        {
            DebugLog($"Tecla Play directo presionada: {playDirectKey}");
            PlayWithoutPrologue();
        }
    }

    public void Play()
    {
        Time.timeScale = 1f;
        // Si hay sistema de prólogo y no está configurado para carga directa
        if (prologueSystem != null && !allowDirectPlay)
        {
            DebugLog("Iniciando juego con prólogo");
            prologueSystem.StartPrologueSequence();
        }
        else
        {
            // Carga directa (método original)
            DebugLog("Carga directa al nivel 1 (sin prólogo)");
            SceneManager.LoadScene("LEVEL 1");
        }
    }

    // Método alternativo para saltar el prólogo (puedes asignarlo a otro botón)
    public void PlayWithoutPrologue()
    {
        Time.timeScale = 1f;
        DebugLog("Saltando prólogo - Carga directa");
        SceneManager.LoadScene("LEVEL 1");
    }

    public void Levels()
    {
        DebugLog("Navegando a selector de niveles");
        SceneManager.LoadScene("LEVELS");
    }

    public void Exit()
    {
        DebugLog("Cerrando aplicación");
#if UNITY_EDITOR
        UnityEditor.EditorApplication.isPlaying = false;
#else
        Application.Quit();
#endif
    }

    public void MainMenu()
    {
        Time.timeScale = 1f;
        DebugLog("Regresando al menú principal");
        SceneManager.LoadScene("MAIN MENU");
    }

    // Métodos públicos para cambiar configuraciones en runtime
    public void SetEnableKeyboardControls(bool enable)
    {
        enableKeyboardControls = enable;
    }

    public void SetPlayKey(KeyCode newKey)
    {
        playKey = newKey;
        DebugLog($"Tecla Play cambiada a: {newKey}");
    }

    public void SetLevelsKey(KeyCode newKey)
    {
        levelsKey = newKey;
        DebugLog($"Tecla Levels cambiada a: {newKey}");
    }

    public void SetExitKey(KeyCode newKey)
    {
        exitKey = newKey;
        DebugLog($"Tecla Exit cambiada a: {newKey}");
    }

    public void SetMainMenuKey(KeyCode newKey)
    {
        mainMenuKey = newKey;
        DebugLog($"Tecla Main Menu cambiada a: {newKey}");
    }

    public void SetPlayDirectKey(KeyCode newKey)
    {
        playDirectKey = newKey;
        DebugLog($"Tecla Play directo cambiada a: {newKey}");
    }

    // Método para mostrar las teclas asignadas
    private void LogKeyAssignments()
    {
        Debug.Log("=== ASIGNACIONES DE TECLAS ===");
        if (enablePlayKey) Debug.Log($"Play: {playKey}");
        if (enableLevelsKey) Debug.Log($"Levels: {levelsKey}");
        if (enableExitKey) Debug.Log($"Exit: {exitKey}");
        if (enableMainMenuKey) Debug.Log($"Main Menu: {mainMenuKey}");
        if (enablePlayDirectKey) Debug.Log($"Play Directo: {playDirectKey}");

        if (alternativePlayKeys.Length > 0)
        {
            Debug.Log($"Teclas alternativas Play: {string.Join(", ", alternativePlayKeys)}");
        }
        if (alternativeExitKeys.Length > 0)
        {
            Debug.Log($"Teclas alternativas Exit: {string.Join(", ", alternativeExitKeys)}");
        }
        Debug.Log("===============================");
    }

    // Método de debug mejorado
    private void DebugLog(string message)
    {
        if (showDebugInfo)
        {
            Debug.Log($"[MAINMenu] {message}");
        }
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

    [ContextMenu("Show Key Assignments")]
    public void ShowKeyAssignments()
    {
        LogKeyAssignments();
    }

    [ContextMenu("Test All Functions")]
    public void TestAllFunctions()
    {
        Debug.Log("=== TESTING ALL FUNCTIONS ===");
        Debug.Log("Disponible: Play(), Levels(), Exit(), MainMenu(), PlayWithoutPrologue()");
        Debug.Log("Teclas configuradas:");
        LogKeyAssignments();
    }

    // Getters públicos
    public bool KeyboardControlsEnabled => enableKeyboardControls;
    public KeyCode PlayKey => playKey;
    public KeyCode LevelsKey => levelsKey;
    public KeyCode ExitKey => exitKey;
    public KeyCode MainMenuKey => mainMenuKey;
    public KeyCode PlayDirectKey => playDirectKey;
}