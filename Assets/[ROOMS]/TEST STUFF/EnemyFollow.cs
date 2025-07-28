using System.Collections;
using UnityEngine;
using UnityEngine.AI;

[RequireComponent(typeof(NavMeshAgent))]
public class EnemyFollow : MonoBehaviour
{
    [Header("Configuración de Seguimiento")]
    [Tooltip("Velocidad de movimiento del enemigo")]
    public float moveSpeed = 3.5f;

    [Header("Pausa por Item Recolectado")]
    [Tooltip("Tiempo en segundos que se pausa el seguimiento al recolectar un item")]
    public float pauseTimeOnItemPickup = 2f;

    [Header("Configuración NavMesh")]
    [Tooltip("Distancia mínima al jugador antes de parar")]
    [SerializeField] private float stoppingDistance = 1f;
    [Tooltip("Velocidad de aceleración del NavMesh")]
    [SerializeField] private float acceleration = 8f;
    [Tooltip("Velocidad de rotación del NavMesh")]
    [SerializeField] private float angularSpeed = 360f;

    [Header("Configuración de Obstáculos")]
    [Tooltip("Radio para detectar obstáculos a esquivar")]
    [SerializeField] private float obstacleDetectionRadius = 2f;
    [Tooltip("Tags de objetos que debe esquivar")]
    [SerializeField] private string[] obstacleTags = { "Assets", "Walls" };

    // Referencias
    private Transform playerTransform;
    private NavMeshAgent navAgent;

    // Estados del sistema
    private bool isFollowing = true;
    private bool isPausedByItem = false;

    // Reset system
    private Vector3 initialPosition;
    private Quaternion initialRotation;

    // Debug
    [Header("Debug")]
    [SerializeField] private bool showDebugInfo = false;
    [SerializeField] private bool showNavMeshPath = false;

    private void Awake()
    {
        // Guardar estado inicial para reset
        initialPosition = transform.position;
        initialRotation = transform.rotation;

        // Buscar jugador
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
        {
            playerTransform = player.transform;
        }
        else
        {
            Debug.LogError($"{gameObject.name}: No se encontró jugador con tag 'Player'");
        }

        // Configurar NavMeshAgent
        navAgent = GetComponent<NavMeshAgent>();
        if (navAgent != null)
        {
            SetupNavMeshAgent();
        }
        else
        {
            Debug.LogError($"{gameObject.name}: NavMeshAgent component requerido!");
        }
    }

    private void SetupNavMeshAgent()
    {
        navAgent.speed = moveSpeed;
        navAgent.stoppingDistance = stoppingDistance;
        navAgent.acceleration = acceleration;
        navAgent.angularSpeed = angularSpeed;
        navAgent.autoBraking = true;
        navAgent.autoRepath = true;

        // Configurar el área mask para evitar ciertos tags si es necesario
        // navAgent.areaMask = NavMesh.AllAreas; // Por defecto permite todas las áreas
    }

    private void OnEnable()
    {
        // Suscribirse al sistema de reset
        ResetSystem.OnLevelReset += ResetToInitialState;

        // Suscribirse al evento de items recogidos
        InventorySystem.OnItemAdded += OnItemPickedUp;
    }

    private void OnDisable()
    {
        // Desuscribirse de eventos
        ResetSystem.OnLevelReset -= ResetToInitialState;
        InventorySystem.OnItemAdded -= OnItemPickedUp;
    }

    private void Update()
    {
        if (playerTransform == null || navAgent == null || !isFollowing || isPausedByItem) return;

        FollowPlayer();

        // Actualizar velocidad si cambió en runtime
        if (navAgent.speed != moveSpeed)
        {
            navAgent.speed = moveSpeed;
        }

        // Debug info
        if (showDebugInfo)
        {
            float distanceToTarget = navAgent.hasPath ? navAgent.remainingDistance : Vector3.Distance(transform.position, playerTransform.position);
            Debug.Log($"{gameObject.name} - Siguiendo: {isFollowing}, Pausado: {isPausedByItem}, Distancia: {distanceToTarget:F2}, HasPath: {navAgent.hasPath}");
        }
    }

    private void FollowPlayer()
    {
        // Verificar si el NavMesh está listo
        if (!navAgent.isOnNavMesh) return;

        // Verificar si necesitamos actualizar el destino
        Vector3 playerPosition = playerTransform.position;

        // Solo actualizar destino si el jugador se ha movido significativamente
        if (!navAgent.hasPath || Vector3.Distance(navAgent.destination, playerPosition) > 0.5f)
        {
            // Verificar que la posición del jugador sea válida en el NavMesh
            NavMeshHit hit;
            if (NavMesh.SamplePosition(playerPosition, out hit, 2f, NavMesh.AllAreas))
            {
                navAgent.SetDestination(hit.position);
            }
            else
            {
                // Si la posición del jugador no es válida, buscar la más cercana válida
                if (NavMesh.SamplePosition(playerPosition, out hit, 5f, NavMesh.AllAreas))
                {
                    navAgent.SetDestination(hit.position);
                }
            }
        }

        // Detectar y reaccionar a obstáculos específicos
        HandleObstacleAvoidance();
    }

    private void HandleObstacleAvoidance()
    {
        // Detectar objetos con tags específicos cerca
        Collider[] nearbyObjects = Physics.OverlapSphere(transform.position, obstacleDetectionRadius);

        foreach (Collider obj in nearbyObjects)
        {
            // Verificar si el objeto tiene uno de los tags a evitar
            bool shouldAvoid = false;
            foreach (string tag in obstacleTags)
            {
                if (obj.CompareTag(tag))
                {
                    shouldAvoid = true;
                    break;
                }
            }

            if (shouldAvoid && showDebugInfo)
            {
                Debug.Log($"{gameObject.name}: Evitando obstáculo '{obj.name}' con tag '{obj.tag}'");
            }
        }

        // El NavMeshAgent maneja automáticamente la evasión, 
        // pero podríamos agregar lógica adicional aquí si fuera necesario
    }

    // ========== SISTEMA DE PAUSA POR ITEMS ==========
    private void OnItemPickedUp(ItemData itemData)
    {
        if (!isFollowing || isPausedByItem) return;

        StartCoroutine(PauseFollowingCoroutine());

        if (showDebugInfo)
        {
            Debug.Log($"{gameObject.name}: Item '{itemData.name}' recogido. Pausando seguimiento por {pauseTimeOnItemPickup} segundos.");
        }
    }

    private IEnumerator PauseFollowingCoroutine()
    {
        isPausedByItem = true;

        // Parar NavMeshAgent inmediatamente
        if (navAgent != null && navAgent.isOnNavMesh)
        {
            navAgent.isStopped = true;
            navAgent.ResetPath(); // Limpiar el path actual
        }

        // Esperar el tiempo configurado
        yield return new WaitForSeconds(pauseTimeOnItemPickup);

        // Reanudar movimiento
        if (navAgent != null && navAgent.isOnNavMesh)
        {
            navAgent.isStopped = false;
        }

        isPausedByItem = false;

        if (showDebugInfo)
        {
            Debug.Log($"{gameObject.name}: Reanudando seguimiento.");
        }
    }

    // ========== SISTEMA DE RESET ==========
    private void ResetToInitialState()
    {
        // Parar todas las corrutinas
        StopAllCoroutines();

        // Parar y resetear NavMeshAgent
        if (navAgent != null)
        {
            navAgent.isStopped = true;
            navAgent.ResetPath();

            // Teletransportar a posición inicial
            if (navAgent.isOnNavMesh)
            {
                navAgent.Warp(initialPosition);
            }
            else
            {
                transform.position = initialPosition;
            }

            transform.rotation = initialRotation;

            // Reconfigurar NavMeshAgent
            navAgent.speed = moveSpeed;
            navAgent.isStopped = false;
        }
        else
        {
            // Fallback si no hay NavMeshAgent
            transform.position = initialPosition;
            transform.rotation = initialRotation;
        }

        // Resetear estados
        isFollowing = true;
        isPausedByItem = false;

        if (showDebugInfo)
        {
            Debug.Log($"{gameObject.name}: Reset completo ejecutado.");
        }
    }

    // ========== MÉTODOS PÚBLICOS PARA CONTROL EXTERNO ==========
    public void StopFollowing()
    {
        isFollowing = false;
        if (navAgent != null && navAgent.isOnNavMesh)
        {
            navAgent.isStopped = true;
            navAgent.ResetPath();
        }
    }

    public void StartFollowing()
    {
        isFollowing = true;
        if (navAgent != null && navAgent.isOnNavMesh)
        {
            navAgent.isStopped = false;
        }
    }

    public void SetMoveSpeed(float newSpeed)
    {
        moveSpeed = Mathf.Max(0.1f, newSpeed);
        if (navAgent != null)
        {
            navAgent.speed = moveSpeed;
        }
    }

    public void SetPauseTime(float newPauseTime)
    {
        pauseTimeOnItemPickup = Mathf.Max(0, newPauseTime);
    }

    public void SetStoppingDistance(float newDistance)
    {
        stoppingDistance = Mathf.Max(0, newDistance);
        if (navAgent != null)
        {
            navAgent.stoppingDistance = stoppingDistance;
        }
    }

    // ========== GETTERS PARA DEBUG ==========
    public bool IsFollowing => isFollowing && !isPausedByItem;
    public bool IsPausedByItem => isPausedByItem;
    public float DistanceToPlayer => navAgent != null && navAgent.hasPath ? navAgent.remainingDistance :
                                   (playerTransform != null ? Vector3.Distance(transform.position, playerTransform.position) : -1f);
    public bool HasValidPath => navAgent != null && navAgent.hasPath && !navAgent.pathPending;
    public NavMeshPathStatus PathStatus => navAgent != null ? navAgent.pathStatus : NavMeshPathStatus.PathInvalid;

    // ========== VISUALIZACIÓN EN EDITOR ==========
    private void OnDrawGizmosSelected()
    {
#if UNITY_EDITOR
        // Posición inicial
        Gizmos.color = Color.blue;
        Gizmos.DrawWireCube(initialPosition, Vector3.one * 0.5f);

        if (playerTransform != null)
        {
            // Línea hacia el jugador
            Gizmos.color = isFollowing && !isPausedByItem ? Color.green : Color.red;
            Gizmos.DrawLine(transform.position, playerTransform.position);

            // Círculo de stopping distance
            Gizmos.color = new Color(1, 1, 0, 0.3f);
            Gizmos.DrawWireSphere(transform.position, stoppingDistance);
        }

        // Radio de detección de obstáculos
        Gizmos.color = new Color(1, 0.5f, 0, 0.3f);
        Gizmos.DrawWireSphere(transform.position, obstacleDetectionRadius);

        // Mostrar path del NavMesh si está habilitado
        if (showNavMeshPath && navAgent != null && navAgent.hasPath)
        {
            Gizmos.color = Color.cyan;
            Vector3[] pathCorners = navAgent.path.corners;
            for (int i = 0; i < pathCorners.Length - 1; i++)
            {
                Gizmos.DrawLine(pathCorners[i], pathCorners[i + 1]);
            }
        }

        // Mostrar obstáculos detectados
        Collider[] obstacles = Physics.OverlapSphere(transform.position, obstacleDetectionRadius);
        foreach (Collider obstacle in obstacles)
        {
            foreach (string tag in obstacleTags)
            {
                if (obstacle.CompareTag(tag))
                {
                    Gizmos.color = Color.red;
                    Gizmos.DrawLine(transform.position, obstacle.transform.position);
                    break;
                }
            }
        }
#endif
    }
}