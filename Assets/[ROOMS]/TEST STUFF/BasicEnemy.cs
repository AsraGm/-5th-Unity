using UnityEngine;

public class BasicEnemy : MonoBehaviour
{
    [Header("Combat")]
    public float attackDamage = 10f;
    public float attackRange = 2f;
    public float attackCooldown = 1.5f;

    [Header("Movement")]
    public float chaseSpeed = 5f;
    public float detectionRange = 8f;

    private Transform player;
    private float lastAttackTime = 0f;
    private bool isChasing = false;

    private void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player")?.transform;
    }

    private void Update()
    {
        if (player == null) return;

        float distanceToPlayer = Vector3.Distance(transform.position, player.position);

        if (distanceToPlayer <= detectionRange)
        {
            ChasePlayer();

            if (distanceToPlayer <= attackRange && Time.time >= lastAttackTime + attackCooldown)
            {
                Attack();
            }
        }
        else
        {
            isChasing = false;
        }
    }

    private void ChasePlayer()
    {
        isChasing = true;
        Vector3 direction = (player.position - transform.position).normalized;
        transform.position += direction * chaseSpeed * Time.deltaTime;
        transform.LookAt(player);
    }

    private void Attack()
    {
        lastAttackTime = Time.time;
        Debug.Log($"{gameObject.name} attacks player for {attackDamage} damage!");

        // Aquí puedes agregar la lógica de daño al jugador
        // player.GetComponent<PlayerHealth>()?.TakeDamage(attackDamage);
    }

    private void OnDrawGizmosSelected()
    {
        // Visualizar rangos en el editor
        Gizmos.color = Color.yellow;
        Gizmos.DrawWireSphere(transform.position, detectionRange);

        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, attackRange);
    }
}