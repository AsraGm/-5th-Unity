using System.Collections;
using System.Collections.Generic;
using Unity.Cinemachine;
using UnityEngine;

public class MOVEPLAYER : MonoBehaviour
{
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
    bool grounded;

    public Transform orientation;

    [Header("Rotation")]
    public float rotationSpeed = 5f;
    public CinemachineFreeLook freeLookCam;

    float horizontalInput;
    float verticalInput;

    Vector3 moveDirection;
    Rigidbody rb;
    public bool controlActivo = true;
    public static bool IsColliding { get; private set; }

    private void Start()
    {
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
        if (freeLookCam != null)
        {
            // Rotar el personaje con la cámara
            float cameraYRotation = freeLookCam.m_XAxis.Value;
            Quaternion targetRotation = Quaternion.Euler(0f, cameraYRotation, 0f);
            transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * rotationSpeed);
        }
        else
        {
            // Código original para cuando hay input de movimiento
            if (moveDirection != Vector3.zero)
            {
                transform.forward = Vector3.Slerp(transform.forward, moveDirection.normalized, Time.deltaTime * rotationSpeed);
            }
        }
    }
    private void Update()
    {
        if (!controlActivo) return;

        // Ground check
        grounded = Physics.CheckSphere(groundCheck.position, groundCheckRadius, whatIsGround);

        MyInput();
        SpeedControl();
        HandlePlayerRotation();

        // Aplicar drag
        rb.linearDamping = grounded ? groundDrag : 0;
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