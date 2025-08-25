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

    [Header("Keyboard Input Settings")]
    [Tooltip("¿Habilitar selección de niveles con teclado?")]
    [SerializeField] private bool enableKeyboardSelection = true;

    [Space(10)]
    [Header("Level Key Assignments")]
    [Tooltip("Tecla para Level 1")]
    [SerializeField] private KeyCode level1Key = KeyCode.Alpha1;
    [Tooltip("¿Habilitar tecla Level 1?")]
    [SerializeField] private bool enableLevel1Key = true;

    [Space(5)]
    [Tooltip("Tecla para Level 2")]
    [SerializeField] private KeyCode level2Key = KeyCode.Alpha2;
    [Tooltip("¿Habilitar tecla Level 2?")]
    [SerializeField] private bool enableLevel2Key = true;

    [Space(5)]
    [Tooltip("Tecla para Level 3")]
    [SerializeField] private KeyCode level3Key = KeyCode.Alpha3;
    [Tooltip("¿Habilitar tecla Level 3?")]
    [SerializeField] private bool enableLevel3Key = true;

    [Header("Alternative Keys")]
    [Tooltip("Teclas alternativas para Level 1 (ej: Numpad)")]
    [SerializeField] private KeyCode[] alternativeLevel1Keys = { KeyCode.Keypad1 };
    [Tooltip("Teclas alternativas para Level 2 (ej: Numpad)")]
    [SerializeField] private KeyCode[] alternativeLevel2Keys = { KeyCode.Keypad2 };
    [Tooltip("Teclas alternativas para Level 3 (ej: Numpad)")]
    [SerializeField] private KeyCode[] alternativeLevel3Keys = { KeyCode.Keypad3 };

    [Header("Direct Load Keys")]
    [Tooltip("¿Habilitar teclas para carga directa (sin comics)?")]
    [SerializeField] private bool enableDirectLoadKeys = true;
    [Tooltip("Modificador para carga directa (mantener presionado + número)")]
    [SerializeField] private KeyCode directLoadModifier = KeyCode.LeftShift;

    [Header("Navigation Keys")]
    [Tooltip("Tecla para volver al menú principal")]
    [SerializeField] private KeyCode backToMenuKey = KeyCode.Escape;
    [Tooltip("¿Habilitar tecla de regreso?")]
    [SerializeField] private bool enableBackKey = true;

    [Header("Debug Settings")]
    [Tooltip("¿Mostrar información de debug?")]
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
        if (!enableKeyboardSelection) return;

        // Verificar si se está manteniendo presionado el modificador para carga directa
        bool directLoadPressed = enableDirectLoadKeys && Input.GetKey(directLoadModifier);

        // Level 1 - Tecla principal
        if (enableLevel1Key && Input.GetKeyDown(level1Key))
        {
            if (directLoadPressed)
            {
                DebugLog($"Carga directa Level 1 activada: {directLoadModifier} + {level1Key}");
                Level1Direct();
            }
            else
            {
                DebugLog($"Level 1 seleccionado: {level1Key}");
                Level1();
            }
        }

        // Level 1 - Teclas alternativas
        foreach (KeyCode key in alternativeLevel1Keys)
        {
            if (enableLevel1Key && Input.GetKeyDown(key))
            {
                if (directLoadPressed)
                {
                    DebugLog($"Carga directa Level 1 (alternativa): {directLoadModifier} + {key}");
                    Level1Direct();
                }
                else
                {
                    DebugLog($"Level 1 seleccionado (alternativa): {key}");
                    Level1();
                }
                break;
            }
        }

        // Level 2 - Tecla principal
        if (enableLevel2Key && Input.GetKeyDown(level2Key))
        {
            if (directLoadPressed)
            {
                DebugLog($"Carga directa Level 2 activada: {directLoadModifier} + {level2Key}");
                Level2Direct();
            }
            else
            {
                DebugLog($"Level 2 seleccionado: {level2Key}");
                Level2();
            }
        }

        // Level 2 - Teclas alternativas
        foreach (KeyCode key in alternativeLevel2Keys)
        {
            if (enableLevel2Key && Input.GetKeyDown(key))
            {
                if (directLoadPressed)
                {
                    DebugLog($"Carga directa Level 2 (alternativa): {directLoadModifier} + {key}");
                    Level2Direct();
                }
                else
                {
                    DebugLog($"Level 2 seleccionado (alternativa): {key}");
                    Level2();
                }
                break;
            }
        }

        // Level 3 - Tecla principal
        if (enableLevel3Key && Input.GetKeyDown(level3Key))
        {
            if (directLoadPressed)
            {
                DebugLog($"Carga directa Level 3 activada: {directLoadModifier} + {level3Key}");
                Level3Direct();
            }
            else
            {
                DebugLog($"Level 3 seleccionado: {level3Key}");
                Level3();
            }
        }

        // Level 3 - Teclas alternativas
        foreach (KeyCode key in alternativeLevel3Keys)
        {
            if (enableLevel3Key && Input.GetKeyDown(key))
            {
                if (directLoadPressed)
                {
                    DebugLog($"Carga directa Level 3 (alternativa): {directLoadModifier} + {key}");
                    Level3Direct();
                }
                else
                {
                    DebugLog($"Level 3 seleccionado (alternativa): {key}");
                    Level3();
                }
                break;
            }
        }

        // Tecla de regreso al menú
        if (enableBackKey && Input.GetKeyDown(backToMenuKey))
        {
            DebugLog($"Regresando al menú principal: {backToMenuKey}");
            BackToMainMenu();
        }
    }

    public void Level1()
    {
        Time.timeScale = 1f;
        if (levelComicSystem != null && !allowDirectLoad)
        {
            DebugLog("Cargando Level 1 con comic");
            levelComicSystem.StartLevelComicSequence("LEVEL 1", 1);
        }
        else
        {
            DebugLog("Carga directa a Level 1 (sin comic)");
            SceneManager.LoadScene("LEVEL 1");
        }
    }

    public void Level2()
    {
        Time.timeScale = 1f;
        if (levelComicSystem != null && !allowDirectLoad)
        {
            DebugLog("Cargando Level 2 con comic");
            levelComicSystem.StartLevelComicSequence("LEVEL 2", 2);
        }
        else
        {
            DebugLog("Carga directa a Level 2 (sin comic)");
            SceneManager.LoadScene("LEVEL 2");
        }
    }

    public void Level3()
    {
        Time.timeScale = 1f;
        if (levelComicSystem != null && !allowDirectLoad)
        {
            DebugLog("Cargando Level 3 con comic");
            levelComicSystem.StartLevelComicSequence("LEVEL 3", 3);
        }
        else
        {
            DebugLog("Carga directa a Level 3 (sin comic)");
            SceneManager.LoadScene("LEVEL 3");
        }
    }

    // Métodos alternativos para carga directa (sin comics)
    public void Level1Direct()
    {
        Time.timeScale = 1f;
        DebugLog("Carga directa a Level 1");
        SceneManager.LoadScene("LEVEL 1");
    }

    public void Level2Direct()
    {
        Time.timeScale = 1f;
        DebugLog("Carga directa a Level 2");
        SceneManager.LoadScene("LEVEL 2");
    }

    public void Level3Direct()
    {
        Time.timeScale = 1f;
        DebugLog("Carga directa a Level 3");
        SceneManager.LoadScene("LEVEL 3");
    }

    // Método para regresar al menú principal
    public void BackToMainMenu()
    {
        Time.timeScale = 1f;
        DebugLog("Regresando al menú principal");
        SceneManager.LoadScene("MAIN MENU");
    }

    // Métodos públicos para configuración en runtime
    public void SetEnableKeyboardSelection(bool enable)
    {
        enableKeyboardSelection = enable;
    }

    public void SetLevel1Key(KeyCode newKey)
    {
        level1Key = newKey;
        DebugLog($"Tecla Level 1 cambiada a: {newKey}");
    }

    public void SetLevel2Key(KeyCode newKey)
    {
        level2Key = newKey;
        DebugLog($"Tecla Level 2 cambiada a: {newKey}");
    }

    public void SetLevel3Key(KeyCode newKey)
    {
        level3Key = newKey;
        DebugLog($"Tecla Level 3 cambiada a: {newKey}");
    }

    public void SetBackToMenuKey(KeyCode newKey)
    {
        backToMenuKey = newKey;
        DebugLog($"Tecla de regreso cambiada a: {newKey}");
    }

    // Método genérico para cargar cualquier nivel por número
    public void LoadLevel(int levelNumber)
    {
        switch (levelNumber)
        {
            case 1:
                Level1();
                break;
            case 2:
                Level2();
                break;
            case 3:
                Level3();
                break;
            default:
                Debug.LogWarning($"Número de nivel no válido: {levelNumber}");
                break;
        }
    }

    // Método genérico para carga directa por número
    public void LoadLevelDirect(int levelNumber)
    {
        switch (levelNumber)
        {
            case 1:
                Level1Direct();
                break;
            case 2:
                Level2Direct();
                break;
            case 3:
                Level3Direct();
                break;
            default:
                Debug.LogWarning($"Número de nivel no válido: {levelNumber}");
                break;
        }
    }

    // Mostrar asignaciones de teclas
    private void LogKeyAssignments()
    {
        Debug.Log("=== ASIGNACIONES DE TECLAS LEVEL SELECTION ===");
        if (enableLevel1Key) Debug.Log($"Level 1: {level1Key}");
        if (enableLevel2Key) Debug.Log($"Level 2: {level2Key}");
        if (enableLevel3Key) Debug.Log($"Level 3: {level3Key}");
        if (enableBackKey) Debug.Log($"Regreso al Menú: {backToMenuKey}");

        if (enableDirectLoadKeys)
        {
            Debug.Log($"Carga Directa: {directLoadModifier} + [número de nivel]");
        }

        if (alternativeLevel1Keys.Length > 0)
            Debug.Log($"Teclas alternativas Level 1: {string.Join(", ", alternativeLevel1Keys)}");
        if (alternativeLevel2Keys.Length > 0)
            Debug.Log($"Teclas alternativas Level 2: {string.Join(", ", alternativeLevel2Keys)}");
        if (alternativeLevel3Keys.Length > 0)
            Debug.Log($"Teclas alternativas Level 3: {string.Join(", ", alternativeLevel3Keys)}");

        Debug.Log("=============================================");
    }

    // Debug logging
    private void DebugLog(string message)
    {
        if (showDebugInfo)
        {
            Debug.Log($"[LEVELSelection] {message}");
        }
    }

    // Métodos de debug
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

    [ContextMenu("Show Key Assignments")]
    public void ShowKeyAssignments()
    {
        LogKeyAssignments();
    }

    [ContextMenu("Test All Levels")]
    public void TestAllLevels()
    {
        Debug.Log("=== TESTING ALL LEVELS ===");
        Debug.Log("Disponibles: Level1(), Level2(), Level3()");
        Debug.Log("Carga directa: Level1Direct(), Level2Direct(), Level3Direct()");
        LogKeyAssignments();
    }

    // Getters públicos
    public bool KeyboardSelectionEnabled => enableKeyboardSelection;
    public KeyCode Level1Key => level1Key;
    public KeyCode Level2Key => level2Key;
    public KeyCode Level3Key => level3Key;
    public KeyCode BackToMenuKey => backToMenuKey;
}