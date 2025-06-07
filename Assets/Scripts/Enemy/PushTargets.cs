//using System.Collections;
//using UnityEngine;

//public class PushTargets : MonoBehaviour
//{
//    public void Push(Transform target, float forceImpulsive, float pushDuration)
//    {
//        Rigidbody Rb = target.transform.GetComponent<Rigidbody>(); // Obtener el Rigidbody del jugador
//        Vector3 pushDirection = (target.transform.position - transform.position).normalized; // Dirección del empuje hacia el jugador
//        StartCoroutine(PushTargetSmooth(Rb, pushDirection, forceImpulsive, pushDuration)); //corrutina para empujar al Target suavemente.

//    }
//    private IEnumerator PushTargetSmooth(Rigidbody playerRb, Vector3 direction, float totalForce, float duration)
//    {
//        float elapsed = 0f;
//        float forcePerSecond = totalForce / duration; // Divide la fuerza total entre la duración para aplicar fuerza gradualmente.

//        while (elapsed < duration)
//        {
//            playerRb.AddForce(forcePerSecond * Time.fixedDeltaTime * direction, ForceMode.VelocityChange); //  ForceMode.VelocityChange Afecta directamente la velocidad ignorando la masa.
//            elapsed += Time.fixedDeltaTime;
//            yield return new WaitForFixedUpdate(); // Pausa la corrutina hasta el próximo FixedUpdate.
//        }
//    }
//}
