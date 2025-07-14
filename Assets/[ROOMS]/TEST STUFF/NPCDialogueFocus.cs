using UnityEngine;

public class NPCDialogueFocus : MonoBehaviour
{
    [Header("Camera Settings")]
    [Tooltip("Objetivo para mirar durante el di�logo")]
    [SerializeField] private Transform lookTarget;
    
    [Tooltip("Distancia de la c�mara durante di�logo")]
    [SerializeField] private float cameraDistance = 3f;
    
    [Tooltip("Altura de la c�mara")]
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
        
        // Guardar posici�n original
        originalCamPosition = mainCamera.position;
        originalCamRotation = mainCamera.rotation;
    }

    private void LateUpdate()
    {
        if (isInDialogue)
        {
            // Calcular posici�n detr�s del NPC
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
        
        // Opcional: Desactivar control de c�mara del jugador aqu�
        // Ej: player.GetComponent<ThirdPersonController>().canControlCamera = false;
    }

    public void EndDialogueFocus()
    {
        isInDialogue = false;
        
        // Opcional: Reactivar control de c�mara del jugador
        // Ej: player.GetComponent<ThirdPersonController>().canControlCamera = true;
        
        // Opcional: Regresar a posici�n original (o dejar que el control del jugador lo maneje)
        // mainCamera.position = originalCamPosition;
        // mainCamera.rotation = originalCamRotation;
    }
}