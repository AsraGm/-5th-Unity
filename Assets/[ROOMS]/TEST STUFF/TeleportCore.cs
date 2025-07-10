using System;
using System.Collections;
using UnityEngine;

public class TeleportCore : MonoBehaviour
{
    [Header("Keybinds")]
    public KeyCode previewKey = KeyCode.Space;
    public KeyCode confirmKey = KeyCode.Mouse0;

    [Header("Configuración")]
    public float maxDistance = 10f;
    public LayerMask validLayers;
    public float cooldownTime = 2f;
    public float lastTeleportTime;

    [Header("Time Slowdown")]
    public float slowdownFactor = 0.2f;
    public float slowdownTransitionTime = 0.3f;
    public float speedupTransitionTime = 0.5f;

    [Header("Teleport Timer")]
    public float decisionTime = 3f;
    private float decisionTimer;
    private bool isDecisionActive = false;

    private float originalFixedDeltaTime;
    private bool isTimeSlowed = false;
    public bool isPreviewing = false;
    private Vector3 targetPosition;

    public static event Action<Vector3> OnPlayerTeleported;
    // Referencia al visualizador
    private TeleportVisuals visualizer;


    void Start()
    {
        originalFixedDeltaTime = Time.fixedDeltaTime;
        visualizer = GetComponent<TeleportVisuals>();
    }

    void Update()
    {
        if (Time.timeScale == 0f || IsOnCooldown()) return;

        if (isDecisionActive)
        {
            decisionTimer -= Time.unscaledDeltaTime;
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
            UpdateTargetPosition();
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
        decisionTimer = decisionTime;
        visualizer.CreatePreview();
        SlowTime();
    }

    void UpdateTargetPosition()
    {
        Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
        RaycastHit hit;
        bool isHit = Physics.Raycast(ray, out hit, Mathf.Infinity, validLayers);

        if (isHit)
        {
            targetPosition = hit.point;
            float distanceToHit = Vector3.Distance(transform.position, hit.point);
            visualizer.UpdatePreviewVisual(hit.point, distanceToHit <= maxDistance);
        }
    }

    public void CancelPreview()
    {
        isPreviewing = false;
        isDecisionActive = false;
        visualizer.DestroyPreview();
        RestoreTime();
    }

    void Teleport()
    {
        float distanceToTarget = Vector3.Distance(transform.position, targetPosition);

        if (distanceToTarget <= maxDistance && IsValidPosition(targetPosition))
        {
            transform.position = targetPosition;
            OnPlayerTeleported?.Invoke(targetPosition); // Notifica a los enemigos
            CancelPreview();
            lastTeleportTime = Time.time;
        }
        else
        {
            Debug.Log("¡Posición no válida! Intenta de nuevo.");
            CancelPreview();
        }
    }

    private bool IsValidPosition(Vector3 position)
    {
        RaycastHit hit;
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
        Debug.Log("¡Tiempo agotado! Cooldown activado.");
        isDecisionActive = false;
        CancelPreview();
        lastTeleportTime = Time.time;
    }

    private IEnumerator LerpTimeScale(float start, float end, float duration)
    {
        float elapsed = 0f;
        while (elapsed < duration)
        {
            Time.timeScale = Mathf.Lerp(start, end, elapsed / duration);
            Time.fixedDeltaTime = originalFixedDeltaTime * Time.timeScale;
            elapsed += Time.unscaledDeltaTime;
            yield return null;
        }
        Time.timeScale = end;
        Time.fixedDeltaTime = originalFixedDeltaTime * end;
    }
}