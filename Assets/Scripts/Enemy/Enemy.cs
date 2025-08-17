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

    [Header("Damage Particles")]
    [SerializeField] private GameObject damageParticlesPrefab; // Tu prefab de partículas de impacto

    // AUTOMÁTICO: Se encuentra solo el punto de spawn
    private Transform playerParticleSpawnPoint;

    // Referencias para verificar estado
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

        // NUEVO: Buscar automáticamente el punto de spawn de partículas
        FindPlayerParticleSpawnPoint();
    }

    // NUEVO: Método para encontrar automáticamente el TPOINT
    private void FindPlayerParticleSpawnPoint()
    {
        // Buscar el SCARECROW
        GameObject scarecrow = GameObject.Find("SCARECROW");

        if (scarecrow != null)
        {
            // Buscar el TPOINT como hijo del SCARECROW
            Transform tpoint = scarecrow.transform.Find("TPOINT");

            if (tpoint != null)
            {
                playerParticleSpawnPoint = tpoint;
                Debug.Log($"{gameObject.name} encontró automáticamente el TPOINT para partículas");
            }
            else
            {
                Debug.LogWarning($"{gameObject.name} no pudo encontrar 'TPOINT' como hijo de SCARECROW");
            }
        }
        else
        {
            Debug.LogWarning($"{gameObject.name} no pudo encontrar el GameObject 'SCARECROW'");
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.CompareTag("Player"))
        {
            isPlayerInContact = true;
            currentPlayerHealth = collision.collider.GetComponentInParent<PlayerHealth>();

            if (ShouldDealDamage())
            {
                DealDamageToPlayer();
                GameObject.Find("SCARECROW").GetComponent<Animator>().SetTrigger("Damaged");

                // NUEVO: Spawnear partículas de daño
                SpawnDamageParticles();

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

    // NUEVO: Método para spawnear partículas de daño
    private void SpawnDamageParticles()
    {
        if (damageParticlesPrefab != null && playerParticleSpawnPoint != null)
        {
            // Instanciar las partículas como hijo del punto de spawn
            GameObject particles = Instantiate(damageParticlesPrefab, playerParticleSpawnPoint);

            Debug.Log("Partículas de daño spawneadas");
        }
        else
        {
            Debug.LogWarning("Damage Particles Prefab o Player Particle Spawn Point no están asignados en " + gameObject.name);
        }
    }

    private bool ShouldDealDamage()
    {
        if (!canAttack) return false;

        if (npcController != null)
        {
            return npcController.CurrentState == NPCController.NPCState.Enemy;
        }

        return true;
    }

    private void DealDamageToPlayer()
    {
        if (currentPlayerHealth != null)
        {
            currentPlayerHealth.TakeDamagePlayer(damage);
            Debug.Log($"{gameObject.name} hizo daño al jugador (Estado: {(npcController != null ? npcController.CurrentState.ToString() : "No NPCController")})");

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
        pushDirection.y = 0;
        pushDirection = pushDirection.normalized;
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
        if (npcController != null)
        {
            switch (npcController.CurrentState)
            {
                case NPCController.NPCState.NPC:
                    Gizmos.color = Color.green;
                    break;
                case NPCController.NPCState.Enemy:
                    Gizmos.color = canAttack ? Color.red : Color.magenta;
                    break;
                case NPCController.NPCState.PostDefeat:
                    Gizmos.color = Color.blue;
                    break;
            }
        }
        else
        {
            Gizmos.color = canAttack ? Color.red : Color.gray;
        }

        Gizmos.DrawWireSphere(transform.position, 1f);

        if (Application.isPlaying && npcController != null)
        {
            Gizmos.color = Color.white;
            Gizmos.DrawWireCube(transform.position + Vector3.up * 2.5f, Vector3.one * 0.3f);
        }
    }

    public void EnableDamage() => canAttack = true;
    public void DisableDamage() => canAttack = false;
    public bool CanDealDamage => ShouldDealDamage();

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