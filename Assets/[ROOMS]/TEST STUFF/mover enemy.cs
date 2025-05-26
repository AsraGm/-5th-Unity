using UnityEngine;

public class moverenemy : MonoBehaviour
{
    // Primer punto (puedes poner la posición inicial del objeto)
    public Vector3 puntoA;
    // Segundo punto (el destino al que quieres que vaya)
    public Vector3 puntoB;

    // Velocidad de movimiento (editable desde el Inspector)
    public float velocidad = 5f;

    // Variable interna para saber hacia dónde se mueve
    private Vector3 objetivoActual;

    void Start()
    {
        // Comienza yendo hacia el punto B
        objetivoActual = puntoB;
        // Si no has asignado puntoA en el Inspector, lo toma de la posición inicial
        if (puntoA == Vector3.zero)
            puntoA = transform.position;
    }

    void Update()
    {
        // Mueve el objeto hacia el objetivo actual
        transform.position = Vector3.MoveTowards(transform.position, objetivoActual, velocidad * Time.deltaTime);

        // Si llega al objetivo, cambia al otro punto
        if (Vector3.Distance(transform.position, objetivoActual) < 0.01f)
        {
            objetivoActual = (objetivoActual == puntoA) ? puntoB : puntoA;
        }
    }
}