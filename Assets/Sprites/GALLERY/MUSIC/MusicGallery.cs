using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class MusicGallery : MonoBehaviour
{
    [System.Serializable]
    public class MusicPiece
    {
        public string songTitle;
        public string artist;
        public AudioClip audioClip;
        public Sprite albumCover;
        [Range(0f, 10f)]
        public float duration; // Para mostrar duración si no tienes AudioClip
    }

    [Header("UI References")]
    public GameObject musicItemPrefab;
    public Transform contentParent;
    public ScrollRect scrollRect;

    [Header("Music Collection")]
    public List<MusicPiece> musicCollection = new List<MusicPiece>();

    [Header("Preview Panel")]
    public GameObject previewPanel;
    public Image albumCoverPreview;
    public TextMeshProUGUI songTitleText;
    public TextMeshProUGUI artistText;
    public Button closePreviewButton;

    [Header("Audio Controls")]
    public AudioSource audioSource;
    public Button playPauseButton;
    public Button previousButton;
    public Button nextButton;
    public Slider progressSlider;
    public Slider volumeSlider;
    public TextMeshProUGUI currentTimeText;
    public TextMeshProUGUI totalTimeText;

    [Header("Audio Control Icons")]
    public Sprite playIcon;
    public Sprite pauseIcon;

    [Header("Scroll Settings")]
    [Range(0.1f, 100f)] public float scrollSensitivity = 20f;
    public float wheelScrollSpeed = 100f;

    [Header("Grid Settings")]
    public Vector2 cellSize = new Vector2(200, 250);
    public Vector2 spacing = new Vector2(20, 20);

    private List<GameObject> instantiatedItems = new List<GameObject>();
    private GridLayoutGroup gridLayout;
    private MusicPiece currentSong;
    private int currentSongIndex = -1;
    private bool isPlaying = false;
    private bool isDraggingSlider = false;

    void Start()
    {
        StartCoroutine(InitializeGallery());
    }

    IEnumerator InitializeGallery()
    {
        yield return null;
        SetupGallery();
        SetupPreviewPanel();
        SetupAudioControls();
    }

    void SetupGallery()
    {
        if (contentParent == null)
        {
            Debug.LogError("ContentParent no está asignado!");
            return;
        }

        SetupScrollRect();
        SetupGridLayout();
        CreateMusicItems();
    }

    void SetupScrollRect()
    {
        if (scrollRect != null)
        {
            scrollRect.horizontal = false;
            scrollRect.vertical = true;
            scrollRect.movementType = ScrollRect.MovementType.Clamped;
            scrollRect.scrollSensitivity = scrollSensitivity;
            scrollRect.inertia = true;
            scrollRect.decelerationRate = 0.135f;

            if (scrollRect.content == null)
            {
                scrollRect.content = contentParent.GetComponent<RectTransform>();
            }
        }
    }

    void SetupGridLayout()
    {
        gridLayout = contentParent.GetComponent<GridLayoutGroup>();
        if (gridLayout == null)
        {
            gridLayout = contentParent.gameObject.AddComponent<GridLayoutGroup>();
        }

        gridLayout.cellSize = cellSize;
        gridLayout.spacing = spacing;
        gridLayout.startCorner = GridLayoutGroup.Corner.UpperLeft;
        gridLayout.startAxis = GridLayoutGroup.Axis.Horizontal;
        gridLayout.childAlignment = TextAnchor.UpperCenter;
        gridLayout.padding = new RectOffset(10, 10, 10, 10);
    }

    void CreateMusicItems()
    {
        ClearItems();

        if (musicCollection.Count == 0)
        {
            Debug.LogWarning("musicCollection está vacío!");
            return;
        }

        for (int i = 0; i < musicCollection.Count; i++)
        {
            GameObject newItem = Instantiate(musicItemPrefab, contentParent);
            newItem.name = $"MusicItem_{i}_{musicCollection[i].songTitle}";

            MusicItem musicItemScript = newItem.GetComponent<MusicItem>();
            if (musicItemScript != null)
            {
                musicItemScript.Setup(musicCollection[i], this, i);
            }

            instantiatedItems.Add(newItem);
        }

        StartCoroutine(RefreshLayoutDelayed());
    }

    IEnumerator RefreshLayoutDelayed()
    {
        yield return new WaitForEndOfFrame();
        yield return new WaitForEndOfFrame();

        RectTransform contentRect = contentParent.GetComponent<RectTransform>();
        if (contentRect != null)
        {
            contentRect.anchorMin = new Vector2(0, 1);
            contentRect.anchorMax = new Vector2(1, 1);
            contentRect.pivot = new Vector2(0.5f, 1f);
        }

        Canvas.ForceUpdateCanvases();
        if (contentRect != null)
        {
            LayoutRebuilder.ForceRebuildLayoutImmediate(contentRect);
        }

        if (scrollRect != null && contentRect != null)
        {
            scrollRect.content = contentRect;
        }
    }

    void ClearItems()
    {
        foreach (GameObject item in instantiatedItems)
        {
            if (item != null)
                DestroyImmediate(item);
        }
        instantiatedItems.Clear();
    }

    void SetupPreviewPanel()
    {
        if (previewPanel != null)
        {
            previewPanel.SetActive(false);
        }

        if (closePreviewButton != null)
        {
            closePreviewButton.onClick.RemoveAllListeners();
            closePreviewButton.onClick.AddListener(ClosePreview);
        }
    }

    void SetupAudioControls()
    {
        // Setup AudioSource
        if (audioSource == null)
        {
            audioSource = gameObject.AddComponent<AudioSource>();
        }
        audioSource.playOnAwake = false;

        // Setup buttons
        if (playPauseButton != null)
        {
            playPauseButton.onClick.RemoveAllListeners();
            playPauseButton.onClick.AddListener(TogglePlayPause);
        }

        if (previousButton != null)
        {
            previousButton.onClick.RemoveAllListeners();
            previousButton.onClick.AddListener(PlayPrevious);
        }

        if (nextButton != null)
        {
            nextButton.onClick.RemoveAllListeners();
            nextButton.onClick.AddListener(PlayNext);
        }

        // Setup sliders
        if (progressSlider != null)
        {
            progressSlider.onValueChanged.RemoveAllListeners();
            progressSlider.onValueChanged.AddListener(OnProgressSliderChanged);
        }

        if (volumeSlider != null)
        {
            volumeSlider.value = 0.7f;
            volumeSlider.onValueChanged.RemoveAllListeners();
            volumeSlider.onValueChanged.AddListener(OnVolumeChanged);
            audioSource.volume = 0.7f;
        }
    }

    public void OpenPreview(MusicPiece musicPiece, int index)
    {
        if (previewPanel != null)
        {
            previewPanel.SetActive(true);
            currentSong = musicPiece;
            currentSongIndex = index;

            // Update UI
            if (albumCoverPreview != null)
                albumCoverPreview.sprite = musicPiece.albumCover;

            if (songTitleText != null)
                songTitleText.text = musicPiece.songTitle;

            if (artistText != null)
                artistText.text = $"Artist: {musicPiece.artist}";

            // Load audio
            if (musicPiece.audioClip != null)
            {
                audioSource.clip = musicPiece.audioClip;
                UpdateTotalTimeDisplay();
                SetupProgressSlider();
            }
        }
    }

    public void ClosePreview()
    {
        StopMusic();
        if (previewPanel != null)
        {
            previewPanel.SetActive(false);
        }
        currentSong = null;
        currentSongIndex = -1;
    }

    // Audio Control Methods
    public void TogglePlayPause()
    {
        if (audioSource.clip == null) return;

        if (isPlaying)
        {
            audioSource.Pause();
            isPlaying = false;
            UpdatePlayPauseButtonIcon();
        }
        else
        {
            audioSource.Play();
            isPlaying = true;
            UpdatePlayPauseButtonIcon();
        }
    }

    public void StopMusic()
    {
        if (audioSource.isPlaying)
        {
            audioSource.Stop();
        }
        isPlaying = false;
        UpdatePlayPauseButtonIcon();
        
        if (progressSlider != null)
            progressSlider.value = 0;
        
        UpdateCurrentTimeDisplay(0);
    }

    public void PlayNext()
    {
        if (currentSongIndex < musicCollection.Count - 1)
        {
            OpenPreview(musicCollection[currentSongIndex + 1], currentSongIndex + 1);
            TogglePlayPause();
        }
    }

    public void PlayPrevious()
    {
        if (currentSongIndex > 0)
        {
            OpenPreview(musicCollection[currentSongIndex - 1], currentSongIndex - 1);
            TogglePlayPause();
        }
    }

    public void OnProgressSliderChanged(float value)
    {
        if (isDraggingSlider && audioSource.clip != null)
        {
            audioSource.time = value * audioSource.clip.length;
        }
    }

    public void OnVolumeChanged(float value)
    {
        if (audioSource != null)
        {
            audioSource.volume = value;
        }
    }

    void UpdatePlayPauseButtonIcon()
    {
        if (playPauseButton != null && playPauseButton.GetComponent<Image>() != null)
        {
            Image buttonImage = playPauseButton.GetComponent<Image>();
            if (isPlaying && pauseIcon != null)
            {
                buttonImage.sprite = pauseIcon;
            }
            else if (!isPlaying && playIcon != null)
            {
                buttonImage.sprite = playIcon;
            }
        }
    }

    void SetupProgressSlider()
    {
        if (progressSlider != null && audioSource.clip != null)
        {
            progressSlider.maxValue = 1f;
            progressSlider.value = 0f;
        }
    }

    void UpdateTotalTimeDisplay()
    {
        if (totalTimeText != null && audioSource.clip != null)
        {
            float totalTime = audioSource.clip.length;
            totalTimeText.text = FormatTime(totalTime);
        }
    }

    void UpdateCurrentTimeDisplay(float currentTime)
    {
        if (currentTimeText != null)
        {
            currentTimeText.text = FormatTime(currentTime);
        }
    }

    string FormatTime(float timeInSeconds)
    {
        int minutes = Mathf.FloorToInt(timeInSeconds / 60f);
        int seconds = Mathf.FloorToInt(timeInSeconds % 60f);
        return string.Format("{0:00}:{1:00}", minutes, seconds);
    }

    void Update()
    {
        // Mouse wheel scrolling
        if (scrollRect != null && scrollRect.IsActive())
        {
            float scroll = Input.GetAxis("Mouse ScrollWheel");
            if (scroll != 0)
            {
                Vector2 scrollPosition = scrollRect.normalizedPosition;
                scrollPosition.y += scroll * (wheelScrollSpeed / 100f);
                scrollPosition.y = Mathf.Clamp01(scrollPosition.y);
                scrollRect.normalizedPosition = scrollPosition;
            }
        }

        // Update audio progress
        if (isPlaying && audioSource.clip != null && !isDraggingSlider)
        {
            float normalizedTime = audioSource.time / audioSource.clip.length;
            if (progressSlider != null)
                progressSlider.value = normalizedTime;
            
            UpdateCurrentTimeDisplay(audioSource.time);

            // Check if song ended
            if (audioSource.time >= audioSource.clip.length - 0.1f)
            {
                StopMusic();
            }
        }

        // Close with Escape
        if (Input.GetKeyDown(KeyCode.Escape) && previewPanel != null && previewPanel.activeInHierarchy)
        {
            ClosePreview();
        }

        // Detect slider dragging
        if (progressSlider != null)
        {
            if (Input.GetMouseButtonDown(0))
            {
                Vector2 mousePos = Input.mousePosition;
                RectTransform sliderRect = progressSlider.GetComponent<RectTransform>();
                if (RectTransformUtility.RectangleContainsScreenPoint(sliderRect, mousePos))
                {
                    isDraggingSlider = true;
                }
            }
            
            if (Input.GetMouseButtonUp(0))
            {
                isDraggingSlider = false;
            }
        }

        // Keyboard controls (when preview is open)
        if (previewPanel != null && previewPanel.activeInHierarchy)
        {
            if (Input.GetKeyDown(KeyCode.Space))
            {
                TogglePlayPause();
            }
            if (Input.GetKeyDown(KeyCode.LeftArrow))
            {
                PlayPrevious();
            }
            if (Input.GetKeyDown(KeyCode.RightArrow))
            {
                PlayNext();
            }
        }
    }

    // Public methods for runtime modification
    public void AddMusicPiece(MusicPiece newMusic)
    {
        musicCollection.Add(newMusic);
        CreateMusicItems();
    }

    public void RemoveMusicPiece(int index)
    {
        if (index >= 0 && index < musicCollection.Count)
        {
            musicCollection.RemoveAt(index);
            CreateMusicItems();
        }
    }

    [ContextMenu("Refresh Layout")]
    public void RefreshLayout()
    {
        if (Application.isPlaying)
        {
            CreateMusicItems();
        }
    }
}