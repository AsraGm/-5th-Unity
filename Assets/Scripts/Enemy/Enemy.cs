using System.Collections;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    [SerializeField] private float forceImpulsive = 500f;
    [SerializeField] private float pushDuration = 0.5f;
    [SerializeField] private int damage = 1;

    [Header("Damage Control")]
    [SerializeField] private float damageCooldown = 2f;
    [SerializeField] private bool canAttack = true;

    // NUEVO: Referencias para verificar estado
    private NPCController npcController;
    private bool isPlayerInContact = false;
    private PlayerHealth currentPlayerHealth;

    private void Start()
    {
        // Obtener referencia al NPCController
        npcController = GetComponent<NPCController>();

        if (npcController == null)
        {
            Debug.LogWarning($"Enemy script en {gameObject.name} no encontró NPCController. Funcionará como enemigo siempre.");
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.CompareTag("Player"))
        {
            isPlayerInContact = true;
            currentPlayerHealth = collision.collider.GetComponentInParent<PlayerHealth>();

            // NUEVO: Solo hacer daño si está en modo Enemy
            if (ShouldDealDamage())
            {
                DealDamageToPlayer();
                PushTarget(collision.transform);
            }
        }
    }

    private void OnCollisionExit(Collision collision)
    {
        if (collision.collider.CompareTag("Player"))
        {
            isPlayerInContact = false;
            currentPlayerHealth = null;
        }
    }

    // NUEVO: Método para verificar si debe hacer daño
    private bool ShouldDealDamage()
    {
        // Si no puede atacar por cooldown
        if (!canAttack) return false;

        // Si hay NPCController, verificar que esté en modo Enemy
        if (npcController != null)
        {
            return npcController.CurrentState == NPCController.NPCState.Enemy;
        }

        // Si no hay NPCController, funciona como enemigo normal
        return true;
    }

    private void DealDamageToPlayer()
    {
        if (currentPlayerHealth != null)
        {
            currentPlayerHealth.TakeDamagePlayer(damage);
            Debug.Log($"{gameObject.name} hizo daño al jugador (Estado: {(npcController != null ? npcController.CurrentState.ToString() : "No NPCController")})");

            // Iniciar cooldown
            StartCoroutine(DamageCooldownRoutine());
        }
    }

    private IEnumerator DamageCooldownRoutine()
    {
        canAttack = false;
        yield return new WaitForSeconds(damageCooldown);
        canAttack = true;
    }

    private void PushTarget(Transform target)
    {
        Rigidbody playerRb = target.transform.GetComponent<Rigidbody>();
        Vector3 pushDirection = (target.transform.position - transform.position).normalized;
        StartCoroutine(PushTargetSmooth(playerRb, pushDirection, forceImpulsive, pushDuration));
    }

    IEnumerator PushTargetSmooth(Rigidbody playerRb, Vector3 direction, float totalForce, float duration)
    {
        float elapsed = 0f;
        float forcePerSecond = totalForce / duration;

        while (elapsed < duration)
        {
            if (playerRb != null)
            {
                playerRb.AddForce(forcePerSecond * Time.fixedDeltaTime * direction, ForceMode.VelocityChange);
            }
            elapsed += Time.fixedDeltaTime;
            yield return new WaitForFixedUpdate();
        }
    }

    private void OnDrawGizmosSelected()
    {
        // Color según estado
        if (npcController != null)
        {
            switch (npcController.CurrentState)
            {
                case NPCController.NPCState.NPC:
                    Gizmos.color = Color.green; // Verde = NPC (no peligroso)
                    break;
                case NPCController.NPCState.Enemy:
                    Gizmos.color = canAttack ? Color.red : Color.magenta; // Rojo = Enemigo
                    break;
                case NPCController.NPCState.PostDefeat:
                    Gizmos.color = Color.blue; // Azul = Derrotado
                    break;
            }
        }
        else
        {
            Gizmos.color = canAttack ? Color.red : Color.gray;
        }

        Gizmos.DrawWireSphere(transform.position, 1f);

        // Mostrar estado en el editor
        if (Application.isPlaying && npcController != null)
        {
            Gizmos.color = Color.white;
            Gizmos.DrawWireCube(transform.position + Vector3.up * 2.5f, Vector3.one * 0.3f);
        }
    }

    // Métodos públicos para control externo
    public void EnableDamage() => canAttack = true;
    public void DisableDamage() => canAttack = false;
    public bool CanDealDamage => ShouldDealDamage();

    // Debug methods
    [ContextMenu("Test Damage Check")]
    public void DebugDamageCheck()
    {
        Debug.Log($"=== DAMAGE CHECK DEBUG ===");
        Debug.Log($"Can Attack: {canAttack}");
        Debug.Log($"NPC Controller: {(npcController != null ? "Found" : "NULL")}");
        if (npcController != null)
        {
            Debug.Log($"Current State: {npcController.CurrentState}");
            Debug.Log($"Should Deal Damage: {ShouldDealDamage()}");
        }
        Debug.Log($"Player In Contact: {isPlayerInContact}");
    }
}