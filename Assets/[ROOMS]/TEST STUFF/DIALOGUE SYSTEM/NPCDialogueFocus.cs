using UnityEngine;

public class NPCDialogueFocus : MonoBehaviour
{
    [Header("Camera Settings")]
    [Tooltip("Objetivo para mirar durante el diálogo")]
    [SerializeField] private Transform lookTarget;
    
    [Tooltip("Distancia de la cámara durante diálogo")]
    [SerializeField] private float cameraDistance = 3f;
    
    [Tooltip("Altura de la cámara")]
    [SerializeField] private float cameraHeight = 1.5f;
    
    [Tooltip("Suavizado de movimiento")]
    [SerializeField] private float smoothSpeed = 2f;

    private Transform mainCamera;
    private Transform player;
    private Vector3 originalCamPosition;
    private Quaternion originalCamRotation;
    private bool isInDialogue = false;

    private void Start()
    {
        mainCamera = Camera.main.transform;
        player = GameObject.FindGameObjectWithTag("Player").transform;
        
        // Guardar posición original
        originalCamPosition = mainCamera.position;
        originalCamRotation = mainCamera.rotation;
    }

    private void LateUpdate()
    {
        if (isInDialogue)
        {
            // Calcular posición detrás del NPC
            Vector3 desiredPosition = transform.position - transform.forward * cameraDistance + Vector3.up * cameraHeight;
            
            // Mover suavemente
            mainCamera.position = Vector3.Lerp(mainCamera.position, desiredPosition, smoothSpeed * Time.deltaTime);
            
            // Mirar al punto objetivo (o al NPC)
            Vector3 lookAtPosition = lookTarget != null ? lookTarget.position : transform.position + Vector3.up * 1.5f;
            mainCamera.rotation = Quaternion.Slerp(mainCamera.rotation, 
                Quaternion.LookRotation(lookAtPosition - mainCamera.position), 
                smoothSpeed * Time.deltaTime);
        }
    }

    public void StartDialogueFocus()
    {
        isInDialogue = true;
        
        // Opcional: Desactivar control de cámara del jugador aquí
        // Ej: player.GetComponent<ThirdPersonController>().canControlCamera = false;
    }

    public void EndDialogueFocus()
    {
        isInDialogue = false;
        
        // Opcional: Reactivar control de cámara del jugador
        // Ej: player.GetComponent<ThirdPersonController>().canControlCamera = true;
        
        // Opcional: Regresar a posición original (o dejar que el control del jugador lo maneje)
        // mainCamera.position = originalCamPosition;
        // mainCamera.rotation = originalCamRotation;
    }
}