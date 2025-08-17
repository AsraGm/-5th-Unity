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
        }
    }

    private void Update()
    {
        // NUEVO: Tecla de emergencia para recuperar control (puedes cambiar la tecla)
        if (Input.GetKeyDown(KeyCode.W))
        {
            ForceEnableMovement();
        }
    }

    // Métodos de pausa existentes
    public static void PauseGame()
    {
        IsPaused = true;
        Time.timeScale = 0f;
    }

    public static void ResumeGame()
    {
        IsPaused = false;
        Time.timeScale = 1f;
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

        // Detener todas las corrutinas de movimiento activas
        if (Instance != null)
        {
            Instance.StopAllCoroutines();
        }

        Debug.Log("Movimiento del jugador FORZADO a habilitarse");
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
    }
}