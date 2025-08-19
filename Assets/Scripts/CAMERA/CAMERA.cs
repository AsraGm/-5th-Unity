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
    [SerializeField] private float cameraRadius = 0.2f; // Reducido aún más
    [SerializeField] private float minDistance = 1f;
    [SerializeField] private float occlusionSmoothness = 2f; // MÁS SUAVE
    [SerializeField] private float occlusionTolerance = 0.5f; // MAYOR tolerancia

    // NUEVO: Variable para controlar si la rotación está bloqueada
    private bool isPlayerRotationLocked = false;

    // MEJORADO: Variables para evitar shake de oclusión
    private float targetTopRadius, targetMiddleRadius, targetBottomRadius;
    private bool isOcclusionActive = false;
    private float occlusionCooldown = 0f; // Cooldown para evitar cambios constantes

    // NUEVO: Valores originales de la cámara para restaurar
    private float originalTopRadius = 2.5f;
    private float originalMiddleRadius = 3.2f;
    private float originalBottomRadius = 2.3f;

    private void Start()
    {
        SwitchCameraStyle(CameraStyle.Basic);
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;

        // Guardar valores originales de la cámara
        if (freeLookCam != null)
        {
            originalTopRadius = freeLookCam.m_Orbits[0].m_Radius;
            originalMiddleRadius = freeLookCam.m_Orbits[1].m_Radius;
            originalBottomRadius = freeLookCam.m_Orbits[2].m_Radius;

            targetTopRadius = originalTopRadius;
            targetMiddleRadius = originalMiddleRadius;
            targetBottomRadius = originalBottomRadius;

            // IMPORTANTE: Configurar damping para suavidad
            freeLookCam.m_XAxis.m_MaxSpeed = 200f; // Velocidad horizontal
            freeLookCam.m_YAxis.m_MaxSpeed = 2f;   // Velocidad vertical

            // Añadir damping para eliminar shake
            freeLookCam.m_XAxis.m_AccelTime = 0.2f;
            freeLookCam.m_XAxis.m_DecelTime = 0.2f;
            freeLookCam.m_YAxis.m_AccelTime = 0.3f;
            freeLookCam.m_YAxis.m_DecelTime = 0.3f;
        }
    }

    private void Update()
    {
        HandleOrientation();
        // REMOVIDO: HandlePlayerRotation() - Que Cinemachine se encargue completamente
        HandleFreeLookOcclusion();

        // Reducir cooldown
        if (occlusionCooldown > 0)
            occlusionCooldown -= Time.deltaTime;
    }

    private void HandleOrientation()
    {
        // Solo actualizar orientation para el input de movimiento
        Vector3 viewDir = player.position - new Vector3(transform.position.x, player.position.y, transform.position.z);
        orientation.forward = viewDir.normalized;
    }

    // MÉTODO ELIMINADO: HandlePlayerRotation() 
    // Ahora la cámara FreeLook controla completamente la rotación

    public void SwitchCameraStyle(CameraStyle newStyle)
    {
        dialogueCam.SetActive(false);
        thirdPersonCam.SetActive(false);

        switch (newStyle)
        {
            case CameraStyle.Basic:
                thirdPersonCam.SetActive(true);
                isPlayerRotationLocked = false;
                Debug.Log("Cámara Basic activada - FreeLook tiene control total");
                break;

            case CameraStyle.Dialogue:
                dialogueCam.SetActive(true);
                isPlayerRotationLocked = true;
                Debug.Log("Cámara de diálogo activada");

                if (dialogueVirtualCam != null)
                {
                    dialogueVirtualCam.LookAt = dialogueLookAt;
                    dialogueVirtualCam.Follow = null;
                }
                break;
        }

        currentStyle = newStyle;
    }

    public CameraStyle GetCurrentCameraStyle()
    {
        return currentStyle;
    }

    public bool IsPlayerRotationLocked()
    {
        return isPlayerRotationLocked;
    }

    private void HandleFreeLookOcclusion()
    {
        if (currentStyle != CameraStyle.Basic || freeLookCam == null) return;

        // Solo procesar si no hay cooldown activo
        if (occlusionCooldown > 0) return;

        Vector3 cameraPos = freeLookCam.transform.position;
        Vector3 playerPos = player.position + Vector3.up * 1.5f;
        Vector3 direction = cameraPos - playerPos;
        float currentDistance = direction.magnitude;

        // Raycast más estable
        RaycastHit hit;
        bool hasObstacle = Physics.SphereCast(
            playerPos,
            cameraRadius,
            direction.normalized,
            out hit,
            currentDistance - occlusionTolerance,
            obstacleLayerMask,
            QueryTriggerInteraction.Ignore
        );

        if (hasObstacle && !isOcclusionActive)
        {
            // Activar oclusión solo si realmente es necesario
            float newDistance = Mathf.Max(hit.distance - 1.0f, minDistance);

            targetTopRadius = newDistance * 0.7f;
            targetMiddleRadius = newDistance;
            targetBottomRadius = newDistance * 1.3f;
            isOcclusionActive = true;
            occlusionCooldown = 0.5f; // Cooldown para evitar cambios constantes
        }
        else if (!hasObstacle && isOcclusionActive)
        {
            // Restaurar valores originales
            targetTopRadius = originalTopRadius;
            targetMiddleRadius = originalMiddleRadius;
            targetBottomRadius = originalBottomRadius;
            isOcclusionActive = false;
            occlusionCooldown = 0.3f;
        }

        // Aplicar cambios de forma MUY suave para eliminar shake
        float smoothSpeed = occlusionSmoothness;
        freeLookCam.m_Orbits[0].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[0].m_Radius, targetTopRadius, Time.deltaTime * smoothSpeed);
        freeLookCam.m_Orbits[1].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[1].m_Radius, targetMiddleRadius, Time.deltaTime * smoothSpeed);
        freeLookCam.m_Orbits[2].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[2].m_Radius, targetBottomRadius, Time.deltaTime * smoothSpeed);
    }
}