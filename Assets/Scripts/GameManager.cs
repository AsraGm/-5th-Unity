using UnityEngine;
using System.Collections;

public class GameManager : MonoBehaviour
{
    // Sistema de pausa existente
    public static bool IsPaused { get; private set; }

    // Nuevo sistema de control de movimiento
    public static bool CanPlayerMove { get; private set; } = true;

    // Referencia estática para acceder desde otros scripts
    public static GameManager Instance { get; private set; }

    // NUEVO: Sistema de partículas
    private static GameObject currentParticleSystem;

    [Header("Configuración de Audio")]
    [Tooltip("Nombre de la música que sonará en este nivel")]
    public string musicaDelNivel = "musicaNivel1";

    [Tooltip("¿Intentar reproducir música automáticamente al iniciar?")]
    public bool reproducirMusicaAlIniciar = true;
    public bool isPlayerControlActive = true;

    private void Awake()
    {
        // Singleton pattern
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
            return; // Salir si este no es el Instance principal
        }
    }

    private void Start()
    {
        // MOVIDO AQUÍ: Reproducir música en Start() para asegurar que AudioManager esté listo
        if (reproducirMusicaAlIniciar)
        {
            StartCoroutine(TryPlayMusic());
        }
    }

    // Corrutina para intentar reproducir música con reintentos
    private IEnumerator TryPlayMusic()
    {
        int intentos = 0;
        int maxIntentos = 10; // Máximo 10 intentos (1 segundo)

        while (intentos < maxIntentos)
        {
            // Verificar si AudioManager está disponible
            if (AudioManager.Instance != null)
            {
                Debug.Log($"AudioManager encontrado. Reproduciendo música: {musicaDelNivel}");
                AudioManager.Instance.PlayMusic(musicaDelNivel, true);
                yield break; // Salir exitosamente
            }
            else
            {
                Debug.LogWarning($"AudioManager no encontrado. Intento {intentos + 1}/{maxIntentos}");
                intentos++;
                yield return new WaitForSeconds(0.1f); // Esperar 100ms antes del siguiente intento
            }
        }

        // Si llegamos aquí, no se encontró AudioManager
        Debug.LogError($"No se pudo encontrar AudioManager después de {maxIntentos} intentos. Asegúrate de que esté en la escena y configurado correctamente.");
    }

    // MÉTODO PÚBLICO: Para reproducir música manualmente
    [ContextMenu("Reproducir Música del Nivel")]
    public void PlayLevelMusic()
    {
        if (AudioManager.Instance != null)
        {
            AudioManager.Instance.PlayMusic(musicaDelNivel, true);
            Debug.Log($"Música reproducida manualmente: {musicaDelNivel}");
        }
        else
        {
            Debug.LogError("AudioManager no encontrado!");
        }
    }

    // MÉTODO PÚBLICO: Para detener música
    [ContextMenu("Detener Música")]
    public void StopLevelMusic()
    {
        if (AudioManager.Instance != null)
        {
            AudioManager.Instance.StopMusic(true);
            Debug.Log("Música detenida");
        }
        else
        {
            Debug.LogError("AudioManager no encontrado!");
        }
    }

    private void Update()
    {
        // NUEVO: Tecla de emergencia para recuperar control (puedes cambiar la tecla)
        if (Input.GetKeyDown(KeyCode.W))
        {
            ForceEnableMovement();
        }

        // DEBUG: Tecla para probar música (elimina esto después de probar)
        if (Input.GetKeyDown(KeyCode.M))
        {
            PlayLevelMusic();
        }

        // DEBUG: Tecla para detener música (elimina esto después de probar)
        if (Input.GetKeyDown(KeyCode.N))
        {
            StopLevelMusic();
        }
    }

    // Métodos de pausa existentes
    public static void PauseGame()
    {
        IsPaused = true;
        Time.timeScale = 0f;

        // NUEVO: Pausar también el audio
        if (AudioManager.Instance != null)
        {
            AudioManager.Instance.PauseAll();
        }
    }

    public static void ResumeGame()
    {
        IsPaused = false;
        Time.timeScale = 1f;

        // NUEVO: Reanudar también el audio
        if (AudioManager.Instance != null)
        {
            AudioManager.Instance.ResumeAll();
        }
    }

    // Nuevos métodos para control de movimiento
    public static void DisablePlayerMovement()
    {
        CanPlayerMove = false;
        Debug.Log("Movimiento del jugador deshabilitado");
    }

    public static void EnablePlayerMovement()
    {
        CanPlayerMove = true;
        Debug.Log("Movimiento del jugador habilitado");
    }

    // NUEVO: Método para forzar la recuperación del control
    public static void ForceEnableMovement()
    {
        CanPlayerMove = true;

        // NUEVO: Destruir partículas si existen
        DestroyCurrentParticles();

        // Detener todas las corrutinas de movimiento activas
        if (Instance != null)
        {
            Instance.StopAllCoroutines();
        }
        Debug.Log("Movimiento del jugador FORZADO a habilitarse");
    }

    // NUEVO: Métodos para manejo de partículas
    public static void SetCurrentParticleSystem(GameObject particleSystem)
    {
        currentParticleSystem = particleSystem;
    }

    public static void DestroyCurrentParticles()
    {
        if (currentParticleSystem != null)
        {
            Destroy(currentParticleSystem);
            currentParticleSystem = null;
            Debug.Log("Partículas destruidas");
        }
    }

    // Método para deshabilitar movimiento por un tiempo específico
    public void DisableMovementForDuration(float duration)
    {
        StartCoroutine(DisableMovementCoroutine(duration));
    }

    // Método para deshabilitar movimiento hasta que termine una animación
    public void DisableMovementUntilAnimationEnds(Animator animator, string animationName)
    {
        StartCoroutine(DisableMovementUntilAnimationCoroutine(animator, animationName));
    }

    private IEnumerator DisableMovementCoroutine(float duration)
    {
        DisablePlayerMovement();
        yield return new WaitForSeconds(duration);
        EnablePlayerMovement();

        // NUEVO: Destruir partículas al terminar
        DestroyCurrentParticles();
    }

    private IEnumerator DisableMovementUntilAnimationCoroutine(Animator animator, string animationName)
    {
        DisablePlayerMovement();

        // Esperar hasta que la animación termine
        while (true)
        {
            AnimatorStateInfo stateInfo = animator.GetCurrentAnimatorStateInfo(0);
            // Verificar si la animación actual es la que esperamos y si ha terminado
            if (stateInfo.IsName(animationName) && stateInfo.normalizedTime >= 1.0f)
            {
                break;
            }
            yield return null; // Esperar un frame
        }

        EnablePlayerMovement();

        // NUEVO: Destruir partículas al terminar la animación
        DestroyCurrentParticles();
    }

    // MÉTODO DE DEBUG: Para verificar el estado del AudioManager
    [ContextMenu("Debug Audio Manager")]
    public void DebugAudioManager()
    {
        if (AudioManager.Instance != null)
        {
            Debug.Log("✅ AudioManager encontrado!");
            Debug.Log($"Música actual: {AudioManager.Instance.GetCurrentMusicName()}");
            Debug.Log($"¿Música reproduciéndose?: {AudioManager.Instance.IsMusicPlaying()}");
            Debug.Log($"Volumen maestro: {AudioManager.Instance.masterVolume}");
            Debug.Log($"Volumen música: {AudioManager.Instance.musicVolume}");
        }
        else
        {
            Debug.LogError("❌ AudioManager NO encontrado!");
        }
    }
} 