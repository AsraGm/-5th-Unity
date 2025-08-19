    using System;
    using System.Collections;
    using UnityEngine;
    using SmallHedge.SoundManager;

    public class TeleportCore : MonoBehaviour
    {
        [Header("Keybinds")]
        public KeyCode previewKey = KeyCode.Space;
        public KeyCode confirmKey = KeyCode.Mouse0;

        [Header("Configuración")]
        public float maxDistance = 10f;
        public LayerMask validLayers;
        public float cooldownTime = 2f;
        public float lastTeleportTime;

        [Header("Anti-Clip Settings")]
        [SerializeField] private float playerRadius = 0.5f; // Radio del jugador
        [SerializeField] private float playerHeight = 2f; // Altura del jugador
        [SerializeField] private LayerMask obstacleLayers = -1; // Capas que bloquean el teleport
        [SerializeField] private float safetyMargin = 0.1f; // Margen extra de seguridad
        [SerializeField] private int maxRepositionAttempts = 8; // Intentos para encontrar posición segura
        [SerializeField] private float repositionRadius = 1f; // Radio para buscar posición alternativa

        [Header("Time Slowdown")]
        public float slowdownFactor = 0.2f;
        public float slowdownTransitionTime = 0.3f;
        public float speedupTransitionTime = 0.5f;

        [Header("Teleport Timer")]
        public float decisionTime = 3f;
        private float decisionTimer;
        private bool isDecisionActive = false;

        [Header("Teleport Particles")]
        [SerializeField] private GameObject teleportParticlePrefab;
        [SerializeField] private Transform particleSpawnPoint;
        [SerializeField] private bool spawnAtOrigin = false;
        [SerializeField] private bool spawnAtDestination = true;

        private float originalFixedDeltaTime;
        private bool isTimeSlowed = false;
        public bool isPreviewing = false;
        private Vector3 targetPosition;
        private bool isTargetPositionSafe = false;

        public static event Action<Vector3> OnPlayerTeleported;
        private TeleportVisuals visualizer;

        void Start()
        {
            originalFixedDeltaTime = Time.fixedDeltaTime;
            visualizer = GetComponent<TeleportVisuals>();

            // Auto-detectar el radio y altura si hay un CharacterController o Collider
            AutoDetectPlayerDimensions();
        }

        void Update()
        {
            if (GameManager.Instance != null && !GameManager.Instance.isPlayerControlActive)
            {
                // Opcional: Cancelar la previsualización si ya estaba activa
                if (isPreviewing)
                {
                    CancelPreview();
                }
                return; // Salir de la función
            }
            if (Time.timeScale == 0f || IsOnCooldown()) return;

            if (isDecisionActive)
            {
                decisionTimer -= Time.unscaledDeltaTime;
                if (decisionTimer <= 0f)
                {
                    OnDecisionTimeout();
                }
            }

            if (Input.GetKeyDown(previewKey) && !isPreviewing)
            {
                StartPreview();
            }
            else if (Input.GetKeyDown(previewKey) && isPreviewing)
            {
                CancelPreview();
            }

            if (isPreviewing && Input.GetKeyDown(confirmKey))
            {
                Teleport();
            }

            if (isPreviewing)
            {
                UpdateTargetPosition();
            }
        }

        private void AutoDetectPlayerDimensions()
        {
            // Intentar obtener dimensiones del CharacterController
            CharacterController cc = GetComponent<CharacterController>();
            if (cc != null)
            {
                playerRadius = cc.radius;
                playerHeight = cc.height;
                return;
            }

            // Intentar obtener dimensiones de un CapsuleCollider
            CapsuleCollider capsule = GetComponent<CapsuleCollider>();
            if (capsule != null)
            {
                playerRadius = capsule.radius;
                playerHeight = capsule.height;
                return;
            }

            // Intentar obtener dimensiones de un BoxCollider
            BoxCollider box = GetComponent<BoxCollider>();
            if (box != null)
            {
                playerRadius = Mathf.Max(box.size.x, box.size.z) / 2f;
                playerHeight = box.size.y;
            }
        }

        private bool IsOnCooldown()
        {
            return Time.time < lastTeleportTime + cooldownTime;
        }

        void StartPreview()
        {
            isPreviewing = true;
            isDecisionActive = true;
            decisionTimer = decisionTime;
            visualizer.CreatePreview();
            SlowTime();
        }

        void UpdateTargetPosition()
        {
            Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            bool isHit = Physics.Raycast(ray, out hit, Mathf.Infinity, validLayers);

            if (isHit)
            {
                targetPosition = hit.point;
                float distanceToHit = Vector3.Distance(transform.position, hit.point);

                // Verificar si la posición es segura
                isTargetPositionSafe = IsPositionSafe(targetPosition) && distanceToHit <= maxDistance;

                visualizer.UpdatePreviewVisual(hit.point, isTargetPositionSafe);
            }
        }

        // NUEVO: Método principal para verificar si una posición es segura
        private bool IsPositionSafe(Vector3 position)
        {
            // 1. Verificar que hay suelo válido
            if (!IsValidPosition(position))
                return false;

            // 2. Verificar que no hay obstáculos en el área del jugador
            Vector3 checkPosition = position + Vector3.up * (playerHeight / 2f);

            // Usar OverlapCapsule para detectar colisiones en todo el cuerpo del jugador
            Collider[] overlapping = Physics.OverlapCapsule(
                checkPosition + Vector3.up * (playerHeight / 2f - playerRadius), // Top sphere
                checkPosition + Vector3.down * (playerHeight / 2f - playerRadius), // Bottom sphere
                playerRadius + safetyMargin,
                obstacleLayers
            );

            // Filtrar el propio collider del jugador
            foreach (var collider in overlapping)
            {
                if (collider.transform != transform && !collider.isTrigger)
                {
                    return false;
                }
            }

            return true;
        }

        // NUEVO: Buscar una posición segura alternativa cerca del punto objetivo
        private Vector3 FindSafePosition(Vector3 originalTarget)
        {
            // Primero intentar la posición original
            if (IsPositionSafe(originalTarget))
                return originalTarget;

            // Buscar en círculos concéntricos alrededor del punto objetivo
            for (int attempt = 0; attempt < maxRepositionAttempts; attempt++)
            {
                float angle = (360f / maxRepositionAttempts) * attempt;
                float distance = repositionRadius * (1f + attempt * 0.2f); // Aumentar radio gradualmente

                Vector3 offset = new Vector3(
                    Mathf.Cos(angle * Mathf.Deg2Rad) * distance,
                    0f,
                    Mathf.Sin(angle * Mathf.Deg2Rad) * distance
                );

                Vector3 testPosition = originalTarget + offset;

                // Verificar que el punto alternativo esté en una superficie válida
                RaycastHit hit;
                if (Physics.Raycast(testPosition + Vector3.up * 2f, Vector3.down, out hit, 5f, validLayers))
                {
                    Vector3 groundPosition = hit.point;
                    if (IsPositionSafe(groundPosition))
                    {
                        return groundPosition;
                    }
                }
            }

            // Si no se encuentra posición segura, devolver la original
            return originalTarget;
        }

        public void CancelPreview()
        {
            isPreviewing = false;
            isDecisionActive = false;
            visualizer.DestroyPreview();
            RestoreTime();
        }

        void Teleport()
        {
            float distanceToTarget = Vector3.Distance(transform.position, targetPosition);

            if (distanceToTarget <= maxDistance)
            {
                Vector3 finalPosition = FindSafePosition(targetPosition);

                // Verificar una última vez que la posición final es segura
                if (IsPositionSafe(finalPosition))
                {
                    // Spawnear partículas en el origen si está activado
                    if (spawnAtOrigin)
                    {
                        SpawnTeleportParticles(transform.position);
                    }

                    // Teleportar al jugador
                    transform.position = finalPosition;
                SoundManager.PlaySound(SoundType.TELEPORT);
                // Spawnear partículas en el destino si está activado
                if (spawnAtDestination)
                    {
                        SpawnTeleportParticles(finalPosition);
                    }

                    OnPlayerTeleported?.Invoke(finalPosition);
                    CancelPreview();
                    lastTeleportTime = Time.time;

                    Debug.Log($"Teleport exitoso a: {finalPosition}");
                }
                else
                {
                    Debug.LogWarning("No se pudo encontrar una posición segura para el teleport");
                    CancelPreview();
                }
            }
            else
            {
                Debug.LogWarning("Posición fuera del rango máximo de teleport");
                CancelPreview();
            }
        }

        private void SpawnTeleportParticles(Vector3 position)
        {
            if (teleportParticlePrefab != null)
            {
                GameObject particles = Instantiate(teleportParticlePrefab, position, Quaternion.identity);
                if (particleSpawnPoint != null)
                {
                    particles.transform.rotation = particleSpawnPoint.rotation;
                }
                Debug.Log($"Partículas de teleport spawneadas en: {position}");
            }
            else
            {
                Debug.LogWarning("Teleport Particle Prefab no está asignado en " + gameObject.name);
            }
        }

        private bool IsValidPosition(Vector3 position)
        {
            RaycastHit hit;
            if (Physics.Raycast(position + Vector3.up * 0.5f, Vector3.down, out hit, 1f, validLayers))
            {
                return true;
            }
            return false;
        }

        private void SlowTime()
        {
            if (isTimeSlowed) return;
            StartCoroutine(LerpTimeScale(Time.timeScale, slowdownFactor, slowdownTransitionTime));
            isTimeSlowed = true;
        }

        private void RestoreTime()
        {
            if (!isTimeSlowed) return;
            StartCoroutine(LerpTimeScale(Time.timeScale, 1f, speedupTransitionTime));
            isTimeSlowed = false;
        }

        void OnDecisionTimeout()
        {
            isDecisionActive = false;
            CancelPreview();
            lastTeleportTime = Time.time;
        }

        private IEnumerator LerpTimeScale(float start, float end, float duration)
        {
            float elapsed = 0f;
            while (elapsed < duration)
            {
                Time.timeScale = Mathf.Lerp(start, end, elapsed / duration);
                Time.fixedDeltaTime = originalFixedDeltaTime * Time.timeScale;
                elapsed += Time.unscaledDeltaTime;
                yield return null;
            }
            Time.timeScale = end;
            Time.fixedDeltaTime = originalFixedDeltaTime * end;
        }

        // NUEVO: Métodos para debugging visual
        void OnDrawGizmosSelected()
        {
            if (isPreviewing && isTargetPositionSafe)
            {
                Gizmos.color = Color.green;
                // Dibujar cápsula manualmente con cilindro y esferas
                Vector3 center = targetPosition + Vector3.up * (playerHeight / 2f);
                Vector3 top = center + Vector3.up * (playerHeight / 2f - playerRadius);
                Vector3 bottom = center + Vector3.down * (playerHeight / 2f - playerRadius);

                // Cilindro central
                DrawWireCylinder(center, playerRadius, playerHeight - playerRadius * 2);
                // Esferas superior e inferior
                Gizmos.DrawWireSphere(top, playerRadius);
                Gizmos.DrawWireSphere(bottom, playerRadius);
            }

            // Mostrar radio de reposicionamiento
            if (isPreviewing)
            {
                Gizmos.color = Color.yellow;
                DrawWireCircle(targetPosition, repositionRadius);
            }
        }

        // Helper para dibujar cilindro wireframe
        private void DrawWireCylinder(Vector3 center, float radius, float height)
        {
            int segments = 16;
            Vector3 top = center + Vector3.up * height / 2f;
            Vector3 bottom = center - Vector3.up * height / 2f;

            // Círculos superior e inferior
            for (int i = 0; i < segments; i++)
            {
                float angle1 = (float)i / segments * 2 * Mathf.PI;
                float angle2 = (float)(i + 1) / segments * 2 * Mathf.PI;

                Vector3 point1Top = top + new Vector3(Mathf.Cos(angle1) * radius, 0, Mathf.Sin(angle1) * radius);
                Vector3 point2Top = top + new Vector3(Mathf.Cos(angle2) * radius, 0, Mathf.Sin(angle2) * radius);
                Vector3 point1Bottom = bottom + new Vector3(Mathf.Cos(angle1) * radius, 0, Mathf.Sin(angle1) * radius);
                Vector3 point2Bottom = bottom + new Vector3(Mathf.Cos(angle2) * radius, 0, Mathf.Sin(angle2) * radius);

                // Líneas de los círculos
                Gizmos.DrawLine(point1Top, point2Top);
                Gizmos.DrawLine(point1Bottom, point2Bottom);

                // Líneas verticales (solo cada 4 segmentos para no saturar)
                if (i % 4 == 0)
                {
                    Gizmos.DrawLine(point1Top, point1Bottom);
                }
            }
        }

        // Helper para dibujar círculo wireframe
        private void DrawWireCircle(Vector3 center, float radius)
        {
            int segments = 32;
            for (int i = 0; i < segments; i++)
            {
                float angle1 = (float)i / segments * 2 * Mathf.PI;
                float angle2 = (float)(i + 1) / segments * 2 * Mathf.PI;

                Vector3 point1 = center + new Vector3(Mathf.Cos(angle1) * radius, 0, Mathf.Sin(angle1) * radius);
                Vector3 point2 = center + new Vector3(Mathf.Cos(angle2) * radius, 0, Mathf.Sin(angle2) * radius);

                Gizmos.DrawLine(point1, point2);
            }
        }
    }