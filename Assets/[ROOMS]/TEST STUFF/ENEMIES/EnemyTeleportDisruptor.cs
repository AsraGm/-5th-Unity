using UnityEngine;

public class EnemyTeleportDisruptor : MonoBehaviour
{
    [Header("Configuraci�n")]
    [Tooltip("Si est� activado, el enemigo cancelar� el teleport al tocar al jugador")]
    public bool disruptTeleport = true;

    [Tooltip("Si est� activado, tambi�n activar� el cooldown del teleport")]
    public bool activateCooldown = true;

    private void OnCollisionEnter(Collision collision)
    {
        HandlePlayerCollision(collision.collider);
    }

    private void OnTriggerEnter(Collider other)
    {
        HandlePlayerCollision(other);
    }

    private void HandlePlayerCollision(Collider playerCollider)
    {
        if (!disruptTeleport) return;

        // Verificar si el objeto es el jugador
        if (playerCollider.CompareTag("Player"))
        {
            TELEPORT teleportScript = playerCollider.GetComponentInChildren<TELEPORT>();

            if (teleportScript == null)
            {
                teleportScript = playerCollider.GetComponentInParent<TELEPORT>();
            }

            if (teleportScript != null)
            {
                DisruptTeleport(teleportScript);
            }
        }
    }

    private void DisruptTeleport(TELEPORT teleportScript)
    {
        // Cancela el teleport si est� en proceso
        if (teleportScript.isPreviewing)
        {
            teleportScript.CancelPreview();

            // Activa el cooldown si est� configurado
            if (activateCooldown)
            {
                teleportScript.lastTeleportTime = Time.time;
            }
        }
    }
}
