using UnityEngine;

public class SpawnedPrefabController : MonoBehaviour
{
    private LevelsManager levelsManager;
    private int spawnedAtLevel = -1; // En qué nivel fue spawneado
    private bool isInitialized = false;

    void Start()
    {
        // Encontrar el LevelsManager
        levelsManager = FindFirstObjectByType<LevelsManager>();

        if (levelsManager != null)
        {
            // Recordar en qué nivel fue spawneado
            spawnedAtLevel = levelsManager.GetCurrentLevelIndex();
            isInitialized = true;
            Debug.Log($"🔥 {gameObject.name} INICIALIZADO - spawneado en nivel {spawnedAtLevel}");
        }
        else
        {
            Debug.LogError($"❌ {gameObject.name} NO PUDO ENCONTRAR LevelsManager!");
        }
    }

    void Update()
    {
        if (!isInitialized || levelsManager == null) return;

        int currentLevel = levelsManager.GetCurrentLevelIndex();

        // Debug constante para ver qué está pasando
        if (Time.frameCount % 60 == 0) // Cada segundo aprox
        {
            Debug.Log($"📊 {gameObject.name}: spawneado={spawnedAtLevel}, actual={currentLevel}");
        }

        // Si el nivel actual es mayor al nivel donde fue spawneado = destruir
        if (currentLevel > spawnedAtLevel)
        {
            Debug.Log($"💀 DESTRUYENDO {gameObject.name} (spawneado en nivel {spawnedAtLevel}, ahora en nivel {currentLevel})");
            Destroy(gameObject);
        }
    }

    // Método manual para forzar destrucción (por si acaso)
    [ContextMenu("Forzar Destrucción")]
    public void ForceDestroy()
    {
        Debug.Log($"🔨 DESTRUCCIÓN FORZADA de {gameObject.name}");
        Destroy(gameObject);
    }
}