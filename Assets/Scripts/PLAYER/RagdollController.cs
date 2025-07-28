using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RagdollController : MonoBehaviour
{
    [Header("Ragdoll Components")]
    [SerializeField] private Animator animator;
    [SerializeField] private Rigidbody mainRigidbody;
    [SerializeField] private Collider mainCollider;

    [Header("Ragdoll Settings")]
    [SerializeField] private float ragdollForce = 300f;
    [SerializeField] private bool enableRagdollOnStart = false;

    // Arrays para almacenar componentes del ragdoll
    private Rigidbody[] ragdollRigidbodies;
    private Collider[] ragdollColliders;
    private CharacterJoint[] ragdollJoints;

    // Estado actual
    private bool isRagdollActive = false;

    private void Awake()
    {
        // Obtener referencias automáticamente si no están asignadas
        if (animator == null)
            animator = GetComponent<Animator>();

        if (mainRigidbody == null)
            mainRigidbody = GetComponent<Rigidbody>();

        if (mainCollider == null)
            mainCollider = GetComponent<Collider>();

        // Encontrar todos los rigidbodies del ragdoll (excluyendo el principal)
        Rigidbody[] allRigidbodies = GetComponentsInChildren<Rigidbody>();
        List<Rigidbody> ragdollRbList = new List<Rigidbody>();

        foreach (Rigidbody rb in allRigidbodies)
        {
            if (rb != mainRigidbody) // Excluir el rigidbody principal
            {
                ragdollRbList.Add(rb);
            }
        }
        ragdollRigidbodies = ragdollRbList.ToArray();

        // Encontrar todos los colliders del ragdoll (excluyendo el principal)
        Collider[] allColliders = GetComponentsInChildren<Collider>();
        List<Collider> ragdollColList = new List<Collider>();

        foreach (Collider col in allColliders)
        {
            if (col != mainCollider) // Excluir el collider principal
            {
                ragdollColList.Add(col);
            }
        }
        ragdollColliders = ragdollColList.ToArray();

        // Encontrar todas las articulaciones
        ragdollJoints = GetComponentsInChildren<CharacterJoint>();

        Debug.Log($"Ragdoll inicializado: {ragdollRigidbodies.Length} rigidbodies, {ragdollColliders.Length} colliders, {ragdollJoints.Length} joints");
    }

    private void Start()
    {
        // SIEMPRE inicializar en modo animator (normal)
        // Forzar desactivación del ragdoll al inicio
        DisableRagdollImmediate();

        // Solo activar ragdoll si está marcado en enableRagdollOnStart
        if (enableRagdollOnStart)
        {
            EnableRagdoll();
        }
    }

    private void DisableRagdollImmediate()
    {
        // Asegurar que el animator esté activo
        if (animator != null)
        {
            animator.enabled = true;
        }

        // Asegurar que rigidbody y collider principales estén activos
        if (mainRigidbody != null)
        {
            mainRigidbody.isKinematic = false;
            mainRigidbody.linearVelocity = Vector3.zero;
            mainRigidbody.angularVelocity = Vector3.zero;
        }

        if (mainCollider != null)
        {
            mainCollider.enabled = true;
        }

        // Desactivar completamente la física del ragdoll
        foreach (Rigidbody rb in ragdollRigidbodies)
        {
            if (rb != null)
            {
                rb.isKinematic = true;
                rb.linearVelocity = Vector3.zero;
                rb.angularVelocity = Vector3.zero;
                rb.detectCollisions = false;
            }
        }

        foreach (Collider col in ragdollColliders)
        {
            if (col != null)
            {
                col.enabled = false;
            }
        }

        // Asegurar que el control esté activo
        MOVEPLAYER moveScript = GetComponent<MOVEPLAYER>();
        if (moveScript != null)
        {
            moveScript.controlActivo = true;
        }

        isRagdollActive = false;
        Debug.Log("Ragdoll desactivado - Modo animator iniciado");
    }

    public void EnableRagdoll()
    {
        if (isRagdollActive) return;

        isRagdollActive = true;

        // Desactivar animator
        if (animator != null)
        {
            animator.enabled = false;
        }

        // Desactivar rigidbody y collider principales
        if (mainRigidbody != null)
        {
            mainRigidbody.isKinematic = true;
        }

        if (mainCollider != null)
        {
            mainCollider.enabled = false;
        }

        // Activar física del ragdoll
        foreach (Rigidbody rb in ragdollRigidbodies)
        {
            if (rb != null)
            {
                rb.isKinematic = false;
                rb.detectCollisions = true;
            }
        }

        foreach (Collider col in ragdollColliders)
        {
            if (col != null)
            {
                col.enabled = true;
            }
        }

        // Desactivar control del jugador
        MOVEPLAYER moveScript = GetComponent<MOVEPLAYER>();
        if (moveScript != null)
        {
            moveScript.controlActivo = false;
        }

        Debug.Log("Ragdoll activado");
    }

    public void EnableAnimator()
    {
        isRagdollActive = false;

        // Reactivar animator
        if (animator != null)
        {
            animator.enabled = true;
        }

        // Reactivar rigidbody y collider principales
        if (mainRigidbody != null)
        {
            mainRigidbody.isKinematic = false;
            mainRigidbody.linearVelocity = Vector3.zero;
            mainRigidbody.angularVelocity = Vector3.zero;
        }

        if (mainCollider != null)
        {
            mainCollider.enabled = true;
        }

        // Desactivar física del ragdoll
        foreach (Rigidbody rb in ragdollRigidbodies)
        {
            if (rb != null)
            {
                rb.isKinematic = true;
                rb.linearVelocity = Vector3.zero;
                rb.angularVelocity = Vector3.zero;
                rb.detectCollisions = false; // IMPORTANTE: desactivar detección de colisiones
            }
        }

        foreach (Collider col in ragdollColliders)
        {
            if (col != null)
            {
                col.enabled = false;
            }
        }

        // Reactivar control del jugador
        MOVEPLAYER moveScript = GetComponent<MOVEPLAYER>();
        if (moveScript != null)
        {
            moveScript.controlActivo = true;
        }

        Debug.Log("Animator reactivado - Ragdoll desactivado completamente");
    }

    public void ApplyRagdollForce(Vector3 force, Vector3 position)
    {
        if (!isRagdollActive) return;

        // Aplicar fuerza al rigidbody más cercano a la posición
        Rigidbody closestRb = null;
        float closestDistance = float.MaxValue;

        foreach (Rigidbody rb in ragdollRigidbodies)
        {
            if (rb != null)
            {
                float distance = Vector3.Distance(rb.transform.position, position);
                if (distance < closestDistance)
                {
                    closestDistance = distance;
                    closestRb = rb;
                }
            }
        }

        if (closestRb != null)
        {
            closestRb.AddForceAtPosition(force * ragdollForce, position, ForceMode.Force);
        }
    }

    public void ApplyExplosionForce(float explosionForce, Vector3 explosionPosition, float explosionRadius)
    {
        if (!isRagdollActive) return;

        foreach (Rigidbody rb in ragdollRigidbodies)
        {
            if (rb != null)
            {
                rb.AddExplosionForce(explosionForce, explosionPosition, explosionRadius);
            }
        }
    }

    // Métodos de utilidad
    public bool IsRagdollActive()
    {
        return isRagdollActive;
    }

    public void SetRagdollState(bool active)
    {
        if (active)
        {
            EnableRagdoll();
        }
        else
        {
            EnableAnimator();
        }
    }

    // Para debug
    [ContextMenu("Toggle Ragdoll")]
    public void ToggleRagdoll()
    {
        if (isRagdollActive)
        {
            EnableAnimator();
        }
        else
        {
            EnableRagdoll();
        }
    }

    [ContextMenu("Test Ragdoll Force")]
    public void TestRagdollForce()
    {
        EnableRagdoll();
        ApplyRagdollForce(Vector3.up + Vector3.forward, transform.position);
    }
}