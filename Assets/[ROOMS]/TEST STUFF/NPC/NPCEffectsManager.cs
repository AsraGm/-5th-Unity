using UnityEngine;

public class NPCEffectsManager : MonoBehaviour
{
    // ========== MANTENER TUS EFECTOS EXISTENTES AQUÍ ==========

    [Header("Particle System Settings")]
    [Tooltip("Prefab del sistema de partículas 'Fog Aura'")]
    [SerializeField] private GameObject fogAuraPrefab;
    [Tooltip("Nombre del GameObject hijo donde se spawneará el sistema")]
    [SerializeField] private string particleParentName = "NParticle";

    private NPCController controller;
    private Transform particleParent;
    private GameObject activeParticleSystem;

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
        FindOrCreateParticleParent();

        // ========== AQUÍ VA TU INICIALIZACIÓN EXISTENTE ==========
    }

    private void FindOrCreateParticleParent()
    {
        // Buscar el hijo "NParticle"
        particleParent = transform.Find(particleParentName);

        if (particleParent == null)
        {
            // Si no existe, crear el empty GameObject
            GameObject particleParentGO = new GameObject(particleParentName);
            particleParentGO.transform.SetParent(transform);
            particleParentGO.transform.localPosition = Vector3.zero;
            particleParent = particleParentGO.transform;

            Debug.Log($"Creado {particleParentName} como hijo de {gameObject.name}");
        }
        else
        {
            Debug.Log($"Encontrado {particleParentName} existente en {gameObject.name}");
        }
    }

    public void PlayTransformationEffects()
    {
        Debug.Log($"Reproduciendo efectos de transformación en {gameObject.name}");

        // ========== TUS EFECTOS DE TRANSFORMACIÓN EXISTENTES AQUÍ ==========

        // NUEVO: Agregar sistema de partículas
        SpawnParticleSystem();
    }

    public void PlayDefeatEffects()
    {
        Debug.Log($"Reproduciendo efectos de derrota en {gameObject.name}");

        // ========== TUS EFECTOS DE DERROTA EXISTENTES AQUÍ ==========
    }

    private void SpawnParticleSystem()
    {
        if (fogAuraPrefab == null)
        {
            Debug.LogWarning($"No hay prefab de Fog Aura asignado en {gameObject.name}");
            return;
        }

        if (particleParent == null)
        {
            Debug.LogError($"No se encontró {particleParentName} en {gameObject.name}");
            return;
        }

        // Si ya hay un sistema activo, no crear otro
        if (activeParticleSystem != null)
        {
            Debug.Log($"Sistema de partículas ya activo en {gameObject.name}");
            return;
        }

        // Spawnear el sistema de partículas como hijo de NParticle
        activeParticleSystem = Instantiate(fogAuraPrefab, particleParent);
        activeParticleSystem.transform.localPosition = Vector3.zero;

        Debug.Log($"Fog Aura spawneado en {particleParentName} de {gameObject.name}");
    }

    public void DestroyParticleSystem()
    {
        if (activeParticleSystem != null)
        {
            Debug.Log($"Destruyendo sistema de partículas de {gameObject.name}");

            // Obtener el ParticleSystem para hacer stop elegante
            ParticleSystem ps = activeParticleSystem.GetComponent<ParticleSystem>();
            if (ps != null)
            {
                ps.Stop(true, ParticleSystemStopBehavior.StopEmittingAndClear);
            }

            Destroy(activeParticleSystem);
            activeParticleSystem = null;
        }
    }

    // Método público para forzar recreación del parent si es necesario
    public void RefreshParticleParent()
    {
        FindOrCreateParticleParent();
    }

    // Getter para verificar si hay partículas activas
    public bool HasActiveParticles => activeParticleSystem != null;

    // Debug methods
    [ContextMenu("Test Spawn Particles")]
    public void DebugSpawnParticles()
    {
        SpawnParticleSystem();
    }

    [ContextMenu("Test Destroy Particles")]
    public void DebugDestroyParticles()
    {
        DestroyParticleSystem();
    }
}