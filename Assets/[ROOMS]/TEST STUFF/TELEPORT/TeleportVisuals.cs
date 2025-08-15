using UnityEngine;
using System.Collections;

public class TeleportVisuals : MonoBehaviour
{
    [Header("Visual Settings")]
    public GameObject previewPrefab;
    public Material previewMaterial; // Material que se va a modificar (asignar en Inspector)
    public Color previewColor = Color.cyan;
    public bool showRangeInGame = true;
    public Color validColor = Color.cyan;
    public Color invalidColor = Color.red;
    public bool hidePreviewIfInvalid = false; // Cambiado a false para mantener el comportamiento original

    private GameObject currentPreview;
    private Color originalColor; // Para restaurar el color original

    public void CreatePreview()
    {
        if (previewPrefab != null)
        {
            currentPreview = Instantiate(previewPrefab);

            // Guardar el color original del material asignado en Inspector
            if (previewMaterial != null)
            {
                originalColor = previewMaterial.color;
            }
        }
    }

    public void UpdatePreviewVisual(Vector3 position, bool isValid)
    {
        if (currentPreview == null || previewMaterial == null) return;

        currentPreview.transform.position = position + Vector3.up * 0.1f;

        if (isValid)
        {
            previewMaterial.color = validColor;
        }
        else
        {
            float blinkSpeed = 5f;
            float lerpValue = Mathf.PingPong(Time.time * blinkSpeed, 1);
            previewMaterial.color = Color.Lerp(invalidColor, Color.black, lerpValue);
        }
    }

    public void DestroyPreview()
    {
        if (currentPreview != null)
        {
            // Restaurar color original antes de destruir (opcional)
            if (previewMaterial != null)
            {
                previewMaterial.color = originalColor;
            }

            Destroy(currentPreview);
            currentPreview = null;
        }
    }

    void OnDrawGizmosSelected()
    {
        Gizmos.color = previewColor;
        var controller = GetComponent<TeleportCore>();
        if (controller != null)
        {
            Gizmos.DrawWireSphere(transform.position, controller.maxDistance);
        }
    }

    void OnDestroy()
    {
        DestroyPreview();
    }
}