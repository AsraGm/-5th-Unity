using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

public class MAINMenu : MonoBehaviour
{
    public void Play()
    {
        Time.timeScale = 1f;
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
        Time.timeScale = 0f;
        SceneManager.LoadScene("MAIN MENU");
    }
}
