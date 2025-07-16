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
        // Verifica si el sistema de inventario está configurado y si hay niveles definidos para evitar errores.
        if (inventorySystem == null || levels.Count == 0) return; // 
        if (currentLevelIndex < +
            0 || currentLevelIndex >= levels.Count) return;

        LevelData level = levels[currentLevelIndex]; // Creo "LevelData level" para acceder a los datos del nivel actual.

        if (inventorySystem.ItemCount >= level.itemsRequired && !level.bossDefeated && level.boss != null)
        {
            DefeatBoss(); // Llama al método para derrotar al jefe.
            level.bossDefeated = true;
            LevelComplete();
        }
    }

    private void LevelComplete()
    {
        if (currentLevelIndex < levels.Count - 1) { currentLevelIndex++; Debug.Log($"Avanzando al nivel {levels[currentLevelIndex].levelName}"); }
        else Debug.Log("Todos los niveles completados!");
    }

    private void DefeatBoss()
    {
       Destroy(levels[currentLevelIndex].boss.gameObject); // Destruye el objeto del jefe actual.
    }
}
