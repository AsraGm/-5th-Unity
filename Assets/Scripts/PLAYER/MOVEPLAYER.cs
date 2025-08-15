using System.Collections;
using System.Collections.Generic;
using Unity.Cinemachine;
using UnityEditor;
using UnityEngine;

public class MOVEPLAYER : MonoBehaviour
{
    GameObject objetoDialogo;

    // NUEVA REFERENCIA: Necesitamos acceso al script de la cámara
    [Header("Camera Reference")]
    public CAMERA cameraScript;

    public Animator animator;       // Asigna el Animator desde el inspector     
    [Header("Movement")]
    public float moveSpeed = 7f;
    public float groundDrag = 5f;
    public float jumpForce = 12f;
    public float jumpCooldown = 0.25f;
    public float airMultiplier = 0.4f;
    bool readyToJump;

    [Header("Keybinds")]
    public KeyCode jumpKey = KeyCode.Space;

    [Header("Ground Check")]
    public Transform groundCheck;
    public float groundCheckRadius = 0.3f;
    public LayerMask whatIsGround;
    public bool grounded;

    public Transform orientation;

    [Header("Rotation")]
    public float rotationSpeed = 5f;
    [Header("Smooth Rotation Settings")]
    [Tooltip("Velocidad de rotación más suave para evitar cortes")]
    public float smoothRotationSpeed = 8f;
    [Tooltip("Umbral mínimo de movimiento para rotar")]
    public float rotationThreshold = 0.1f;
    public CinemachineFreeLook freeLookCam;

    float horizontalInput;
    float verticalInput;

    Vector3 moveDirection;
    Rigidbody rb;
    public bool controlActivo = true;
    public static bool IsColliding { get; private set; }

    private void Start()
    {
        objetoDialogo = GameObject.Find("DialogueManager");
        if (objetoDialogo != null)
        {
            // Obtener el script del objeto
            DialogueManager script = objetoDialogo.GetComponent<DialogueManager>();

            if (script != null)
            {
                // Obtener el valor del bool
                bool valor = script.isDialogueActive;
                Debug.Log("Valor del bool: " + valor);
            }
            else
            {
                Debug.LogWarning("No se encontró el script en el objeto.");
            }
        }
        else
        {
            Debug.LogWarning("No se encontró el objeto con ese nombre.");
        }

        // Si no se asignó manualmente, buscar el script de cámara
        if (cameraScript == null)
        {
            cameraScript = FindObjectOfType<CAMERA>();
        }

        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;
        readyToJump = true;
        rb.mass = 1f;
        rb.linearDamping = 0f;

        // Configuraciones de rendimiento
        Application.targetFrameRate = 60; // Cambiado de 1000 a 60
        QualitySettings.vSyncCount = 1; // Habilita VSync

        if (groundCheck == null)
        {
            Debug.LogError("Asigna el GroundCheck transform en el inspector.");
        }
    }

    private void HandlePlayerRotation()
    {
        // Verificar si la rotación está bloqueada desde el script de cámara
        if (cameraScript != null && cameraScript.IsPlayerRotationLocked())
        {
            // Rotación BLOQUEADA - no hacer nada
            return;
        }

        // MEJORADO: Rotación más suave con threshold
        float inputMagnitude = new Vector2(horizontalInput, verticalInput).magnitude;

        if (inputMagnitude > rotationThreshold)
        {
            // Usar la misma dirección que se usa para mover el personaje
            Vector3 moveDir = moveDirection.normalized;

            if (moveDir != Vector3.zero)
            {
                // Calcular la rotación objetivo
                Quaternion targetRotation = Quaternion.LookRotation(moveDir);

                // Verificar si la diferencia angular es significativa para evitar micro-rotaciones
                float angleDifference = Quaternion.Angle(transform.rotation, targetRotation);

                if (angleDifference > 5f) // Solo rotar si hay una diferencia significativa
                {
                    // Rotación MÁS SUAVE para evitar cortes
                    transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * smoothRotationSpeed);
                }
            }
        }

        // Si no hay input significativo, mantener la rotación actual (sin micro-ajustes)
    }

    private void Update()
    {
        animator.SetBool("Dialogo", objetoDialogo.GetComponent<DialogueManager>().isDialogueActive);
        if (!controlActivo) return;

        // Ground check
        grounded = Physics.CheckSphere(groundCheck.position, groundCheckRadius, whatIsGround);

        MyInput();
        SpeedControl();
        HandlePlayerRotation();

        // Aplicar drag
        rb.linearDamping = grounded ? groundDrag : 0;

        // Tomar la velocidad actual del rigidbody
        Vector3 horizontalVelocity = new Vector3(rb.linearVelocity.x, 0f, rb.linearVelocity.z);

        // Magnitud horizontal (en metros/segundo)
        float horizontalSpeed = horizontalVelocity.magnitude;

        // Pasar la velocidad al Animator
        animator.SetFloat("Speed", horizontalSpeed);
        bool isMoving = (horizontalInput != 0 || verticalInput != 0);
        animator.SetBool("MoveKey", isMoving);
    }

    private void FixedUpdate()
    {
        if (controlActivo)
        {
            MovePlayer();
        }
    }

    private void MyInput()
    {
        horizontalInput = Input.GetAxisRaw("Horizontal");
        verticalInput = Input.GetAxisRaw("Vertical");

        // Jump input
        if (Input.GetKeyDown(jumpKey) && readyToJump && grounded)
        {
            readyToJump = false;
            Jump();
            Invoke(nameof(ResetJump), jumpCooldown);
        }
    }

    private void MovePlayer()
    {
        moveDirection = orientation.forward * verticalInput + orientation.right * horizontalInput;
        moveDirection = moveDirection.normalized;

        // Aplicar fuerza con mejor control
        if (grounded)
            rb.AddForce(moveDirection.normalized * moveSpeed * 10f, ForceMode.Force);
        else
            rb.AddForce(moveDirection.normalized * moveSpeed * 10f * airMultiplier, ForceMode.Force);
    }

    private void SpeedControl()
    {
        Vector3 flatVel = new Vector3(rb.linearVelocity.x, 0f, rb.linearVelocity.z);

        if (flatVel.magnitude > moveSpeed)
        {
            Vector3 limitedVel = flatVel.normalized * moveSpeed;
            rb.linearVelocity = new Vector3(limitedVel.x, rb.linearVelocity.y, limitedVel.z);
        }
    }

    private void Jump()
    {
        // Reset Y velocity antes de saltar
        Vector3 vel = rb.linearVelocity;
        vel.y = 0f;
        rb.linearVelocity = vel;

        rb.AddForce(Vector3.up * jumpForce, ForceMode.Impulse);
    }

    private void ResetJump()
    {
        readyToJump = true;
    }

    public void EnableControl()
    {
        controlActivo = true;
        Debug.Log("Control activado manualmente");
    }

    private void OnDrawGizmosSelected()
    {
        if (groundCheck != null)
        {
            Gizmos.color = grounded ? Color.green : Color.red;
            Gizmos.DrawWireSphere(groundCheck.position, groundCheckRadius);
        }
    }
}