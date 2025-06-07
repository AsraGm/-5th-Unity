using System.Collections;
using UnityEngine;

public class Enemy : MonoBehaviour
{
    [SerializeField] private float forceImpulsive = 500f; // Fuerza del empuje suave
    [SerializeField] private float pushDuration = 0.5f; // Duración del empuje suave
    [SerializeField] private int damage = 1; // Daño infligido al jugador

    private void OnCollisionEnter(Collision collision)
    {
        if (collision.collider.CompareTag("Player"))
        {
            var playerHealth = collision.collider.GetComponentInParent<PlayerHealth>(); // la colicion esta dentro de character, consigo el componente emparentado con GetComponentInParent
            playerHealth.TakeDamagePlayer(damage); // Llama al método de daño del jugador
            PushTarget(collision.transform); // Llama al método para empujar al jugador

        }
    }

    private void PushTarget(Transform target)
    {
        Rigidbody playerRb = target.transform.GetComponent<Rigidbody>(); // Obtener el Rigidbody del jugador
        Vector3 pushDirection = (target.transform.position - transform.position).normalized; // Dirección del empuje hacia el jugador
        StartCoroutine(PushTargetSmooth(playerRb, pushDirection, forceImpulsive, pushDuration)); //corrutina para empujar al Target suavemente.

    }
    IEnumerator PushTargetSmooth(Rigidbody playerRb, Vector3 direction, float totalForce, float duration)
    {
        float elapsed = 0f;
        float forcePerSecond = totalForce / duration; // Divide la fuerza total entre la duración para aplicar fuerza gradualmente.

        while (elapsed < duration)
        {
            playerRb.AddForce(forcePerSecond * Time.fixedDeltaTime * direction, ForceMode.VelocityChange); //  ForceMode.VelocityChange Afecta directamente la velocidad ignorando la masa.
            elapsed += Time.fixedDeltaTime;
            yield return new WaitForFixedUpdate(); // Pausa la corrutina hasta el próximo FixedUpdate.
        }
    }
}
