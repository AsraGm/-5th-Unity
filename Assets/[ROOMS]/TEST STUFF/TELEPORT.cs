using UnityEngine;

public class TELEPORT : MonoBehaviour
{
    [Header("Keybinds")]
    public KeyCode previewKey = KeyCode.Space; // Tecla para previsualizar
    public KeyCode confirmKey = KeyCode.Mouse0; // Clic izquierdo para confirmar

    [Header("Configuración")]
    public float maxDistance = 10f; // Rango máximo de teletransporte
    public LayerMask validLayers; // Capas válidas (suelo, etc.)
    public GameObject previewPrefab; // Prefab para la previsualización
    public Color previewColor = Color.cyan; // Color del visualizador de distancia

    [Header("Visualización (Debug)")]
    public bool showRangeInGame = true; // Mostrar línea de rango en el juego
    private LineRenderer rangeLine; // Línea para mostrar el rango

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
            rangeLine.enabled = false; // Solo visible durante la previsualización
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
            rangeLine.enabled = true; // Mostrar línea de rango
        }

        UpdatePreview();
    }

    void UpdatePreview()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;

        if (Physics.Raycast(ray, out hit, maxDistance, validLayers))
        {
            targetPosition = hit.point;
            currentPreview.transform.position = targetPosition + Vector3.up * 0.1f;

            // Actualizar línea de rango (desde el jugador hasta el objetivo)
            if (rangeLine != null)
            {
                rangeLine.SetPosition(0, transform.position);
                rangeLine.SetPosition(1, targetPosition);
            }
        }
    }

    void CancelPreview()
    {
        isPreviewing = false;
        Destroy(currentPreview);

        if (rangeLine != null)
        {
            rangeLine.enabled = false; // Ocultar línea
        }
    }

    void Teleport()
    {
        transform.position = targetPosition;
        CancelPreview();
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