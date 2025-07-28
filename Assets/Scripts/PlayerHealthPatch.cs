using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayerHealthPatch : MonoBehaviour
{
    [Header("Referencias")]
    [SerializeField] private PlayerHealth originalPlayerHealth;
    [SerializeField] private MOVEPLAYER movePlayer;
    [SerializeField] private Rigidbody playerRb;
    [SerializeField] private Animator playerAnimator;
    
    [Header("Mexicanada #1 - Reset Bruto")]
    [SerializeField] private float resetDelay = 0.2f;
    [SerializeField] private bool useAggressiveReset = true;

    private Vector3 originalPosition;
    private Quaternion originalRotation;

    private void Start()
    {
        // Guardar posición inicial
        originalPosition = transform.position;
        originalRotation = transform.rotation;
        
        // Obtener componentes automáticamente si no están asignados
        if (originalPlayerHealth == null)
            originalPlayerHealth = GetComponent<PlayerHealth>();
        if (movePlayer == null)
            movePlayer = GetComponent<MOVEPLAYER>();
        if (playerRb == null)
            playerRb = GetComponent<Rigidbody>();
        if (playerAnimator == null)
            playerAnimator = GetComponent<Animator>();
    }

    public void ExecuteAggressiveReset()
    {
        if (useAggressiveReset)
        {
            StartCoroutine(BrutalResetCoroutine());
        }
    }

    private IEnumerator BrutalResetCoroutine()
    {
        Debug.Log("=== INICIANDO RESET BRUTO ===");

        // PASO 1: Desactivar TODO temporalmente
        if (movePlayer != null)
            movePlayer.controlActivo = false;

        // PASO 2: Forzar kinematic en Rigidbody
        if (playerRb != null)
        {
            playerRb.isKinematic = true;
            playerRb.linearVelocity = Vector3.zero;
            playerRb.angularVelocity = Vector3.zero;
        }

        // PASO 3: Desactivar el GameObject completo por un frame
        gameObject.SetActive(false);
        yield return new WaitForEndOfFrame();
        gameObject.SetActive(true);
        yield return new WaitForEndOfFrame();

        // PASO 4: Restaurar posición de forma brutal
        transform.position = originalPosition;
        transform.rotation = originalRotation;

        // PASO 5: Restaurar Rigidbody
        if (playerRb != null)
        {
            playerRb.isKinematic = false;
            playerRb.freezeRotation = true;
            yield return new WaitForFixedUpdate();
        }

        // PASO 6: Resetear Animator
        if (playerAnimator != null)
        {
            playerAnimator.enabled = false;
            yield return new WaitForEndOfFrame();
            playerAnimator.enabled = true;
        }

        // PASO 7: Restaurar salud
        if (originalPlayerHealth != null)
        {
            originalPlayerHealth.ResetHealth();
        }

        // PASO 8: Reactivar control después de un delay
        yield return new WaitForSeconds(resetDelay);
        
        if (movePlayer != null)
        {
            movePlayer.controlActivo = true;
            movePlayer.EnableControl();
        }

        Debug.Log("=== RESET BRUTO COMPLETADO ===");
    }

    // Método público para llamar desde otros scripts
    public void ForceCompleteReset()
    {
        ExecuteAggressiveReset();
    }
}