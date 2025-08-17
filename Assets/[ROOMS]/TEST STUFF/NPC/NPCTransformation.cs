using UnityEngine;

public class NPCTransformation : MonoBehaviour
{
    private NPCController controller;

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
    }

    public void ExecuteTransformation()
    {
        Debug.Log($"¡Transformando {gameObject.name} a enemigo!");

        // Aquí puedes agregar otras lógicas de transformación específicas
        // que no sean visuales (las visuales las maneja NPCEffectsManager)

        // Por ejemplo: cambios de stats, habilidades, comportamiento, etc.
    }

    public void RevertToNPC()
    {
        Debug.Log($"Revirtiendo {gameObject.name} a NPC");

        // Aquí puedes agregar lógicas de reversión específicas
        // Por ejemplo: restaurar stats originales, etc.
    }
}