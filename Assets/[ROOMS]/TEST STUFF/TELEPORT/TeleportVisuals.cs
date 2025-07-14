using UnityEngine;
using System.Collections;

public class TeleportVisuals : MonoBehaviour
{
    [Header("Visual Settings")]
    public GameObject previewPrefab;
    public Color previewColor = Color.cyan;
    public bool showRangeInGame = true;
    public Color validColor = Color.cyan;
    public Color invalidColor = Color.red;
    public bool hidePreviewIfInvalid = false; // Cambiado a false para mantener el comportamiento original

    private GameObject currentPreview;

    public void CreatePreview()
    {
        if (previewPrefab != null)
        {
            currentPreview = Instantiate(previewPrefab);
        }
    }

    public void UpdatePreviewVisual(Vector3 position, bool isValid)
    {
        if (currentPreview == null) return;

        currentPreview.transform.position = position + Vector3.up * 0.1f;

        Renderer previewRenderer = currentPreview.GetComponent<Renderer>();
        if (previewRenderer != null)
        {
            if (isValid)
            {
                previewRenderer.material.color = validColor;
            }
            else
            {
                float blinkSpeed = 5f;
                float lerpValue = Mathf.PingPong(Time.time * blinkSpeed, 1);
                previewRenderer.material.color = Color.Lerp(invalidColor, Color.black, lerpValue);
            }
        }
    }

    public void DestroyPreview()
    {
        if (currentPreview != null)
        {
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