using SmallHedge.SoundManager;
using Unity.Cinemachine;
using UnityEngine;

public class MOVEPLAYER : MonoBehaviour
{
    GameObject objetoDialogo;

    [Header("Camera Reference")]
    public CAMERA cameraScript;

    public Animator animator;
    [Header("Movement")]
    public float moveSpeed = 7f;
    public float groundDrag = 5f;
    public float jumpForce = 12f;
    public float jumpCooldown = 0.25f;
    public float airMultiplier = 0.4f;

    [Header("Ground Check")]
    public Transform groundCheck;
    public float groundCheckRadius = 0.3f;
    public LayerMask whatIsGround;
    public bool grounded;

    public Transform orientation;

    [Header("Player Visual Rotation (Solo para animaciones)")]
    [Tooltip("Velocidad de rotación del modelo visual del personaje")]
    public float visualRotationSpeed = 8f;
    [Tooltip("Umbral mínimo para rotar el modelo")]
    public float rotationThreshold = 0.1f;

    public CinemachineFreeLook freeLookCam;

    [Header("Footstep Sounds")]
    public SoundType walkSound = SoundType.P_Walk;
    public float footstepSpacing = 0.4f;
    private bool wasMoving = false;

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
            DialogueManager script = objetoDialogo.GetComponent<DialogueManager>();
            if (script != null)
            {
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

        if (cameraScript == null)
        {
            cameraScript = FindObjectOfType<CAMERA>();
        }

        rb = GetComponent<Rigidbody>();
        rb.freezeRotation = true;
        rb.mass = 1f;
        rb.linearDamping = 0f;

        // Configuraciones de rendimiento optimizadas
        Application.targetFrameRate = 60;
        QualitySettings.vSyncCount = 1;

        if (groundCheck == null)
        {
            Debug.LogError("Asigna el GroundCheck transform en el inspector.");
        }
    }

    private void HandlePlayerVisualRotation()
    {
        // Solo rotar el MODELO visual, no interferir con la cámara
        if (!GameManager.CanPlayerMove)
            return;

        // SOLO rotar durante diálogos o cuando la cámara lo permita
        if (cameraScript != null && cameraScript.IsPlayerRotationLocked())
        {
            return; // No rotar durante diálogos
        }

        float inputMagnitude = new Vector2(horizontalInput, verticalInput).magnitude;

        if (inputMagnitude > rotationThreshold)
        {
            // Usar la dirección de movimiento para rotar SOLO el modelo
            Vector3 moveDir = moveDirection.normalized;

            if (moveDir != Vector3.zero)
            {
                Quaternion targetRotation = Quaternion.LookRotation(moveDir);
                float angleDifference = Quaternion.Angle(transform.rotation, targetRotation);

                if (angleDifference > 10f) // Umbral más alto para evitar micro-rotaciones
                {
                    // ROTACIÓN MUY SUAVE del modelo
                    transform.rotation = Quaternion.Slerp(transform.rotation, targetRotation, Time.deltaTime * visualRotationSpeed);
                }
            }
        }
    }

    private void Update()
    {
        bool isDialogueActive = objetoDialogo.GetComponent<DialogueManager>().isDialogueActive;
        animator.SetBool("Dialogo", isDialogueActive);

        if (!GameManager.CanPlayerMove || isDialogueActive)
        {
            animator.SetFloat("Speed", 0f);
            animator.SetBool("MoveKey", false);

            SoundManager.StopLoopingSound(walkSound);
            wasMoving = false;

            if (rb != null && isDialogueActive)
            {
                rb.linearVelocity = new Vector3(0, rb.linearVelocity.y, 0);
            }
            return;
        }

        if (!controlActivo)
        {
            SoundManager.StopLoopingSound(walkSound);
            wasMoving = false;
            return;
        }

        grounded = Physics.CheckSphere(groundCheck.position, groundCheckRadius, whatIsGround);
        MyInput();
        SpeedControl();
        HandlePlayerVisualRotation(); // RENOMBRADO y optimizado

        rb.linearDamping = grounded ? groundDrag : 0;

        bool isMoving = (horizontalInput != 0 || verticalInput != 0) && grounded;
        animator.SetBool("MoveKey", isMoving);

        // Actualizar animator con velocidad suavizada
        float currentSpeed = isMoving ? 1f : 0f;
        animator.SetFloat("Speed", Mathf.Lerp(animator.GetFloat("Speed"), currentSpeed, Time.deltaTime * 5f));

        // Lógica de sonido mejorada
        if (isMoving && !wasMoving && grounded)
        {
            SoundManager.PlayLoopingSound(walkSound, footstepSpacing);
        }
        else if (!isMoving && wasMoving)
        {
            SoundManager.StopLoopingSound(walkSound);
        }
        else if (!grounded && wasMoving)
        {
            SoundManager.StopLoopingSound(walkSound);
        }

        wasMoving = isMoving;
    }

    public void PlayFootstepSound()
    {
        if (grounded && (horizontalInput != 0 || verticalInput != 0))
        {
            SoundManager.PlaySound(walkSound, null, 1f);
        }
    }

    private void OnDestroy()
    {
        SoundManager.StopLoopingSound(walkSound);
    }

    private void OnDisable()
    {
        SoundManager.StopLoopingSound(walkSound);
    }

    private void FixedUpdate()
    {
        if (!GameManager.CanPlayerMove)
            return;

        if (controlActivo)
        {
            MovePlayer();
        }
    }

    private void MyInput()
    {
        horizontalInput = Input.GetAxisRaw("Horizontal");
        verticalInput = Input.GetAxisRaw("Vertical");
    }

    private void MovePlayer()
    {
        // Dirección basada en la orientación de la cámara (sin conflictos)
        moveDirection = orientation.forward * verticalInput + orientation.right * horizontalInput;
        moveDirection = moveDirection.normalized;

        // Aplicar movimiento suave
        if (grounded)
            rb.AddForce(moveDirection * moveSpeed * 10f, ForceMode.Force);
        else
            rb.AddForce(moveDirection * moveSpeed * 10f * airMultiplier, ForceMode.Force);
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