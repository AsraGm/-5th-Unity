using System;
using System.Collections.Generic;
using UnityEngine;

public class LevelsManager : MonoBehaviour
{
    [Serializable]
    public class LevelData
    {
        public string levelName;
        public int itemsRequired;
        public Transform boss;
        [HideInInspector] public bool bossDefeated = false;
    }

    [Header("Configura los niveles aquí")]
    [SerializeField] private List<LevelData> levels = new List<LevelData>();

    [Header("Selecciona el nivel actual (índice)")]
    [SerializeField] private int currentLevelIndex = 0;

    private InventorySystem inventorySystem;

    private void Start()
    {
        inventorySystem = FindFirstObjectByType<InventorySystem>();
    }

    private void Update()
    {
        CheckCurrentLevel();
    }

    private void CheckCurrentLevel()
    {
        if (inventorySystem == null || levels.Count == 0) return;
        if (currentLevelIndex < 0 || currentLevelIndex >= levels.Count) return;

        LevelData level = levels[currentLevelIndex];

        if (inventorySystem.ItemCount >= level.itemsRequired && !level.bossDefeated && level.boss != null)
        {
            DefeatBoss();
            level.bossDefeated = true;
            LevelComplete();
        }
    }

    private void LevelComplete()
    {
        if (currentLevelIndex < levels.Count - 1)
        {
            currentLevelIndex++;

            // NUEVO: Notificar al ResetSystem que el nivel ha cambiado
            if (ResetSystem.Instance != null)
            {
                ResetSystem.Instance.UpdateLevelState();
            }

            Debug.Log($"Avanzando al nivel {levels[currentLevelIndex].levelName}");
        }
        else
        {
            Debug.Log("Todos los niveles completados!");
        }
    }

    private void DefeatBoss()
    {
        NPCController npc = levels[currentLevelIndex].boss.GetComponent<NPCController>();
        if (npc != null) npc.DefeatBoss();
    }

    // NUEVOS: Métodos públicos para que ResetSystem pueda acceder a la información
    public int GetCurrentLevelIndex()
    {
        return currentLevelIndex;
    }

    public int GetLevelsCount()
    {
        return levels.Count;
    }

    public LevelData GetLevelData(int levelIndex)
    {
        if (levelIndex >= 0 && levelIndex < levels.Count)
        {
            return levels[levelIndex];
        }
        return null;
    }

    public LevelData GetCurrentLevelData()
    {
        return GetLevelData(currentLevelIndex);
    }
}