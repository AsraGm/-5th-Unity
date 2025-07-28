using System.Collections;
using UnityEngine;

public class SafePlayerController : MonoBehaviour
{
    [Header("Mexicanada #3 - Estado Seguro")]
    [SerializeField] private PlayerHealth playerHealth;
    [SerializeField] private MOVEPLAYER movePlayer;
    [SerializeField] private Rigidbody playerRb;
    [SerializeField] private Animator playerAnimator;
    
    [Header("Estados del Jugador")]
    public enum PlayerState
    {
        Normal,
        Ragdoll,
        Resetting,
        Dead
    }
    
    [SerializeField] private PlayerState currentState = PlayerState.Normal;
    
    [Header("Configuración")]
    [SerializeField] private float stateChangeDelay = 0.1f;
    [SerializeField] private bool debugStates = true;

    private Vector3 safePosition;
    private Quaternion safeRotation;
    private bool isStateChanging = false;

    private void Start()
    {
        // Guardar posición segura
        safePosition = transform.position;
        safeRotation = transform.rotation;
        
        // Auto-asignar componentes
        GetPlayerComponents();
        
        // Establecer estado inicial
        SetState(PlayerState.Normal);
    }

    private void GetPlayerComponents()
    {
        if (playerHealth == null) playerHealth = GetComponent<PlayerHealth>();
        if (movePlayer == null) movePlayer = GetComponent<MOVEPLAYER>();
        if (playerRb == null) playerRb = GetComponent<Rigidbody>();
        if (playerAnimator == null) playerAnimator = GetComponent<Animator>();
    }

    public void SetState(PlayerState newState)
    {
        if (isStateChanging && newState != PlayerState.Normal) return;
        
        if (currentState != newState)
        {
            if (debugStates)
                Debug.Log($"Cambiando estado: {currentState} -> {newState}");
                
            StartCoroutine(ChangeStateCoroutine(newState));
        }
    }

    private IEnumerator ChangeStateCoroutine(PlayerState newState)
    {
        isStateChanging = true;
        
        // Salir del estado actual
        yield return StartCoroutine(ExitCurrentState());
        
        // Esperar un momento entre estados
        yield return new WaitForSeconds(stateChangeDelay);
        
        // Entrar al nuevo estado
        currentState = newState;
        yield return StartCoroutine(EnterNewState(newState));
        
        isStateChanging = false;
    }

    private IEnumerator ExitCurrentState()
    {
        switch (currentState)
        {
            case PlayerState.Normal:
                // Desactivar control normal
                if (movePlayer != null)
                    movePlayer.controlActivo = false;
                break;
                
            case PlayerState.Ragdoll:
                // Desactivar ragdoll de forma segura
                yield return StartCoroutine(SafeExitRagdoll());
                break;
                
            case PlayerState.Resetting:
                // No hacer nada, ya está en proceso
                break;
                
            case PlayerState.Dead:
                // Preparar para revivir
                break;
        }
    }

    private IEnumerator EnterNewState(PlayerState newState)
    {
        switch (newState)
        {
            case PlayerState.Normal:
                yield return StartCoroutine(EnterNormalState());
                break;
                
            case PlayerState.Ragdoll:
                yield return StartCoroutine(EnterRagdollState());
                break;
                
            case PlayerState.Resetting:
                yield return StartCoroutine(EnterResettingState());
                break;
                
            case PlayerState.Dead:
                yield return StartCoroutine(EnterDeadState());
                break;
        }
    }

    private IEnumerator EnterNormalState()
    {
        // Asegurar que el Rigidbody esté configurado correctamente
        if (playerRb != null)
        {
            playerRb.isKinematic = false;
            playerRb.freezeRotation = true;
            playerRb.linearVelocity = Vector3.zero;
            playerRb.angularVelocity = Vector3.zero;
        }
        
        // Activar Animator
        if (playerAnimator != null)
        {
            playerAnimator.enabled = true;
        }
        
        // Restaurar salud si es necesario
        if (playerHealth != null && playerHealth.IsDead())
        {
            playerHealth.ResetHealth();
        }
        
        // Activar control del jugador
        if (movePlayer != null)
        {
            movePlayer.controlActivo = true;
            movePlayer.EnableControl();
        }
        
        yield return null;
    }

    private IEnumerator EnterRagdollState()
    {
        // Desactivar control inmediatamente
        if (movePlayer != null)
            movePlayer.controlActivo = false;
            
        // Activar ragdoll aquí
        // ragdollController.EnableRagdoll();
        
        yield return null;
    }

    private IEnumerator EnterResettingState()
    {
        // Proceso de reset seguro
        yield return StartCoroutine(SafeResetProcess());
        
        // Después del reset, volver al estado normal
        SetState(PlayerState.Normal);
    }

    private IEnumerator EnterDeadState()
    {
        // El jugador está muerto, activar ragdoll
        SetState(PlayerState.Ragdoll);
        
        // Después de un tiempo, resetear
        yield return new WaitForSeconds(2f);
        SetState(PlayerState.Resetting);
    }

    private IEnumerator SafeExitRagdoll()
    {
        // Desactivar ragdoll de forma segura
        // ragdollController.DisableRagdoll();
        
        // Esperar que se procese
        yield return new WaitForEndOfFrame();
        
        // Asegurar que el Rigidbody principal esté activo
        if (playerRb != null)
        {
            playerRb.isKinematic = false;
            playerRb.freezeRotation = true;
        }
    }

    private IEnumerator SafeResetProcess()
    {
        Debug.Log("=== PROCESO DE RESET SEGURO ===");
        
        // PASO 1: Asegurar que no hay ragdoll activo
        if (currentState == PlayerState.Ragdoll)
        {
            yield return StartCoroutine(SafeExitRagdoll());
        }
        
        // PASO 2: Reset físico
        if (playerRb != null)
        {
            playerRb.isKinematic = true;
            yield return new WaitForFixedUpdate();
            
            transform.position = safePosition;
            transform.rotation = safeRotation;
            
            yield return new WaitForFixedUpdate();
            
            playerRb.linearVelocity = Vector3.zero;
            playerRb.angularVelocity = Vector3.zero;
            playerRb.isKinematic = false;
            playerRb.freezeRotation = true;
        }
        
        // PASO 3: Reset del Animator
        if (playerAnimator != null)
        {
            playerAnimator.enabled = false;
            yield return new WaitForEndOfFrame();
            playerAnimator.enabled = true;
        }
        
        Debug.Log("Reset seguro completado");
    }

    // Métodos públicos para usar desde otros scripts
    public void OnPlayerDied()
    {
        SetState(PlayerState.Dead);
    }

    public void OnRagdollActivated()
    {
        SetState(PlayerState.Ragdoll);
    }

    public void ForceReset()
    {
        SetState(PlayerState.Resetting);
    }

    public bool IsInState(PlayerState state)
    {
        return currentState == state;
    }

    public PlayerState GetCurrentState()
    {
        return currentState;
    }

    // Debug
    private void OnGUI()
    {
        if (debugStates)
        {
            GUI.Label(new Rect(10, 10, 200, 20), $"Estado Actual: {currentState}");
            GUI.Label(new Rect(10, 30, 200, 20), $"Cambiando: {isStateChanging}");
        }
    }
}