using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class CollisionMessage : MonoBehaviour
{
    [Header("Identificación Única")]
    public string messageID = "mensaje1"; // ID único para cada trigger

    [Header("Configuración del Mensaje")]
    [TextArea(3, 6)]
    public string mensaje = "Presiona la tecla asignada para continuar...";

    [Header("Referencias UI")]
    public Canvas messageCanvas; // El canvas MESSAGER (siempre activo)
    public GameObject messageContainer; // El GameObject contenedor (InventoryMessage/DedoMessage)
    public TextMeshProUGUI messageText; // El texto específico (inventory/dedo)

    [Header("Configuración de Tecla")]
    public KeyCode teclaParaCerrar = KeyCode.Return;

    [Header("Configuración de Colisión")]
    public string playerTag = "Player";

    // Variables privadas
    private bool mensajeActivo = false;
    private bool jugadorEnArea = false;

    // Control global de qué mensaje está activo
    private static string mensajeActivoGlobal = "";
    private static GameObject contenedorActivoGlobal = null;

    void Start()
    {
        // Asegurar que el canvas principal esté siempre visible
        if (messageCanvas != null)
        {
            messageCanvas.gameObject.SetActive(true);
        }

        // Ocultar el contenedor específico del mensaje
        if (messageContainer != null)
        {
            messageContainer.SetActive(false);
        }

        // Verificar que el messageID no esté vacío
        if (string.IsNullOrEmpty(messageID))
        {
            messageID = gameObject.name;
        }

        // Auto-asignar referencias si no están configuradas
        AutoAsignarReferencias();
    }

    void Update()
    {
        if (mensajeActivo && jugadorEnArea && mensajeActivoGlobal == messageID)
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
            // Solo mostrar si no hay otro mensaje activo
            if (mensajeActivoGlobal == "" || mensajeActivoGlobal == messageID)
            {
                MostrarMensaje();
            }
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.CompareTag(playerTag))
        {
            jugadorEnArea = false;
            if (mensajeActivoGlobal == messageID)
            {
                CerrarMensaje();
            }
        }
    }

    void MostrarMensaje()
    {
        // Ocultar el contenedor activo anterior si existe
        if (contenedorActivoGlobal != null && contenedorActivoGlobal != messageContainer)
        {
            contenedorActivoGlobal.SetActive(false);
        }

        if (messageContainer != null && messageText != null)
        {
            mensajeActivo = true;
            mensajeActivoGlobal = messageID;
            contenedorActivoGlobal = messageContainer;

            // Activar el contenedor del mensaje (que activa automáticamente el texto)
            messageContainer.SetActive(true);
            messageText.text = mensaje;

            Debug.Log($"Mensaje mostrado: {messageID}");
        }
        else
        {
            Debug.LogWarning($"Referencias faltantes en {gameObject.name}. Contenedor: {messageContainer}, Texto: {messageText}");
        }
    }

    void CerrarMensaje()
    {
        if (mensajeActivo && mensajeActivoGlobal == messageID)
        {
            mensajeActivo = false;

            if (messageContainer != null)
            {
                messageContainer.SetActive(false);
            }

            // Limpiar variables globales
            if (mensajeActivoGlobal == messageID)
            {
                mensajeActivoGlobal = "";
                contenedorActivoGlobal = null;
            }

            Debug.Log($"Mensaje cerrado: {messageID}");
        }
    }

    void AutoAsignarReferencias()
    {
        // Si no hay Canvas asignado, buscar uno llamado "MESSAGER"
        if (messageCanvas == null)
        {
            GameObject canvasObj = GameObject.Find("MESSAGER");
            if (canvasObj != null)
            {
                messageCanvas = canvasObj.GetComponent<Canvas>();
            }
        }

        // Si no hay contenedor asignado, buscar basándose en el messageID
        if (messageContainer == null && messageCanvas != null)
        {
            // Buscar contenedor por nombre común
            Transform[] contenedores = {
                messageCanvas.transform.Find("InventoryMessage"),
                messageCanvas.transform.Find("DedoMessage"),
                messageCanvas.transform.Find(messageID + "Message"),
                messageCanvas.transform.Find(messageID)
            };

            foreach (Transform contenedor in contenedores)
            {
                if (contenedor != null)
                {
                    messageContainer = contenedor.gameObject;
                    break;
                }
            }
        }

        // Si no hay texto asignado, buscar dentro del contenedor
        if (messageText == null && messageContainer != null)
        {
            messageText = messageContainer.GetComponentInChildren<TextMeshProUGUI>();
        }
    }

    // Métodos públicos para control externo
    public void CerrarMensajePublico()
    {
        CerrarMensaje();
    }

    public void CambiarTecla(KeyCode nuevaTecla)
    {
        teclaParaCerrar = nuevaTecla;
    }

    public void CambiarMensaje(string nuevoMensaje)
    {
        mensaje = nuevoMensaje;
        if (mensajeActivo && messageText != null)
        {
            messageText.text = mensaje;
        }
    }

    // Método estático para cerrar todos los mensajes
    public static void CerrarTodosLosMensajes()
    {
        if (contenedorActivoGlobal != null)
        {
            contenedorActivoGlobal.SetActive(false);
            contenedorActivoGlobal = null;
        }
        mensajeActivoGlobal = "";
    }

    // Método para verificar si este mensaje está activo
    public bool EstaActivo()
    {
        return mensajeActivo && mensajeActivoGlobal == messageID;
    }
}