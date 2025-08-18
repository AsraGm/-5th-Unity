using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System;

[System.Serializable]
public class AudioClipData
{
    [Tooltip("Nombre único para identificar este audio (ej: 'disparo', 'explosion', 'musicaMenu')")]
    public string name;

    [Tooltip("Arrastra aquí el archivo de audio desde tu carpeta de Assets")]
    public AudioClip clip;

    [Range(0f, 1f)]
    [Tooltip("Volumen individual de este audio (0 = silencio, 1 = volumen máximo)")]
    public float volume = 1f;

    [Range(0.1f, 3f)]
    [Tooltip("Velocidad de reproducción (0.5 = más lento, 1 = normal, 2 = más rápido)")]
    public float pitch = 1f;

    [Tooltip("¿Este audio se repite automáticamente? (Ideal para música de fondo)")]
    public bool loop = false;
}

[System.Serializable]
public class AudioCategory
{
    [Tooltip("Nombre de la categoría (solo informativo, no cambies esto)")]
    public string categoryName;

    [Tooltip("Lista de todos los audios de esta categoría. Haz clic en '+' para agregar más")]
    public List<AudioClipData> audioClips = new List<AudioClipData>();

    [Range(0f, 1f)]
    [Tooltip("Volumen general de toda esta categoría (afecta a todos los audios de la lista)")]
    public float categoryVolume = 1f;
}

public class AudioManager : MonoBehaviour
{
    public static AudioManager Instance { get; private set; }

    [Header("Configuración de Categorías")]
    [Tooltip("SONIDOS: Efectos de sonido del juego (disparos, explosiones, pasos, etc.)")]
    public AudioCategory sonidos;

    [Tooltip("MÚSICA: Pistas musicales de fondo (menús, niveles, cinematics, etc.)")]
    public AudioCategory musica;

    [Tooltip("VOCES: Diálogos y narraciones (personajes hablando, narrador, etc.)")]
    public AudioCategory voces;

    [Header("Configuración del Pool")]
    [Tooltip("Cantidad de AudioSources disponibles para sonidos simultáneos (10-15 es suficiente para la mayoría de juegos)")]
    [SerializeField] private int poolSize = 10;

    [Header("Configuración de Fade")]
    [Tooltip("Tiempo en segundos para transiciones suaves de música (1-2 segundos es lo ideal)")]
    [SerializeField] private float fadeTime = 1f;

    // Controles de volumen globales
    [Header("Volúmenes Maestros")]
    [Range(0f, 1f)]
    [Tooltip("Volumen general del juego - afecta a TODOS los sonidos")]
    public float masterVolume = 1f;

    [Range(0f, 1f)]
    [Tooltip("Volumen de efectos de sonido (disparos, explosiones, etc.)")]
    public float soundsVolume = 1f;

    [Range(0f, 1f)]
    [Tooltip("Volumen de música de fondo")]
    public float musicVolume = 1f;

    [Range(0f, 1f)]
    [Tooltip("Volumen de voces y diálogos")]
    public float voicesVolume = 1f;

    // Pool de AudioSources
    private List<AudioSource> audioSourcePool;
    private Queue<AudioSource> availableSources;

    // AudioSource dedicado para música
    private AudioSource musicSource;

    // Control de música actual
    private AudioClipData currentMusic;
    private Coroutine currentFadeCoroutine;

    // Estados del juego
    private bool isPaused = false;
    private float pausedMusicTime = 0f;

    // Diccionarios para acceso rápido
    private Dictionary<string, AudioClipData> soundsDict;
    private Dictionary<string, AudioClipData> musicDict;
    private Dictionary<string, AudioClipData> voicesDict;

    // Eventos
    public static event Action<string> OnMusicChanged;
    public static event Action<float> OnVolumeChanged;

    void Awake()
    {
        // Singleton pattern
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
            InitializeAudioManager();
        }
        else
        {
            Destroy(gameObject);
        }
    }

    void Start()
    {
        LoadAudioSettings();
    }

    private void InitializeAudioManager()
    {
        // Inicializar pool de AudioSources
        CreateAudioSourcePool();

        // Crear AudioSource dedicado para música
        CreateMusicSource();

        // Crear diccionarios para acceso rápido
        CreateAudioDictionaries();
    }

    private void CreateAudioSourcePool()
    {
        audioSourcePool = new List<AudioSource>();
        availableSources = new Queue<AudioSource>();

        for (int i = 0; i < poolSize; i++)
        {
            GameObject audioObj = new GameObject($"AudioSource_Pool_{i}");
            audioObj.transform.SetParent(transform);

            AudioSource source = audioObj.AddComponent<AudioSource>();
            source.playOnAwake = false;

            audioSourcePool.Add(source);
            availableSources.Enqueue(source);
        }
    }

    private void CreateMusicSource()
    {
        GameObject musicObj = new GameObject("MusicSource");
        musicObj.transform.SetParent(transform);

        musicSource = musicObj.AddComponent<AudioSource>();
        musicSource.playOnAwake = false;
        musicSource.loop = true;
    }

    private void CreateAudioDictionaries()
    {
        soundsDict = new Dictionary<string, AudioClipData>();
        foreach (var sound in sonidos.audioClips)
        {
            if (!soundsDict.ContainsKey(sound.name))
                soundsDict.Add(sound.name, sound);
        }

        musicDict = new Dictionary<string, AudioClipData>();
        foreach (var music in musica.audioClips)
        {
            if (!musicDict.ContainsKey(music.name))
                musicDict.Add(music.name, music);
        }

        voicesDict = new Dictionary<string, AudioClipData>();
        foreach (var voice in voces.audioClips)
        {
            if (!voicesDict.ContainsKey(voice.name))
                voicesDict.Add(voice.name, voice);
        }
    }

    #region Reproducción de Sonidos

    public void PlaySound(string soundName)
    {
        if (soundsDict.TryGetValue(soundName, out AudioClipData soundData))
        {
            AudioSource source = GetAvailableAudioSource();
            if (source != null)
            {
                PlayAudioClip(source, soundData, soundsVolume * sonidos.categoryVolume);
            }
        }
        else
        {
            Debug.LogWarning($"Sonido '{soundName}' no encontrado!");
        }
    }

    public void PlayVoice(string voiceName)
    {
        if (voicesDict.TryGetValue(voiceName, out AudioClipData voiceData))
        {
            AudioSource source = GetAvailableAudioSource();
            if (source != null)
            {
                PlayAudioClip(source, voiceData, voicesVolume * voces.categoryVolume);
            }
        }
        else
        {
            Debug.LogWarning($"Voz '{voiceName}' no encontrada!");
        }
    }

    #endregion

    #region Reproducción de Música

    public void PlayMusic(string musicName, bool fadeIn = true)
    {
        if (musicDict.TryGetValue(musicName, out AudioClipData musicData))
        {
            if (currentFadeCoroutine != null)
            {
                StopCoroutine(currentFadeCoroutine);
            }

            currentMusic = musicData;

            if (fadeIn && musicSource.isPlaying)
            {
                currentFadeCoroutine = StartCoroutine(CrossFadeMusic(musicData));
            }
            else
            {
                SetupMusicSource(musicData);
                musicSource.Play();

                if (fadeIn)
                {
                    currentFadeCoroutine = StartCoroutine(FadeInMusic());
                }
            }

            OnMusicChanged?.Invoke(musicName);
        }
        else
        {
            Debug.LogWarning($"Música '{musicName}' no encontrada!");
        }
    }

    public void StopMusic(bool fadeOut = true)
    {
        if (musicSource.isPlaying)
        {
            if (fadeOut)
            {
                if (currentFadeCoroutine != null) StopCoroutine(currentFadeCoroutine);
                currentFadeCoroutine = StartCoroutine(FadeOutMusic());
            }
            else
            {
                musicSource.Stop();
            }
        }
        currentMusic = null;
    }

    public void PauseMusic()
    {
        if (musicSource.isPlaying)
        {
            pausedMusicTime = musicSource.time;
            musicSource.Pause();
        }
    }

    public void ResumeMusic()
    {
        if (!musicSource.isPlaying && currentMusic != null)
        {
            musicSource.time = pausedMusicTime;
            musicSource.UnPause();
        }
    }

    #endregion

    #region Control de Pausa General

    public void PauseAll()
    {
        isPaused = true;
        PauseMusic();

        // Pausar todos los AudioSources del pool
        foreach (AudioSource source in audioSourcePool)
        {
            if (source.isPlaying)
            {
                source.Pause();
            }
        }
    }

    public void ResumeAll()
    {
        isPaused = false;
        ResumeMusic();

        // Reanudar todos los AudioSources del pool
        foreach (AudioSource source in audioSourcePool)
        {
            source.UnPause();
        }
    }

    #endregion

    #region Efectos de Fade

    private IEnumerator FadeInMusic()
    {
        musicSource.volume = 0f;
        float targetVolume = currentMusic.volume * musicVolume * musica.categoryVolume * masterVolume;

        while (musicSource.volume < targetVolume)
        {
            musicSource.volume += targetVolume * Time.unscaledDeltaTime / fadeTime;
            yield return null;
        }

        musicSource.volume = targetVolume;
        currentFadeCoroutine = null;
    }

    private IEnumerator FadeOutMusic()
    {
        float startVolume = musicSource.volume;

        while (musicSource.volume > 0)
        {
            musicSource.volume -= startVolume * Time.unscaledDeltaTime / fadeTime;
            yield return null;
        }

        musicSource.volume = 0f;
        musicSource.Stop();
        currentFadeCoroutine = null;
    }

    private IEnumerator CrossFadeMusic(AudioClipData newMusicData)
    {
        float startVolume = musicSource.volume;

        // Fade out música actual
        while (musicSource.volume > 0)
        {
            musicSource.volume -= startVolume * Time.unscaledDeltaTime / fadeTime;
            yield return null;
        }

        // Cambiar música
        SetupMusicSource(newMusicData);
        musicSource.Play();

        // Fade in nueva música
        float targetVolume = newMusicData.volume * musicVolume * musica.categoryVolume * masterVolume;
        while (musicSource.volume < targetVolume)
        {
            musicSource.volume += targetVolume * Time.unscaledDeltaTime / fadeTime;
            yield return null;
        }

        musicSource.volume = targetVolume;
        currentFadeCoroutine = null;
    }

    #endregion

    #region Métodos de Utilidad

    private AudioSource GetAvailableAudioSource()
    {
        if (availableSources.Count > 0)
        {
            return availableSources.Dequeue();
        }

        // Si no hay fuentes disponibles, usar la primera del pool
        return audioSourcePool[0];
    }

    private void PlayAudioClip(AudioSource source, AudioClipData clipData, float categoryVolume)
    {
        source.clip = clipData.clip;
        source.volume = clipData.volume * categoryVolume * masterVolume;
        source.pitch = clipData.pitch;
        source.loop = clipData.loop;
        source.Play();

        if (!clipData.loop)
        {
            StartCoroutine(ReturnSourceToPool(source, clipData.clip.length / clipData.pitch));
        }
    }

    private void SetupMusicSource(AudioClipData musicData)
    {
        musicSource.clip = musicData.clip;
        musicSource.volume = musicData.volume * musicVolume * musica.categoryVolume * masterVolume;
        musicSource.pitch = musicData.pitch;
        musicSource.loop = musicData.loop;
    }

    private IEnumerator ReturnSourceToPool(AudioSource source, float delay)
    {
        yield return new WaitForSeconds(delay);

        if (!source.loop && !source.isPlaying)
        {
            availableSources.Enqueue(source);
        }
    }

    #endregion

    #region Control de Volúmenes

    public void SetMasterVolume(float volume)
    {
        masterVolume = Mathf.Clamp01(volume);
        UpdateAllVolumes();
        SaveAudioSettings();
        OnVolumeChanged?.Invoke(masterVolume);
    }

    public void SetSoundsVolume(float volume)
    {
        soundsVolume = Mathf.Clamp01(volume);
        SaveAudioSettings();
    }

    public void SetMusicVolume(float volume)
    {
        musicVolume = Mathf.Clamp01(volume);
        UpdateMusicVolume();
        SaveAudioSettings();
    }

    public void SetVoicesVolume(float volume)
    {
        voicesVolume = Mathf.Clamp01(volume);
        SaveAudioSettings();
    }

    private void UpdateAllVolumes()
    {
        UpdateMusicVolume();
        // Los sonidos y voces se actualizarán en su próxima reproducción
    }

    private void UpdateMusicVolume()
    {
        if (musicSource.isPlaying && currentMusic != null)
        {
            musicSource.volume = currentMusic.volume * musicVolume * musica.categoryVolume * masterVolume;
        }
    }

    #endregion

    #region Guardado de Configuraciones

    private void SaveAudioSettings()
    {
        PlayerPrefs.SetFloat("MasterVolume", masterVolume);
        PlayerPrefs.SetFloat("SoundsVolume", soundsVolume);
        PlayerPrefs.SetFloat("MusicVolume", musicVolume);
        PlayerPrefs.SetFloat("VoicesVolume", voicesVolume);
        PlayerPrefs.Save();
    }

    private void LoadAudioSettings()
    {
        masterVolume = PlayerPrefs.GetFloat("MasterVolume", 1f);
        soundsVolume = PlayerPrefs.GetFloat("SoundsVolume", 1f);
        musicVolume = PlayerPrefs.GetFloat("MusicVolume", 1f);
        voicesVolume = PlayerPrefs.GetFloat("VoicesVolume", 1f);

        UpdateAllVolumes();
    }

    #endregion

    #region Métodos Públicos de Información

    public bool IsMusicPlaying()
    {
        return musicSource.isPlaying;
    }

    public string GetCurrentMusicName()
    {
        return currentMusic?.name ?? "Ninguna";
    }

    public float GetMusicProgress()
    {
        if (musicSource.clip != null)
        {
            return musicSource.time / musicSource.clip.length;
        }
        return 0f;
    }

    public bool IsPaused()
    {
        return isPaused;
    }

    #endregion

    void OnDestroy()
    {
        SaveAudioSettings();
    }

    void OnApplicationPause(bool pauseStatus)
    {
        if (pauseStatus)
        {
            PauseAll();
        }
        else
        {
            ResumeAll();
        }
    }
}