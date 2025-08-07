using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class CollisionMessage : MonoBehaviour
{
    [Header("Configuración del Mensaje")]
    [TextArea(3, 6)]
    public string mensaje = "Presiona la tecla asignada para continuar...";

    [Header("Referencias UI")]
    public Canvas messageCanvas;
    public TextMeshProUGUI messageText;

    [Header("Configuración de Tecla")]
    public KeyCode teclaParaCerrar = KeyCode.Return;

    [Header("Configuración de Colisión")]
    public string playerTag = "Player";

    // Variables privadas
    private bool mensajeActivo = false;
    private bool jugadorEnArea = false;

    void Start()
    {
        // Asegurar que el canvas esté oculto al inicio
        if (messageCanvas != null)
        {
            messageCanvas.gameObject.SetActive(false);
        }
        else
        {
        }

        // Verificar TextMeshPro
        if (messageText != null)
        {

        }
        else
        {
        }

        // Verificar que el GameObject tenga un Collider configurado como Trigger
        Collider col = GetComponent<Collider>();
    }

    void Update()
    {
        // Solo verificar input si el mensaje está activo y el jugador está en el área
        if (mensajeActivo && jugadorEnArea)
        {
            if (Input.GetKeyDown(teclaParaCerrar))
            {
                CerrarMensaje();
            }
        }
    }

    void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag(playerTag))
        {
            jugadorEnArea = true;
            MostrarMensaje();
        }
    }

    void OnTriggerExit(Collider other)
    {
        // Si el jugador sale del área, ocultar mensaje
        if (other.CompareTag(playerTag))
        {
            jugadorEnArea = false;
            CerrarMensaje();
        }
    }

    void MostrarMensaje()
    { 

        if (messageCanvas != null && messageText != null)
        {
            mensajeActivo = true;

            // Activar canvas
            messageCanvas.gameObject.SetActive(true);

            // Verificar y activar el texto explícitamente
            if (!messageText.gameObject.activeInHierarchy)
            {
                messageText.gameObject.SetActive(true);
            }

            if (!messageText.enabled)
            {
                messageText.enabled = true;
            }

            // Establecer el texto
            messageText.text = mensaje;

            // Verificar color del texto
            if (messageText.color.a == 0)
            {
                Color newColor = messageText.color;
                newColor.a = 1f;
                messageText.color = newColor;
            }
        }
    }

    void CerrarMensaje()
    {

        if (mensajeActivo)
        {
            mensajeActivo = false;

            if (messageCanvas != null)
            {
                messageCanvas.gameObject.SetActive(false);
            }
        }
    }

    // Método público para cerrar el mensaje desde otros scripts si es necesario
    public void CerrarMensajePublico()
    {
        CerrarMensaje();
    }

    // Método para cambiar la tecla desde código si es necesario
    public void CambiarTecla(KeyCode nuevaTecla)
    {
        teclaParaCerrar = nuevaTecla;
    }
}