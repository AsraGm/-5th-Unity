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
        else
        {
            float horizontalInput = Input.GetAxis("Horizontal");
            float verticalInput = Input.GetAxis("Vertical");
            Vector3 inputDir = orientation.forward * verticalInput + orientation.right * horizontalInput;

            if (inputDir != Vector3.zero)
                playerObj.forward = Vector3.Slerp(playerObj.forward, inputDir.normalized, Time.deltaTime * rotationSpeed);
        }
    }

    private void SwitchCameraStyle(CameraStyle newStyle)
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
}