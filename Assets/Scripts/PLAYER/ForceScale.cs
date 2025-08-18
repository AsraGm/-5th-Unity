using UnityEngine;

public class ForceScale : MonoBehaviour
{
    private Vector3 originalScale;
    private Rigidbody rb;

    void Awake()
    {
        originalScale = transform.localScale;
        rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.freezeRotation = true; // Congelar rotación como medida adicional
        }
    }

    void LateUpdate()
    {
        // Mantener la escala constante
        transform.localScale = originalScale;
    }
}