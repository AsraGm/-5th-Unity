using UnityEngine;
using System.Collections;

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

    private Transform _playerTransform;
    private bool _isTeleporting = false;

    // Cacheamos el componente para evitar b�squedas repetidas
    private void Awake()
    {
        GameObject player = GameObject.FindGameObjectWithTag("Player");
        if (player != null)
        {
            _playerTransform = player.transform;
        }
        else
        {
            Debug.LogWarning("No se encontr� un GameObject con tag 'Player' en la escena.");
        }
    }

    private void OnEnable()
    {
        TeleportCore.OnPlayerTeleported += OnPlayerTeleported;
    }

    private void OnDisable()
    {
        TeleportCore.OnPlayerTeleported -= OnPlayerTeleported;
    }

    private void OnPlayerTeleported(Vector3 playerNewPosition)
    {
        if (_isTeleporting || _playerTransform == null) return;

        StartCoroutine(TeleportToPlayer(playerNewPosition));
    }

    private IEnumerator TeleportToPlayer(Vector3 playerPosition)
    {
        _isTeleporting = true;
        yield return new WaitForSeconds(teleportDelay);

        // Calculamos posici�n aleatoria alrededor del jugador
        Vector3 randomDirection = Random.insideUnitSphere.normalized;
        randomDirection.y = 0f; // Ignoramos el eje Y para direcci�n horizontal

        Vector3 teleportPosition = playerPosition +
                                 randomDirection *
                                 Random.Range(minDistance, maxDistance);

        // Aplicamos offset vertical
        teleportPosition.y += verticalOffset;

        transform.position = teleportPosition;
        _isTeleporting = false;
    }

    // ========== VISUALIZACI�N EN EDITOR ==========
    private void OnDrawGizmosSelected()
    {
#if UNITY_EDITOR
        // Solo ejecuta en el Editor para evitar overhead en builds
        CachePlayerTransformIfNeeded();

        if (_playerTransform != null)
        {
            // C�rculo verde: Distancia m�nima
            Gizmos.color = new Color(0, 1, 0, 0.5f);
            Gizmos.DrawWireSphere(_playerTransform.position, minDistance);

            // C�rculo rojo: Distancia m�xima
            Gizmos.color = new Color(1, 0, 0, 0.3f);
            Gizmos.DrawWireSphere(_playerTransform.position, maxDistance);

            // L�nea de referencia
            Gizmos.color = Color.white;
            Gizmos.DrawLine(transform.position, _playerTransform.position);
        }
#endif
    }

    // Helper para el Editor
    private void CachePlayerTransformIfNeeded()
    {
        if (_playerTransform == null && !Application.isPlaying)
        {
            GameObject player = GameObject.FindGameObjectWithTag("Player");
            if (player != null) _playerTransform = player.transform;
        }
    }
}