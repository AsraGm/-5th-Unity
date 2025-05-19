using UnityEngine;

public class TELEPORT : MonoBehaviour
{
    [Header("Keybinds")]
    public KeyCode previewKey = KeyCode.Space; // Tecla para previsualizar
    public KeyCode confirmKey = KeyCode.Mouse0; // Clic izquierdo para confirmar

    [Header("Configuraci�n")]
    public float maxDistance = 10f; // Rango m�ximo de teletransporte
    public LayerMask validLayers; // Capas v�lidas (suelo, etc.)
    public GameObject previewPrefab; // Prefab para la previsualizaci�n
    public Color previewColor = Color.cyan; // Color del visualizador de distancia

    [Header("Visualizaci�n (Debug)")]
    public bool showRangeInGame = true; // Mostrar l�nea de rango en el juego
    private LineRenderer rangeLine; // L�nea para mostrar el rango

    [Header("Feedback Visual")]
    public Color validColor = Color.cyan;    // Color cuando el punto es v�lido
    public Color invalidColor = Color.red;   // Color cuando est� fuera de rango
    public bool hidePreviewIfInvalid = true; // Si queremos ocultar la previsualizaci�n al exceder el rango

    private GameObject currentPreview;
    private Vector3 targetPosition;
    private bool isPreviewing = false;

    void Start()
    {
        // Configurar LineRenderer para mostrar el rango
        if (showRangeInGame)
        {
            rangeLine = gameObject.AddComponent<LineRenderer>();
            rangeLine.startWidth = 0.1f;
            rangeLine.endWidth = 0.1f;
            rangeLine.material = new Material(Shader.Find("Unlit/Color")) { color = previewColor };
            rangeLine.positionCount = 2;
            rangeLine.enabled = false; // Solo visible durante la previsualizaci�n
        }
    }

    void Update()
    {
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
            UpdatePreview();
        }
    }

    void StartPreview()
    {
        isPreviewing = true;
        currentPreview = Instantiate(previewPrefab);

        if (rangeLine != null)
        {
            rangeLine.enabled = true; // Mostrar l�nea de rango
        }

        UpdatePreview();
    }

    void UpdatePreview()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        bool isHit = Physics.Raycast(ray, out hit, Mathf.Infinity, validLayers); // Ahora sin l�mite de distancia

        if (isHit)
        {
            // Mover el prefab SIEMPRE a la posici�n del mouse (aunque est� lejos)
            currentPreview.transform.position = hit.point + Vector3.up * 0.1f;

            // Calcular distancia desde el jugador al punto de impacto
            float distanceToHit = Vector3.Distance(transform.position, hit.point);
            bool isValid = distanceToHit <= maxDistance;

            // Cambiar color seg�n si est� en rango o no
            Renderer previewRenderer = currentPreview.GetComponent<Renderer>();
            if (previewRenderer != null)
            {
                if (isValid)
                {
                    previewRenderer.material.color = validColor; // Color normal si es v�lido
                }
                else
                {
                    // Parpadeo entre rojo y negro (opcional: usar "Color.Lerp" para suavidad)
                    float blinkSpeed = 5f; // Velocidad del parpadeo
                    float lerpValue = Mathf.PingPong(Time.time * blinkSpeed, 1);
                    previewRenderer.material.color = Color.Lerp(invalidColor, Color.black, lerpValue);
                }
            }

            // Guardar posici�n objetivo (aunque est� fuera de rango)
            targetPosition = hit.point;

            // Actualizar l�nea de rango (mostrar hasta donde llega el rango v�lido)
            if (rangeLine != null)
            {
                rangeLine.enabled = true;
                rangeLine.SetPosition(0, transform.position);

                if (isValid)
                {
                    // Dentro de rango: l�nea hasta el objetivo
                    rangeLine.SetPosition(1, targetPosition);
                    rangeLine.material.color = validColor;
                }
                else
                {
                    // Fuera de rango: l�nea hasta el borde del rango
                    Vector3 direction = (hit.point - transform.position).normalized;
                    Vector3 edgePosition = transform.position + direction * maxDistance;
                    rangeLine.SetPosition(1, edgePosition);
                    rangeLine.material.color = invalidColor;
                }
            }
        }
    }

    void CancelPreview()
    {
        isPreviewing = false;
        Destroy(currentPreview);

        if (rangeLine != null)
        {
            rangeLine.enabled = false; // Ocultar l�nea
        }
    }

    void Teleport()
    {
        float distanceToTarget = Vector3.Distance(transform.position, targetPosition);

        if (distanceToTarget <= maxDistance)
        {
            transform.position = targetPosition;
            CancelPreview();
        }
        else
        {
            Debug.Log("�No puedes teletransportarte tan lejos!");
            // Opcional: Sonido de error / vibraci�n / UI de advertencia
        }
    }

    // Dibujar Gizmo en el Editor (solo visible en Scene View)
    void OnDrawGizmosSelected()
    {
        Gizmos.color = previewColor;
        Gizmos.DrawWireSphere(transform.position, maxDistance);
    }

    void OnDestroy()
    {
        if (currentPreview != null)
        {
            Destroy(currentPreview);
        }
    }
}