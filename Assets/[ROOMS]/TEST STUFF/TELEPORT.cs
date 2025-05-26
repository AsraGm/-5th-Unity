using System.Collections;
using UnityEngine;

public class TELEPORT : MonoBehaviour
{
    [Header("Keybinds")]
    [Tooltip("Tecla para activar mecanica")]
    public KeyCode previewKey = KeyCode.Space; // Tecla para previsualizar
    [Tooltip("Tecla para confirmar")]
    public KeyCode confirmKey = KeyCode.Mouse0; // Clic izquierdo para confirmar

    [Header("Configuraci�n")]
    public float maxDistance = 10f; // Rango m�ximo de teletransporte
    public LayerMask validLayers; // Capas v�lidas (suelo, etc.)
    public GameObject previewPrefab; // Prefab para la previsualizaci�n
    public Color previewColor = Color.cyan; // Color del visualizador de distancia

    [Header("Visualizaci�n (Debug)")]
    public bool showRangeInGame = true; // Mostrar l�nea de rango en el juego
    private LineRenderer rangeLine; // L�nea para mostrar el rango

    [Header("Cooldown")]
    public float cooldownTime = 2f;
    private float lastTeleportTime;

    [Header("Time Slowdown")]
    [Tooltip("Escala de tiempo durante la previsualizaci�n (0.1 = 10% de velocidad normal)")]
    public float slowdownFactor = 0.2f;
    [Tooltip("Tiempo que tarda en aplicarse el slowdown (en segundos)")]
    public float slowdownTransitionTime = 0.3f;
    [Tooltip("Tiempo que tarda en volver a la normalidad (en segundos)")]
    public float speedupTransitionTime = 0.5f;

    [Header("Teleport Timer")]
    [Tooltip("Tiempo m�ximo para confirmar el teletransporte (en segundos)")]
    public float decisionTime = 3f; // 3 segundos para decidir
    private float decisionTimer;
    private bool isDecisionActive = false;

    [Header("Teleport Area")]
    public Color validColor = Color.cyan;    // Color cuando el punto es v�lido
    public Color invalidColor = Color.red;   // Color cuando est� fuera de rango
    public bool hidePreviewIfInvalid = true; // Si queremos ocultar la previsualizaci�n al exceder el rango

    private float originalFixedDeltaTime; // Para evitar romper el motor de f�sicas
    private bool isTimeSlowed = false;

    private GameObject currentPreview;
    private Vector3 targetPosition;
    private bool isPreviewing = false;

    void Start()
    {
        originalFixedDeltaTime = Time.fixedDeltaTime;
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
        // Si est� en cooldown, ignora toda la l�gica de teletransporte.
        if (IsOnCooldown()) return;

        if (isDecisionActive)
        {
            decisionTimer -= Time.unscaledDeltaTime; // Usa unscaled para ignorar el slowdown
            Debug.Log($"Tiempo restante: {decisionTimer:F} segundos");

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


        if (rangeLine != null) rangeLine.enabled = true;
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
        isDecisionActive = false;
        Destroy(currentPreview);
        RestoreTime();

        if (rangeLine != null) rangeLine.enabled = false;
        {
            rangeLine.enabled = false; // Ocultar l�nea
        }
    }

    void Teleport()
    {
        float distanceToTarget = Vector3.Distance(transform.position, targetPosition);

        // Si el punto es v�lido (dentro del rango y en capa v�lida)
        if (distanceToTarget <= maxDistance && IsValidPosition(targetPosition))
        {
            transform.position = targetPosition;
            CancelPreview();
            lastTeleportTime = Time.time; // Solo activa cooldown si fue exitoso
        }
        else
        {
            Debug.Log("�Posici�n no v�lida! Intenta de nuevo.");
            CancelPreview(); // Cancela sin activar cooldown
        }
    }

    // M�todo para verificar si la posici�n es v�lida 
    private bool IsValidPosition(Vector3 position)
    {
        RaycastHit hit;
        // Rayo hacia abajo desde la posici�n para ver si hay suelo
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
        Debug.Log("�Tiempo agotado! Cooldown activado.");
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
            Time.fixedDeltaTime = originalFixedDeltaTime * Time.timeScale; // Ajusta las f�sicas
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