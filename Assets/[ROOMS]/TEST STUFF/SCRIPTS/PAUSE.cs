using UnityEngine;
using UnityEngine.SceneManagement;

public class MenuPausa : MonoBehaviour
{
    [SerializeField] GameObject menu;
    [SerializeField] CAMERA camara;
    [SerializeField] MOVEPLAYER control;
    public bool posible = true;
    private bool activo;

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Escape) && posible)
        {
            if (activo == false)
            {
                Pausa();
            }

            else if (activo)
            {
                Continuar();
            }
        }
    }

    private void Pausa()
    {
        activo = true;
        Time.timeScale = 0;
        menu.SetActive(true);
        camara.enabled = false;
        control.controlActivo = false;
        Cursor.lockState = CursorLockMode.None;
        Cursor.visible = true;
    }
    public void Continuar()
    {
        activo = false;
        Time.timeScale = 1;
        camara.enabled = true;
        control.controlActivo = true;
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
        menu.SetActive(false);
    }

    public void MainMenu()
    {
        SceneManager.LoadScene("MAIN MENU");
    }

    public void Salir()
    {
        Application.Quit();
    }


}
