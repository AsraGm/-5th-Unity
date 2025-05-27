using UnityEngine;

public class GameManager : MonoBehaviour
{
    public static bool IsPaused { get; private set; }

    public static void PauseGame()
    {
        IsPaused = true;
        Time.timeScale = 0f;
    }

    public static void ResumeGame()
    {
        IsPaused = false;
        Time.timeScale = 1f;
    }
}