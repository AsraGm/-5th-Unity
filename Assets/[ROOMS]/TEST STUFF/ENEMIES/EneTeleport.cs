using UnityEngine;
using System.Collections;
using UnityEngine.AI;

public class EneTeleport : MonoBehaviour
{
    [Header("Configuraci�n de Teletransporte")]
    [Tooltip("Dist m�n desde el jugador donde el enemigo puede aparecer")]
    [SerializeField] private float minDistance = 3f;
    [Tooltip("Dist m�x desde el jugador donde el enemigo puede aparecer")]
    [SerializeField] private float maxDistance = 7f;
    [Tooltip("Tiempo de espera antes de teletransportarse (s)")]
    [SerializeField] private float teleportDelay = 0.5f;

    [Header("Ajuste de Posici�n")]
    [Tooltip("Altura adicional al teletransportarse (evita que aparezca enterrado)")]
    [SerializeField] private float verticalOffset = 1f;

    [Header("DETECCI�N AGRESIVA DE ATASCAMIENTO")]
    [Tooltip("Tiempo m�ximo atascado antes de teletransportarse")]
    [SerializeField] private float maxStuckTime = 1.5f; // M�S R�PIDO
    [Tooltip("Velocidad m�nima para considerarse en movimiento")]
    [SerializeField] private float minimumVelocity = 0.2f;
    [Tooltip("Distancia m�nima al jugador para activar anti-atascamiento")]
    [SerializeField] private float activationDistance = 10f;
    [Tooltip("Radio para detectar obst�culos")]
    [SerializeField] private float obstacleDetectionRadius = 1.2f;
    [Tooltip("Capas que cuentan como obst�culos (usar LayerMask)")]
    [SerializeField] private LayerMask obstacleLayerMask = -1;
    [Tooltip("FORZAR: Activar modo super agresivo")]
    [SerializeField] private bool superAggressiveMode = true;
    [Tooltip("Activar debug completo")]
    [SerializeField] private bool debugMode = true;

    private Transform _playerTransform;
    private NavMeshAgent _navMeshAgent;
    private Rigidbody _rigidbody;
    private bool _isTeleporting = false;

    // ========== DETECCI�N M�LTIPLE DE ATASCAMIENTO ==========
    private Vector3 _lastPosition;
    private Vector3 _positionBeforeStuck;
    private float _stuckTimer = 0f;
    private float _totalStuckTime = 0f;
    private int _stuckChecksPerSecond = 4; // Verificar 4 veces por segundo
    private bool _wasStuckLastFrame = false;

    // ========== VARIABLES PARA RESET ==========
    private Vector3 initialPosition;
    private Quaternion initialRotation;

    private void Awake()
    {
        initialPosition = transform.position;
        initialRotation = transform.rotation;

        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
        {
            _playerTransform = player.transform;
        }
        else
        {
            Debug.LogError($"{gameObject.name}: �No se encontr� jugador con tag 'Player'!");
        }

        _navMeshAgent = GetComponent<NavMeshAgent>();
        _rigidbody = GetComponent<Rigidbody>();

        if (_navMeshAgent == null)
        {
            Debug.LogError($"{gameObject.name}: �NavMeshAgent requerido para detecci�n de atascamiento!");
        }

        _lastPosition = transform.position;
        _positionBeforeStuck = transform.position;
    }

    private void OnEnable()
    {
        TeleportCore.OnPlayerTeleported += OnPlayerTeleported;
        ResetSystem.OnLevelReset += ResetToInitialPosition;
        StartAggressiveStuckDetection();
    }

    private void OnDisable()
    {
        TeleportCore.OnPlayerTeleported -= OnPlayerTeleported;
        ResetSystem.OnLevelReset -= ResetToInitialPosition;
        StopAllCoroutines();
    }

    private void Update()
    {
        // ========== DETECCI�N EN TIEMPO REAL ==========
        if (!_isTeleporting && _playerTransform != null)
        {
            CheckStuckInRealTime();
        }
    }

    private void ResetToInitialPosition()
    {
        StopAllCoroutines();
        transform.position = initialPosition;
        transform.rotation = initialRotation;
        _isTeleporting = false;
        ResetStuckCounters();
        StartAggressiveStuckDetection();
    }

    // ========== DETECCI�N AGRESIVA Y M�LTIPLE ==========
    private void StartAggressiveStuckDetection()
    {
        if (debugMode) Debug.Log($"{gameObject.name}: Iniciando detecci�n agresiva de atascamiento");

        StartCoroutine(AggressiveStuckCheck());
        StartCoroutine(EmergencyTeleportCheck());
    }

    private void CheckStuckInRealTime()
    {
        if (_playerTransform == null) return;

        float distanceToPlayer = Vector3.Distance(transform.position, _playerTransform.position);

        // Solo verificar si est� cerca del jugador
        if (distanceToPlayer > activationDistance)
        {
            ResetStuckCounters();
            return;
        }

        bool isStuck = IsCurrentlyStuck();

        if (isStuck)
        {
            if (!_wasStuckLastFrame)
            {
                _positionBeforeStuck = transform.position;
                if (debugMode) Debug.Log($"{gameObject.name}: �COMENZ� A ATASCARSE!");
            }

            _stuckTimer += Time.deltaTime;
            _totalStuckTime += Time.deltaTime;

            if (debugMode && (int)_stuckTimer != (int)(_stuckTimer - Time.deltaTime))
            {
                Debug.Log($"{gameObject.name}: Atascado por {_stuckTimer:F1}s - Velocidad: {GetCurrentVelocity():F2}");
            }
        }
        else
        {
            if (_wasStuckLastFrame && debugMode)
            {
                Debug.Log($"{gameObject.name}: Se desatasc� despu�s de {_stuckTimer:F1}s");
            }
            _stuckTimer = 0f;
        }

        _wasStuckLastFrame = isStuck;
        _lastPosition = transform.position;
    }

    private IEnumerator AggressiveStuckCheck()
    {
        float checkInterval = 1f / _stuckChecksPerSecond;

        while (true)
        {
            yield return new WaitForSeconds(checkInterval);

            if (_isTeleporting || _playerTransform == null) continue;

            // ========== MULTIPLE CHECKS FOR STUCK CONDITION ==========
            bool velocityStuck = GetCurrentVelocity() < minimumVelocity;
            bool positionStuck = Vector3.Distance(transform.position, _lastPosition) < 0.05f;
            bool navMeshStuck = IsNavMeshStuck();
            bool obstacleBlocked = IsBlockedByObstacles();

            bool totallyStuck = velocityStuck && (positionStuck || navMeshStuck || obstacleBlocked);

            if (totallyStuck && _stuckTimer >= maxStuckTime)
            {
                if (debugMode)
                {
                    Debug.LogWarning($"{gameObject.name}: �ACTIVANDO TELEPORT DE EMERGENCIA! " +
                                   $"Vel: {velocityStuck}, Pos: {positionStuck}, Nav: {navMeshStuck}, Obs: {obstacleBlocked}");
                }

                ExecuteEmergencyTeleport();
            }
        }
    }

    private IEnumerator EmergencyTeleportCheck()
    {
        while (true)
        {
            yield return new WaitForSeconds(0.1f); // Check very frequently

            if (_isTeleporting) continue;

            // SUPER AGGRESSIVE: If stuck for even short time and conditions are bad
            if (superAggressiveMode && _stuckTimer >= maxStuckTime * 0.7f) // 70% of max time
            {
                bool reallyStuck = IsBlockedByObstacles() && GetCurrentVelocity() < 0.1f;

                if (reallyStuck)
                {
                    if (debugMode) Debug.LogWarning($"{gameObject.name}: �TELEPORT SUPER AGRESIVO!");
                    ExecuteEmergencyTeleport();
                }
            }
        }
    }

    private bool IsCurrentlyStuck()
    {
        if (_navMeshAgent == null || _playerTransform == null) return false;

        float currentVelocity = GetCurrentVelocity();
        float distanceToPlayer = Vector3.Distance(transform.position, _playerTransform.position);

        // No est� atascado si est� muy cerca del jugador (stopping distance)
        if (distanceToPlayer <= _navMeshAgent.stoppingDistance + 0.5f) return false;

        // Verificaciones m�ltiples
        bool lowVelocity = currentVelocity < minimumVelocity;
        bool hasPath = _navMeshAgent.hasPath && _navMeshAgent.pathStatus == NavMeshPathStatus.PathComplete;
        bool shouldBeMoving = _navMeshAgent.remainingDistance > _navMeshAgent.stoppingDistance;
        bool blockedByObstacles = IsBlockedByObstacles();

        return lowVelocity && hasPath && shouldBeMoving && blockedByObstacles;
    }

    private bool IsNavMeshStuck()
    {
        if (_navMeshAgent == null) return false;

        return _navMeshAgent.hasPath &&
               _navMeshAgent.pathStatus == NavMeshPathStatus.PathComplete &&
               _navMeshAgent.remainingDistance > _navMeshAgent.stoppingDistance &&
               _navMeshAgent.velocity.magnitude < 0.15f;
    }

    private bool IsBlockedByObstacles()
    {
        // Raycast en m�ltiples direcciones
        Vector3[] directions = {
            transform.forward,
            -transform.forward,
            transform.right,
            -transform.right,
            (transform.forward + transform.right).normalized,
            (transform.forward - transform.right).normalized,
            (-transform.forward + transform.right).normalized,
            (-transform.forward - transform.right).normalized
        };

        int blockedDirections = 0;
        foreach (Vector3 direction in directions)
        {
            if (Physics.Raycast(transform.position + Vector3.up * 0.5f, direction, 1.5f, obstacleLayerMask))
            {
                blockedDirections++;
            }
        }

        // Si m�s de la mitad de las direcciones est�n bloqueadas
        return blockedDirections >= directions.Length * 0.6f;
    }

    private float GetCurrentVelocity()
    {
        if (_navMeshAgent != null)
        {
            return _navMeshAgent.velocity.magnitude;
        }
        else if (_rigidbody != null)
        {
            return _rigidbody.linearVelocity.magnitude;
        }
        else
        {
            return Vector3.Distance(transform.position, _lastPosition) / Time.deltaTime;
        }
    }

    private void ExecuteEmergencyTeleport()
    {
        if (_isTeleporting || _playerTransform == null) return;

        ResetStuckCounters();
        StartCoroutine(TeleportToPlayer(_playerTransform.position, true));
    }

    private void ResetStuckCounters()
    {
        _stuckTimer = 0f;
        _wasStuckLastFrame = false;
        _lastPosition = transform.position;
    }

    // ========== M�TODOS ORIGINALES MEJORADOS ==========
    private void OnPlayerTeleported(Vector3 playerNewPosition)
    {
        if (_isTeleporting || _playerTransform == null) return;
        StartCoroutine(TeleportToPlayer(playerNewPosition, false));
    }

    private IEnumerator TeleportToPlayer(Vector3 playerPosition, bool isEmergency = false)
    {
        _isTeleporting = true;

        if (debugMode)
        {
            Debug.Log($"{gameObject.name}: Iniciando teleport {(isEmergency ? "DE EMERGENCIA" : "normal")}");
        }

        float actualDelay = isEmergency ? 0.1f : teleportDelay; // Emergency teleport is almost instant
        yield return new WaitForSeconds(actualDelay);

        // Intentar m�ltiples posiciones hasta encontrar una buena
        for (int attempts = 0; attempts < 10; attempts++)
        {
            Vector3 randomDirection = Random.insideUnitSphere.normalized;
            randomDirection.y = 0f;

            float distance = Random.Range(minDistance, maxDistance);
            Vector3 teleportPosition = playerPosition + randomDirection * distance;
            teleportPosition.y += verticalOffset;

            // Verificar que la posici�n sea v�lida
            NavMeshHit hit;
            if (NavMesh.SamplePosition(teleportPosition, out hit, 5f, NavMesh.AllAreas))
            {
                // Verificar que no haya obst�culos inmediatos
                if (!Physics.CheckSphere(hit.position, 0.5f, obstacleLayerMask))
                {
                    transform.position = hit.position;
                    break;
                }
            }

            if (attempts == 9) // Last attempt, just teleport anywhere valid
            {
                if (NavMesh.SamplePosition(playerPosition + Vector3.right * minDistance, out hit, 10f, NavMesh.AllAreas))
                {
                    transform.position = hit.position;
                }
            }
        }

        ResetStuckCounters();
        _isTeleporting = false;

        if (debugMode)
        {
            Debug.Log($"{gameObject.name}: Teleport completado a {transform.position}");
        }
    }

    // ========== M�TODOS P�BLICOS ==========
    [ContextMenu("Force Emergency Teleport")]
    public void ForceEmergencyTeleport()
    {
        if (_playerTransform != null)
        {
            ExecuteEmergencyTeleport();
        }
    }

    public bool IsStuck() => _stuckTimer > maxStuckTime * 0.5f;
    public float GetStuckTime() => _stuckTimer;
    public float GetCurrentSpeed() => GetCurrentVelocity();

    // ========== VISUALIZACI�N MEJORADA ==========
    private void OnDrawGizmosSelected()
    {
#if UNITY_EDITOR
        CachePlayerTransformIfNeeded();

        if (_playerTransform != null)
        {
            // Rangos de teleport
            Gizmos.color = new Color(0, 1, 0, 0.3f);
            Gizmos.DrawWireSphere(_playerTransform.position, minDistance);
            Gizmos.color = new Color(1, 0, 0, 0.2f);
            Gizmos.DrawWireSphere(_playerTransform.position, maxDistance);

            // L�nea al jugador
            Gizmos.color = _stuckTimer > 0 ? Color.red : Color.white;
            Gizmos.DrawLine(transform.position, _playerTransform.position);

            // Distancia de activaci�n
            Gizmos.color = new Color(0, 0, 1, 0.1f);
            Gizmos.DrawWireSphere(_playerTransform.position, activationDistance);
        }

        // Radio de detecci�n de obst�culos
        Gizmos.color = IsBlockedByObstacles() ? Color.red : new Color(1, 0.5f, 0, 0.3f);
        Gizmos.DrawWireSphere(transform.position, obstacleDetectionRadius);

        // Indicador de atascamiento
        if (_stuckTimer > 0)
        {
            Gizmos.color = Color.yellow;
            float progress = Mathf.Clamp01(_stuckTimer / maxStuckTime);
            Vector3 barSize = new Vector3(progress * 3f, 0.2f, 0.2f);
            Gizmos.DrawCube(transform.position + Vector3.up * 2.5f, barSize);

            // Texto de debug (solo visible en Scene view)
            Gizmos.color = Color.red;
            Gizmos.DrawRay(transform.position + Vector3.up * 3f, Vector3.up * 0.5f);
        }

        // Raycast de detecci�n de obst�culos
        if (Application.isPlaying && debugMode)
        {
            Vector3[] directions = {
                transform.forward, -transform.forward,
                transform.right, -transform.right
            };

            foreach (Vector3 direction in directions)
            {
                Vector3 start = transform.position + Vector3.up * 0.5f;
                Color rayColor = Physics.Raycast(start, direction, 1.5f, obstacleLayerMask) ? Color.red : Color.green;
                Gizmos.color = rayColor;
                Gizmos.DrawRay(start, direction * 1.5f);
            }
        }
#endif
    }

    private void CachePlayerTransformIfNeeded()
    {
        if (_playerTransform == null && !Application.isPlaying)
        {
            GameObject player = GameObject.FindGameObjectWithTag("Player");
            if (player != null) _playerTransform = player.transform;
        }
    }
}