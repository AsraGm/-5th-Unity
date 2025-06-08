using System.Collections.Generic;
using UnityEngine;

public class InteractionInstigator : MonoBehaviour
{

    [Header("Keybinds")] public KeyCode interactionKey = KeyCode.E;
    private List<Interactable> m_NearbyInteractables = new List<Interactable>();

    public bool HasNearbyInteractables()
    {
        return m_NearbyInteractables.Count != 0;
    }

    private void Update()
    {
        //Debug.Log($"FlowStateMachine.Instance: {FlowStateMachine.Instance}"); // Verifica si es null
        //Debug.Log($"Nearby interactables: {m_NearbyInteractables.Count}"); // Verifica si hay NPCs cerca
        if (HasNearbyInteractables() && Input.GetKeyDown(interactionKey))
        {
            Debug.Log($"Tecla {interactionKey} presionada. ¿NPC cerca?: {HasNearbyInteractables()}");
            if (FlowStateMachine.Instance.CurrentState) return;
            //Ideally, we'd want to find the best possible interaction (ex: by distance & orientation).
            m_NearbyInteractables[0].DoInteraction();
        }
    }

    private void OnTriggerEnter(Collider other)
    {
        Interactable interactable = other.GetComponent<Interactable>();
        if (interactable != null)
        {
            m_NearbyInteractables.Add(interactable);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        Interactable interactable = other.GetComponent<Interactable>();
        if (interactable != null)
        {
            m_NearbyInteractables.Remove(interactable);
        }
    }

    private void OnDrawGizmos()
    {
        Collider collider = GetComponent<Collider>();
        if (collider == null) return;

        Gizmos.color = Color.green;
        if (collider is BoxCollider boxCollider)
        {
            Gizmos.matrix = transform.localToWorldMatrix;
            Gizmos.DrawWireCube(boxCollider.center, boxCollider.size);
        }
        else if (collider is SphereCollider sphereCollider)
        {
            Gizmos.matrix = Matrix4x4.TRS(transform.position, transform.rotation, Vector3.one);
            Gizmos.DrawWireSphere(sphereCollider.center, sphereCollider.radius);
        }
    }
}