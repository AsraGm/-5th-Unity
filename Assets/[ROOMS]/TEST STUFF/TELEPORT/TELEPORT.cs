using System.Collections;
using UnityEngine;

public class TELEPORT : MonoBehaviour
{
    [Header("Keybinds")]
    [Tooltip("Tecla para activar mecanica")]
    public KeyCode previewKey = KeyCode.Space; 
    [Tooltip("Tecla para confirmar")]
    public KeyCode confirmKey = KeyCode.Mouse0; 

    [Header("Configuración")]
     [Tooltip("Rango máximo de teletransporte")]
    public float maxDistance = 10f;
    [Tooltip("Capas válidas (suelo, etc.)")]
    public LayerMask validLayers; 
    [Tooltip("Prefab para la previsualización")]
    public GameObject previewPrefab; 
    [Tooltip("Color del visualizador de distancia")]
    public Color previewColor = Color.cyan;

    [Header("Visualización (Debug)")]
    [Tooltip("Mostrar línea de rango en el juego")]
    public bool showRangeInGame = true;

    [Header("Cooldown")]
    public float cooldownTime = 2f;
    public float lastTeleportTime;

    [Header("Time Slowdown")]
    [Tooltip("Escala de tiempo durante la previsualización (0.1 = 10% de velocidad normal)")]
    public float slowdownFactor = 0.2f;
    [Tooltip("Tiempo que tarda en aplicarse el slowdown (en segundos)")]
    public float slowdownTransitionTime = 0.3f;
    [Tooltip("Tiempo que tarda en volver a la normalidad (en segundos)")]
    public float speedupTransitionTime = 0.5f;

    [Header("Teleport Timer")]
    [Tooltip("Tiempo máximo para confirmar el teletransporte (en segundos)")]
    public float decisionTime = 3f;
    private float decisionTimer;
    private bool isDecisionActive = false;

    [Header("Teleport Area")]
    public Color validColor = Color.cyan;    // Color cuando el punto es válido
    public Color invalidColor = Color.red;   // Color cuando está fuera de rango
    public bool hidePreviewIfInvalid = true; // Si queremos ocultar la previsualización al exceder el rango

    private float originalFixedDeltaTime; // Para evitar romper el motor de físicas
    private bool isTimeSlowed = false;

    private GameObject currentPreview;
    private Vector3 targetPosition;
    public bool isPreviewing = false;

    void Start()
    {
        originalFixedDeltaTime = Time.fixedDeltaTime;
    }

    void Update()
    {
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
            UpdatePreview();
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
        decisionTimer = decisionTime; // Reinicia el temporizador
        currentPreview = Instantiate(previewPrefab);
        SlowTime();

        UpdatePreview();
    }

    void UpdatePreview()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        bool isHit = Physics.Raycast(ray, out hit, Mathf.Infinity, validLayers); // Ahora sin límite de distancia

        if (isHit)
        {
            // Mover el prefab SIEMPRE a la posición del mouse (aunque esté lejos)
            currentPreview.transform.position = hit.point + Vector3.up * 0.1f;

            // Calcular distancia desde el jugador al punto de impacto
            float distanceToHit = Vector3.Distance(transform.position, hit.point);
            bool isValid = distanceToHit <= maxDistance;

            // Cambiar color según si está en rango o no
            Renderer previewRenderer = currentPreview.GetComponent<Renderer>();
            if (previewRenderer != null)
            {
                if (isValid)
                {
                    previewRenderer.material.color = validColor; // Color normal si es válido
                }
                else
                {
                    // Parpadeo entre rojo y negro (opcional: usar "Color.Lerp" para suavidad)
                    float blinkSpeed = 5f; // Velocidad del parpadeo
                    float lerpValue = Mathf.PingPong(Time.time * blinkSpeed, 1);
                    previewRenderer.material.color = Color.Lerp(invalidColor, Color.black, lerpValue);
                }
            }

            // Guardar posición objetivo (aunque esté fuera de rango)
            targetPosition = hit.point;
        }
    }

    public void CancelPreview()
    {
        isPreviewing = false;
        isDecisionActive = false;
        Destroy(currentPreview);
        RestoreTime();
    }

    void Teleport()
    {
        float distanceToTarget = Vector3.Distance(transform.position, targetPosition);

        // Si el punto es válido (dentro del rango y en capa válida)
        if (distanceToTarget <= maxDistance && IsValidPosition(targetPosition))
        {
            transform.position = targetPosition;
            CancelPreview();
            lastTeleportTime = Time.time; // Solo activa cooldown si fue exitoso
        }
        else
        {
            CancelPreview(); // Cancela sin activar cooldown
        }
    }

    // Método para verificar si la posición es válida 
    private bool IsValidPosition(Vector3 position)
    {
        RaycastHit hit;
        // Rayo hacia abajo desde la posición para ver si hay suelo
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
        lastTeleportTime = Time.time; // Activa el cooldown
    }

    private IEnumerator LerpTimeScale(float start, float end, float duration)
    {
        float elapsed = 0f;
        while (elapsed < duration)
        {
            Time.timeScale = Mathf.Lerp(start, end, elapsed / duration);
            Time.fixedDeltaTime = originalFixedDeltaTime * Time.timeScale; // Ajusta las físicas
            elapsed += Time.unscaledDeltaTime; // Usamos unscaled para que no afecte el slowdown
            yield return null;
        }
        Time.timeScale = end;
        Time.fixedDeltaTime = originalFixedDeltaTime * end;
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