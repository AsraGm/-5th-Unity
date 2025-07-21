using UnityEngine;

public class NPCTransformation : MonoBehaviour
{
    [Header("Visual Changes")]
    [Tooltip("Material/Shader para modo enemigo")]
    [SerializeField] private Material enemyMaterial;
    [Tooltip("Renderer del personaje")]
    [SerializeField] private Renderer characterRenderer;

    private NPCController controller;
    private Material originalMaterial;

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
        CacheOriginalMaterial();
    }

    private void CacheOriginalMaterial()
    {
        if (characterRenderer != null)
        {
            originalMaterial = characterRenderer.material;
        }
    }

    public void ExecuteTransformation()
    {
        Debug.Log($"¡Transformando {gameObject.name} a enemigo!");

        // Cambio visual a enemigo
        if (characterRenderer != null && enemyMaterial != null)
        {
            characterRenderer.material = enemyMaterial;
        }
    }

    public void RevertToNPC()
    {
        Debug.Log($"Revirtiendo {gameObject.name} a NPC");

        // Restaurar material original
        if (characterRenderer != null && originalMaterial != null)
        {
            characterRenderer.material = originalMaterial;
        }
    }
}