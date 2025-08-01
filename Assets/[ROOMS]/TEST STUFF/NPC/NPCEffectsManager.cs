using UnityEngine;

public class NPCEffectsManager : MonoBehaviour
{
    [Header("Animation")]
    [Tooltip("Animator del personaje")]
    [SerializeField] private Animator characterAnimator;
    [Tooltip("Trigger de animación para transformación")]
    [SerializeField] private string transformTrigger = "TransformToEnemy";
    [Tooltip("Trigger de animación para derrota")]
    [SerializeField] private string defeatTrigger = "Defeated";

    [Header("Audio")]
    [Tooltip("Sonido de transformación")]
    [SerializeField] private AudioClip transformSound;
    [Tooltip("Sonido de derrota")]
    [SerializeField] private AudioClip defeatSound;
    [Tooltip("AudioSource del personaje")]
    [SerializeField] private AudioSource audioSource;

    private NPCController controller;
    private int transformTriggerHash;
    private int defeatTriggerHash;

    public void Initialize(NPCController npcController)
    {
        controller = npcController;
        CacheAnimationHashes();
    }

    private void CacheAnimationHashes()
    {
        if (!string.IsNullOrEmpty(transformTrigger))
            transformTriggerHash = Animator.StringToHash(transformTrigger);

        if (!string.IsNullOrEmpty(defeatTrigger))
            defeatTriggerHash = Animator.StringToHash(defeatTrigger);
    }

    public void PlayTransformationEffects()
    {
        // Sonido
        PlaySound(transformSound);

        // Animación
        if (characterAnimator != null && transformTriggerHash != 0)
        {
            characterAnimator.SetTrigger(transformTriggerHash);
        }
    }

    public void PlayDefeatEffects()
    {
        // Sonido
        PlaySound(defeatSound);

        // Animación
        if (characterAnimator != null && defeatTriggerHash != 0)
        {
            characterAnimator.SetTrigger(defeatTriggerHash);
        }
    }

    private void PlaySound(AudioClip clip)
    {
        if (audioSource != null && clip != null)
        {
            audioSource.PlayOneShot(clip);
        }
    }
}