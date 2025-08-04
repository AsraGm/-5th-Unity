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
    [SerializeField] private float rotationSpeed = 5f;

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
    [SerializeField] private float cameraRadius = 0.5f;
    [SerializeField] private float minDistance = 1f;

    private void Start()
    {
        SwitchCameraStyle(CameraStyle.Basic);
        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    private void Update()
    {
        HandleCameraSwitching();
        HandleOrientation();
        HandlePlayerRotation();
        HandleFreeLookOcclusion();
    }

    private void HandleCameraSwitching()
    {
        if (Input.GetKeyDown(KeyCode.Alpha1)) SwitchCameraStyle(CameraStyle.Basic);
        if (Input.GetKeyDown(KeyCode.Alpha2)) SwitchCameraStyle(CameraStyle.Dialogue);
    }

    private void HandleOrientation()
    {
        Vector3 viewDir = player.position - new Vector3(transform.position.x, player.position.y, transform.position.z);
        orientation.forward = viewDir.normalized;
    }

    private void HandlePlayerRotation()
    {
        if (currentStyle == CameraStyle.Dialogue)
        {
            Vector3 dirToDialogueLookAt = dialogueLookAt.position - new Vector3(transform.position.x, dialogueLookAt.position.y, transform.position.z);
            playerObj.forward = dirToDialogueLookAt.normalized;
        }
        else if (currentStyle == CameraStyle.Basic && freeLookCam != null)
        {
            // NUEVO: Rotar el personaje con la cámara
            float cameraYRotation = freeLookCam.m_XAxis.Value;
            Quaternion targetRotation = Quaternion.Euler(0f, cameraYRotation, 0f);
            playerObj.rotation = Quaternion.Slerp(playerObj.rotation, targetRotation, Time.deltaTime * rotationSpeed);
        }
        else
        {
            // Código original para cuando hay input de movimiento
            float horizontalInput = Input.GetAxis("Horizontal");
            float verticalInput = Input.GetAxis("Vertical");
            Vector3 inputDir = orientation.forward * verticalInput + orientation.right * horizontalInput;

            if (inputDir != Vector3.zero)
                playerObj.forward = Vector3.Slerp(playerObj.forward, inputDir.normalized, Time.deltaTime * rotationSpeed);
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
                break;
            case CameraStyle.Dialogue:
                dialogueCam.SetActive(true);
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

    private void HandleFreeLookOcclusion()
    {
        if (currentStyle != CameraStyle.Basic || freeLookCam == null) return;

        Vector3 cameraPos = freeLookCam.transform.position;
        Vector3 playerPos = player.position + Vector3.up * 1.5f;

        Vector3 direction = cameraPos - playerPos;
        float currentDistance = direction.magnitude;

        // Primer raycast: desde jugador hacia cámara
        if (Physics.SphereCast(playerPos, cameraRadius, direction.normalized, out RaycastHit hit, currentDistance, obstacleLayerMask))
        {
            float newDistance = Mathf.Max(hit.distance - 1.2f, minDistance); // Más margen

            // Segundo raycast: verificar que la nueva posición no atraviese nada
            Vector3 newCameraPos = playerPos + direction.normalized * newDistance;
            if (Physics.SphereCast(newCameraPos, cameraRadius, -direction.normalized, out RaycastHit backHit, 0.5f, obstacleLayerMask))
            {
                newDistance = Mathf.Max(newDistance - 0.8f, minDistance);
            }

            freeLookCam.m_Orbits[0].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[0].m_Radius, newDistance * 0.8f, Time.deltaTime * 5f);
            freeLookCam.m_Orbits[1].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[1].m_Radius, newDistance, Time.deltaTime * 5f);
            freeLookCam.m_Orbits[2].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[2].m_Radius, newDistance * 1.2f, Time.deltaTime * 5f);
        }
        else
        {
            freeLookCam.m_Orbits[0].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[0].m_Radius, 2.75f, Time.deltaTime * 2f);
            freeLookCam.m_Orbits[1].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[1].m_Radius, 3.69f, Time.deltaTime * 2f);
            freeLookCam.m_Orbits[2].m_Radius = Mathf.Lerp(freeLookCam.m_Orbits[2].m_Radius, 2.79f, Time.deltaTime * 2f);
        }
    }
}