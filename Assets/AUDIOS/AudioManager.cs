// En SoundManager.cs

using System;
using UnityEngine;
using UnityEngine.Audio;
using System.Collections;

namespace SmallHedge.SoundManager
{
    // NO necesitas dos [RequireComponent], Awake los manejará.
    public class SoundManager : MonoBehaviour
    {
        [SerializeField] private SoundsSO SO;
        private static SoundManager instance = null;

        // CAMBIO: Dos AudioSources en lugar de una.
        [Header("Audio Sources")]
        [SerializeField] private AudioSource musicSource;
        [SerializeField] private AudioSource sfxSource;

        private Coroutine currentFootstepRoutine;
        private SoundType currentFootstepType;
        private void Awake()
        {
            if (!instance)
            {
                instance = this;

                // CAMBIO: Asegúrate de asignar las AudioSources desde el Inspector.
                // Es mejor asignarlas manualmente para saber cuál es cuál.
                if (musicSource == null || sfxSource == null)
                {
                    Debug.LogError("¡Asigna las Audio Sources (Music y SFX) en el Inspector del SoundManager!");
                }
            }
        }

        public static void PlaySound(SoundType sound, AudioSource source = null, float volume = 1)
        {
            if (sound == SoundType.None) return; // Evita errores si se pasa "None"

            SoundList soundList = instance.SO.sounds[(int)sound];
            AudioClip[] clips = soundList.sounds;
            AudioClip randomClip = clips[UnityEngine.Random.Range(0, clips.Length)];

            if (source) // Si se provee una fuente externa (ej. un enemigo), la lógica no cambia.
            {
                source.outputAudioMixerGroup = soundList.mixer;
                source.clip = randomClip;
                source.volume = volume * soundList.volume;
                source.loop = soundList.loop;
                source.Play();
            }
            else // CAMBIO: Lógica para usar las fuentes internas.
            {
                if (soundList.isMusic)
                {
                    // Es MÚSICA: Usa el musicSource.
                    instance.musicSource.Stop(); // Detiene la música anterior.
                    instance.musicSource.outputAudioMixerGroup = soundList.mixer;
                    instance.musicSource.clip = randomClip;
                    instance.musicSource.volume = volume * soundList.volume;
                    instance.musicSource.loop = true; // La música siempre debería ser loop.
                    instance.musicSource.Play();
                }
                else
                {
                    // Es un EFECTO DE SONIDO (SFX): Usa el sfxSource.
                    // PlayOneShot es ideal para SFX, no interrumpe otros SFX.
                    instance.sfxSource.PlayOneShot(randomClip, volume * soundList.volume);
                }
            }
        }

        // CAMBIO: Métodos de Stop actualizados.
        public static void StopMusic()
        {
            if (instance != null && instance.musicSource != null)
            {
                instance.musicSource.Stop();
            }
        }

        // Este método ya no es tan necesario, pero lo dejamos por si acaso.
        // Lo renombramos para ser más claros.
        public static void StopLoopingExternalSound(AudioSource source)
        {
            if (source != null)
            {
                source.Stop();
            }
        }

        public static void PlayLoopingSound(SoundType sound, float spacing = 0.5f, float volume = 1)
        {
            if (sound == SoundType.None) return;

            // Detener el sonido anterior si es diferente
            if (instance.currentFootstepRoutine != null && instance.currentFootstepType != sound)
            {
                instance.StopCoroutine(instance.currentFootstepRoutine);
            }

            SoundList soundList = instance.SO.sounds[(int)sound];
            if (soundList.isMusic) return;

            instance.currentFootstepType = sound;
            instance.currentFootstepRoutine = instance.StartCoroutine(instance.PlayLoopingSoundCoroutine(sound, spacing, volume));
        }

        public static void StopLoopingSound(SoundType sound)
        {
            if (instance.currentFootstepRoutine != null && instance.currentFootstepType == sound)
            {
                instance.StopCoroutine(instance.currentFootstepRoutine);
                instance.currentFootstepRoutine = null;
            }
        }

        private IEnumerator PlayLoopingSoundCoroutine(SoundType sound, float spacing, float volume)
        {
            SoundList soundList = SO.sounds[(int)sound];
            AudioClip[] clips = soundList.sounds;

            while (true)
            {
                if (clips.Length > 0)
                {
                    // Especifica que quieres usar UnityEngine.Random
                    AudioClip randomClip = clips[UnityEngine.Random.Range(0, clips.Length)];
                    sfxSource.PlayOneShot(randomClip, volume * soundList.volume);
                }
                yield return new WaitForSeconds(spacing);
            }
        }
    }

    [Serializable]
    public struct SoundList
    {
        [HideInInspector] public string name;
        [Range(0, 1)] public float volume;
        public AudioMixerGroup mixer;
        public AudioClip[] sounds;
        public bool loop;
        public bool isMusic; // Ya lo añadimos en el paso anterior
    }
}