using System.Collections;
using System.Collections.Generic;
using Unity.Cinemachine;
using UnityEngine;

public class CAMERA : MonoBehaviour
{
    public enum CameraStyle
    {
        Basic,
        Dialogue,
    }

    [Header("Player References")]
    [SerializeField] private Transform orientation;
    [SerializeField] private Transform player;
    [SerializeField] private Transform playerObj;
    [SerializeField] private Rigidbody rb;
    [SerializeField] private float rotationSpeed = 3f; // Reducido para mayor suavidad

    [Header("Camera References")]
    [SerializeField] private GameObject thirdPersonCam;

    [Header("Dialogue Camera Settings")]
    [Tooltip("The target the dialogue camera should look at")]
    [SerializeField] private Transform dialogueLookAt;
    [Tooltip("The dialogue camera GameObject")]
    [SerializeField] private GameObject dialogueCam;
    [Tooltip("Optional: The Cinemachine Virtual Camera for dialogue")]
    [SerializeField] private CinemachineVirtualCamera dialogueVirtualCam;

    [Header("Current Settings")]
    [SerializeField] private CameraStyle currentStyle;

    [Header("Manual Camera Occlusion")]
    [SerializeField] private CinemachineFreeLook freeLookCam; // Arrastra tu FreeLook Camera aquí
    [SerializeField] private LayerMask obstacleLayerMask = -1; // Layers de obstáculos
    [SerializeField] private float cameraRadius = 0.3f; // Reducido de 0.5f
    [SerializeField] private float minDistance = 1f;
    [SerializeField] private float occlusionSmoothness = 3f; // NUEVO: Controla qué tan suave es la transición
    [SerializeField] private float occlusionTolerance = 0.2f; // NUEVO: Tolerancia antes de activar oclusión

    // NUEVO: Variable para controlar si la rotación está bloqueada
    private bool isPlayerRotationLocked = false;

    // NUEVO: Variables para suavizar la oclusión y evitar shake
    private float targetTopRadius, targetMiddleRadius, targetBottomRadius;
    private bool isOcclusionActive = false;

    private void Start()
    {
        SwitchCameraStyle(CameraStyle.Basic);
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        // NUEVO: Inicializar valores target
        if (freeLookCam != null)
        {
            targetTopRadius = freeLookCam.m_Orbits[0].m_Radius;
            targetMiddleRadius = freeLookCam.m_Orbits[1].m_Radius;
            targetBottomRadius = freeLookCam.m_Orbits[2].m_Radius;
        }
    }

    private void Update()
    {
        HandleOrientation();
        HandlePlayerRotation();
        HandleFreeLookOcclusion();
    }

    private void HandleOrientation()
    {
        Vector3 viewDir = player.position - new Vector3(transform.position.x, player.position.y, transform.position.z);
        orientation.forward = viewDir.normalized;
    }

    private void HandlePlayerRotation()
    {
        // Si la rotación está bloqueada, no hacer nada
        if (isPlayerRotationLocked)
        {
            return;
        }

        if (currentStyle == CameraStyle.Basic && freeLookCam != null)
        {
            // MEJORADO: Rotación más suave del objeto jugador con la cámara
            float cameraYRotation = freeLookCam.m_XAxis.Value;
            Quaternion targetRotation = Quaternion.Euler(0f, cameraYRotation, 0f);

            // Verificar diferencia angular para evitar rotaciones innecesarias
            float angleDifference = Quaternion.Angle(playerObj.rotation, targetRotation);

            if (angleDifference > 2f) // Solo ajustar si hay diferencia significativa
            {
                playerObj.rotation = Quaternion.Slerp(playerObj.rotation, targetRotation, Time.deltaTime * rotationSpeed);
            }
        }
        else if (currentStyle == CameraStyle.Basic)
        {
            // Código original para cuando hay input de movimiento
            float horizontalInput = Input.GetAxis("Horizontal");
            float verticalInput = Input.GetAxis("Vertical");

            float inputMagnitude = new Vector2(horizontalInput, verticalInput).magnitude;

            if (inputMagnitude > 0.1f) // Threshold para evitar micro-movimientos
            {
                Vector3 inputDir = orientation.forward * verticalInput + orientation.right * horizontalInput;
                if (inputDir != Vector3.zero)
                {
                    Quaternion targetRotation = Quaternion.LookRotation(inputDir.normalized);
                    float angleDifference = Quaternion.Angle(playerObj.rotation, targetRotation);

                    if (angleDifference > 5f)
                    {
                        playerObj.rotation = Quaternion.Slerp(playerObj.rotation, targetRotation, Time.deltaTime * rotationSpeed);
                    }
                }
            }
        }
    }

    public void SwitchCameraStyle(CameraStyle newStyle)
    {
        dialogueCam.SetActive(false);
        thirdPersonCam.SetActive(false);

        switch (newStyle)
        {
            case CameraStyle.Basic:
                thirdPersonCam.SetActive(true);
                // DESBLOQUEAR rotación al volver a cámara normal
                isPlayerRotationLocked = false;
                Debug.Log("Rotación del personaje DESBLOQUEADA");
                break;

            case CameraStyle.Dialogue:
                dialogueCam.SetActive(true);
                // BLOQUEAR rotación al entrar en diálogo
                isPlayerRotationLocked = true;
                Debug.Log("Rotación del personaje BLOQUEADA");

                // Opcional: Configurar la cámara virtual si existe
                if (dialogueVirtualCam != null)
                {
                    dialogueVirtualCam.LookAt = dialogueLookAt;
                    dialogueVirtualCam.Follow = null;
                }
                break;
        }

        currentStyle = newStyle;
    }

    // NUEVO: Método público para que otros scripts puedan consultar el estilo de cámara actual
    public CameraStyle GetCurrentCameraStyle()
    {
        return currentStyle;
    }

    // NUEVO: Método público para consultar si la rotación está bloqueada
    public bool IsPlayerRotationLocked()
    {
        return isPlayerRotationLocked;
    }

    private void HandleFreeLookOcclusion()
    {
        if (currentStyle != CameraStyle.Basic || freeLookCam == null) return;

        Vector3 cameraPos = freeLookCam.transform.position;
        Vector3 playerPos = player.position + Vector3.up * 1.5f;
        Vector3 direction = cameraPos - playerPos;
        float currentDistance = direction.magnitude;

        // MEJORADO: Raycast más preciso con menos falsos positivos
        RaycastHit hit;
        bool hasObstacle = Physics.SphereCast(
            playerPos,
            cameraRadius,
            direction.normalized,
            out hit,
            currentDistance - occlusionTolerance, // Añadir tolerancia
            obstacleLayerMask,
            QueryTriggerInteraction.Ignore // Ignorar triggers
        );

        if (hasObstacle)
        {
            // Calcular nueva distancia con más margen
            float newDistance = Mathf.Max(hit.distance - 0.8f, minDistance);

            // NUEVO: Solo activar si no está ya activo o si la diferencia es significativa
            if (!isOcclusionActive || Mathf.Abs(targetMiddleRadius - newDistance) > 0.5f)
            {
                targetTopRadius = newDistance * 0.8f;
                targetMiddleRadius = newDistance;
                targetBottomRadius = newDistance * 1.2f;
                isOcclusionActive = true;
            }
        }
        else
        {
            // NUEVO: Solo desactivar si estaba activo
            if (isOcclusionActive)
            {
                // Volver a valores originales más suavemente
                targetTopRadius = 2.5f;
                targetMiddleRadius = 3.2f;
                targetBottomRadius = 2.3f;
                isOcclusionActive = false;
            }
        }

        // MEJORADO: Aplicar cambios de forma más suave
        float smoothSpeed = occlusionSmoothness;
        freeLookCam.m_Orbits[0].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[0].m_Radius, targetTopRadius, Time.deltaTime * smoothSpeed);
        freeLookCam.m_Orbits[1].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[1].m_Radius, targetMiddleRadius, Time.deltaTime * smoothSpeed);
        freeLookCam.m_Orbits[2].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[2].m_Radius, targetBottomRadius, Time.deltaTime * smoothSpeed);
    }
}