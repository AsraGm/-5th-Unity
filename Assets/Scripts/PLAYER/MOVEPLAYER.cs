using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class MOVEPLAYER : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed;
    public float groundDrag;
    public float jumpForce;
    public float jumpCooldown;
    public float airMultiplier;

    bool readyToJump;

    [Header("Keybinds")]
    public KeyCode jumpKey = KeyCode.Space;

    [Header("Ground Check")]
    public Transform groundCheck; // Nuevo: asigna un empty child en la base del jugador
    public float groundCheckRadius = 0.3f;
    public LayerMask whatIsGround;

    bool grounded;

    public Transform orientation;

    float horizontalInput;
    float verticalInput;

    Vector3 moveDirection;

    Rigidbody rb;
    public bool controlActivo = true;

    public static bool IsColliding { get; private set; } // Para saber si el jugador está en contacto


    //// Para simular gravedad manualmente
    //private float gravity = -9.81f;
    //private float verticalVelocity = 0f;

    private void Start()
    {
        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;
        readyToJump = true;

        if (groundCheck == null)
        {
            Debug.LogError("Asigna el GroundCheck transform en el inspector.");
        }
    }

    private void Update()
    {
        Debug.Log($"Control activo: {controlActivo}");
        if (!controlActivo) return;
        // Ground check usando CheckSphere (como en el segundo script)
        grounded = Physics.CheckSphere(groundCheck.position, groundCheckRadius, whatIsGround);

        MyInput();
        SpeedControl();

        // Aplicar drag solo cuando está en tierra
        if (grounded)
            rb.linearDamping = groundDrag;
        else
            rb.linearDamping = 0;

        //// Simular gravedad para el salto (opcional, para mayor control)
        //if (grounded && verticalVelocity < 0)
        //{
        //    verticalVelocity = -2f; // Pequeña fuerza hacia abajo para mantenerlo pegado al suelo
        //}
        //else
        //{
        //    verticalVelocity += gravity * Time.deltaTime;
        //}
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
        // Resetear velocidad Y antes de saltar para evitar acumulación
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
            Gizmos.color = Color.red;
            Gizmos.DrawWireSphere(groundCheck.position, groundCheckRadius);
        }
    }
}
