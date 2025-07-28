using System.Collections;
using UnityEngine;

public class RagdollResetManager : MonoBehaviour
{
    [Header("Mexicanada #2 - Delay Inteligente")]
    [SerializeField] private PlayerHealth playerHealth;
    [SerializeField] private MOVEPLAYER movePlayer;
    [SerializeField] private Rigidbody playerRb;
    [SerializeField] private float ragdollToResetDelay = 1f;
    [SerializeField] private float postResetDelay = 0.5f;
    
    [Header("Estado del Sistema")]
    [SerializeField] private bool isResetting = false;
    [SerializeField] private bool ragdollActive = false;

    private Vector3 spawnPosition;
    private Quaternion spawnRotation;

    private void Start()
    {
        // Guardar spawn point
        spawnPosition = transform.position;
        spawnRotation = transform.rotation;
        
        // Auto-asignar componentes
        if (playerHealth == null) playerHealth = GetComponent<PlayerHealth>();
        if (movePlayer == null) movePlayer = GetComponent<MOVEPLAYER>();
        if (playerRb == null) playerRb = GetComponent<Rigidbody>();
    }

    public void OnRagdollActivated()
    {
        ragdollActive = true;
        Debug.Log("Ragdoll activado - iniciando secuencia temporal");
        
        // Desactivar control inmediatamente
        if (movePlayer != null)
            movePlayer.controlActivo = false;
            
        StartCoroutine(SmartResetSequence());
    }

    private IEnumerator SmartResetSequence()
    {
        if (isResetting) yield break;
        
        isResetting = true;
        
        Debug.Log("=== INICIANDO SECUENCIA INTELIGENTE ===");
        
        // FASE 1: Esperar que el ragdoll "se asiente"
        yield return new WaitForSeconds(ragdollToResetDelay);
        
        // FASE 2: Preparar para el reset
        Debug.Log("Preparando reset...");
        
        // FASE 3: Reset suave del ragdoll
        if (ragdollActive)
        {
            yield return StartCoroutine(SoftRagdollDisable());
        }
        
        // FASE 4: Reset posicional
        yield return StartCoroutine(SmoothPositionReset());
        
        // FASE 5: Reactivar sistemas
        yield return StartCoroutine(ReactivateSystems());
        
        isResetting = false;
        ragdollActive = false;
        
        Debug.Log("=== SECUENCIA COMPLETADA ===");
    }

    private IEnumerator SoftRagdollDisable()
    {
        Debug.Log("Desactivando ragdoll suavemente...");
        
        // Aquí deberías llamar a tu RagdollController
        // ragdollController.DisableRagdoll();
        
        // Esperar un frame para que se procese
        yield return new WaitForEndOfFrame();
        
        // Verificar que el Rigidbody principal esté activo
        if (playerRb != null)
        {
            playerRb.isKinematic = false;
            playerRb.linearVelocity = Vector3.zero;
            playerRb.angularVelocity = Vector3.zero;
            playerRb.freezeRotation = true;
        }
    }

    private IEnumerator SmoothPositionReset()
    {
        Debug.Log("Reseteando posición...");
        
        // Reset suave de posición (no teleport brusco)
        float resetTime = 0.3f;
        float elapsed = 0f;
        
        Vector3 startPos = transform.position;
        Quaternion startRot = transform.rotation;
        
        while (elapsed < resetTime)
        {
            elapsed += Time.deltaTime;
            float progress = elapsed / resetTime;
            
            transform.position = Vector3.Lerp(startPos, spawnPosition, progress);
            transform.rotation = Quaternion.Lerp(startRot, spawnRotation, progress);
            
            yield return null;
        }
        
        // Asegurar posición final exacta
        transform.position = spawnPosition;
        transform.rotation = spawnRotation;
    }

    private IEnumerator ReactivateSystems()
    {
        Debug.Log("Reactivando sistemas...");
        
        // Reset de salud
        if (playerHealth != null)
        {
            playerHealth.ResetHealth();
        }
        
        // Esperar un momento antes de reactivar control
        yield return new WaitForSeconds(postResetDelay);
        
        // Reactivar control del jugador
        if (movePlayer != null)
        {
            movePlayer.controlActivo = true;
            movePlayer.EnableControl();
        }
        
        Debug.Log("¡Control reactivado!");
    }

    // Método para usar desde PlayerHealth
    public void TriggerSmartReset()
    {
        OnRagdollActivated();
    }

    // Método de emergencia
    [ContextMenu("Force Emergency Reset")]
    public void EmergencyReset()
    {
        StopAllCoroutines();
        
        transform.position = spawnPosition;
        transform.rotation = spawnRotation;
        
        if (playerRb != null)
        {
            playerRb.isKinematic = false;
            playerRb.linearVelocity = Vector3.zero;
            playerRb.angularVelocity = Vector3.zero;
            playerRb.freezeRotation = true;
        }
        
        if (playerHealth != null)
            playerHealth.ResetHealth();
            
        if (movePlayer != null)
        {
            movePlayer.controlActivo = true;
            movePlayer.EnableControl();
        }
        
        isResetting = false;
        ragdollActive = false;
        
        Debug.Log("RESET DE EMERGENCIA EJECUTADO");
    }
}