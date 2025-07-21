using UnityEngine;

public class EnemyTeleportDisruptor : MonoBehaviour
{
    [Header("Configuración")]
    [Tooltip("Si está activado, el enemigo cancelará el teleport al tocar al jugador")]
    public bool disruptTeleport = true;

    [Tooltip("Si está activado, también activará el cooldown del teleport")]
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
        // Cancela el teleport si está en proceso
        if (teleportScript.isPreviewing)
        {
            teleportScript.CancelPreview();

            // Activa el cooldown si está configurado
            if (activateCooldown)
            {
                teleportScript.lastTeleportTime = Time.time;
            }
        }
    }
}
