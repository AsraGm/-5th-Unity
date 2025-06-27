using System.Collections;
using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.SceneManagement;

public class LEVELSelection : MonoBehaviour
{
    public void Level1()
    {
        Time.timeScale = 0f;
        SceneManager.LoadScene("PARCIAL");
    }

    public void Level2()
    {
        Time.timeScale = 0f;
        SceneManager.LoadScene("LEVEL 2");
    }

    public void Level3()
    {
        Time.timeScale = 0f;
        SceneManager.LoadScene("LEVEL 3");
    }

}
