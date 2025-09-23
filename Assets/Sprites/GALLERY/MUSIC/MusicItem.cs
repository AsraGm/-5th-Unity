using TMPro;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;
using static MusicGallery;

public class MusicItem : MonoBehaviour, IPointerEnterHandler, IPointerExitHandler, IPointerClickHandler
{
    [Header("UI Components")]
    public Image albumCoverImage;         // Imagen de la portada del álbum
    public TextMeshProUGUI songTitleText; // Texto del título de la canción (OPCIONAL - puede ocultarse)
    public TextMeshProUGUI artistText;    // Texto del artista (OPCIONAL - puede ocultarse)
    public Button itemButton;             // Botón del item

    [Header("Hover Effects")]
    public float hoverScale = 1.1f;       // Escala al hacer hover
    public float animationSpeed = 5f;     // Velocidad de la animación
    public Color hoverTint = Color.white; // Color al hacer hover

    [Header("Audio Visual Effects")]
    public GameObject playIndicator;      // Indicador visual de que se está reproduciendo
    public Color playingTint = Color.green; // Color cuando se está reproduciendo

    private MusicPiece musicData;
    private MusicGallery gallery;
    private int itemIndex;
    private Vector3 originalScale;
    private Color originalColor;
    private bool isHovering = false;
    private bool isCurrentlyPlaying = false;

    void Start()
    {
        originalScale = transform.localScale;
        if (albumCoverImage != null)
        {
            originalColor = albumCoverImage.color;
        }

        // Configurar visibilidad de texto según preferencias
        SetupTextVisibility();
        
        // Ocultar indicador de reproducción inicialmente
        if (playIndicator != null)
        {
            playIndicator.SetActive(false);
        }
    }

    void SetupTextVisibility()
    {
        // Por defecto, mantener título visible pero artista oculto para diseño limpio
        // Puedes cambiar esto según tus preferencias
        
        if (songTitleText != null)
        {
            // Mantener título visible pero con fuente pequeña
            songTitleText.gameObject.SetActive(true);
            songTitleText.fontSize = 14f; // Tamaño pequeño
        }

        if (artistText != null)
        {
            // Ocultar artista por defecto para diseño limpio
            artistText.gameObject.SetActive(false);
        }
    }

    public void Setup(MusicPiece musicPiece, MusicGallery musicGallery, int index)
    {
        musicData = musicPiece;
        gallery = musicGallery;
        itemIndex = index;

        // Configurar la imagen de la portada
        if (albumCoverImage != null && musicPiece.albumCover != null)
        {
            albumCoverImage.sprite = musicPiece.albumCover;
        }

        // Configurar textos si están visibles
        if (songTitleText != null && songTitleText.gameObject.activeInHierarchy)
        {
            songTitleText.text = musicPiece.songTitle;
        }

        if (artistText != null && artistText.gameObject.activeInHierarchy)
        {
            artistText.text = musicPiece.artist;
        }

        // Configurar el botón
        if (itemButton != null)
        {
            itemButton.onClick.RemoveAllListeners();
            itemButton.onClick.AddListener(OnItemClicked);
        }
    }

    public void OnPointerEnter(PointerEventData eventData)
    {
        isHovering = true;
        
        // Mostrar información adicional en hover (opcional)
        if (artistText != null)
        {
            artistText.gameObject.SetActive(true);
        }
    }

    public void OnPointerExit(PointerEventData eventData)
    {
        isHovering = false;
        
        // Ocultar información adicional cuando no hay hover
        if (artistText != null)
        {
            artistText.gameObject.SetActive(false);
        }
    }

    public void OnPointerClick(PointerEventData eventData)
    {
        OnItemClicked();
    }

    void OnItemClicked()
    {
        if (gallery != null && musicData != null)
        {
            gallery.OpenPreview(musicData, itemIndex);
            PlayClickAnimation();
        }
    }

    // Método para indicar que esta canción se está reproduciendo
    public void SetPlayingState(bool playing)
    {
        isCurrentlyPlaying = playing;
        
        if (playIndicator != null)
        {
            playIndicator.SetActive(playing);
        }
    }

    void Update()
    {
        // Animación de hover
        Color targetColor = originalColor;
        Vector3 targetScale = originalScale;

        if (isHovering)
        {
            targetScale = originalScale * hoverScale;
            targetColor = hoverTint;
        }
        else if (isCurrentlyPlaying)
        {
            // Efecto sutil cuando se está reproduciendo
            targetColor = Color.Lerp(originalColor, playingTint, 0.3f);
        }

        // Aplicar animaciones
        transform.localScale = Vector3.Lerp(transform.localScale, targetScale, Time.deltaTime * animationSpeed);

        if (albumCoverImage != null)
        {
            albumCoverImage.color = Color.Lerp(albumCoverImage.color, targetColor, Time.deltaTime * animationSpeed);
        }
    }

    // Método para efectos de click
    public void PlayClickAnimation()
    {
        StartCoroutine(ClickAnimation());
    }

    private System.Collections.IEnumerator ClickAnimation()
    {
        Vector3 targetScale = originalScale * 0.95f;

        // Comprimir
        float timer = 0;
        while (timer < 0.1f)
        {
            transform.localScale = Vector3.Lerp(originalScale, targetScale, timer / 0.1f);
            timer += Time.deltaTime;
            yield return null;
        }

        // Expandir de vuelta
        timer = 0;
        while (timer < 0.1f)
        {
            transform.localScale = Vector3.Lerp(targetScale, originalScale, timer / 0.1f);
            timer += Time.deltaTime;
            yield return null;
        }

        transform.localScale = originalScale;
    }

    // Método para configurar la visibilidad de textos desde el Inspector o código
    public void SetTitleVisibility(bool visible)
    {
        if (songTitleText != null)
        {
            songTitleText.gameObject.SetActive(visible);
        }
    }

    public void SetArtistVisibility(bool visible)
    {
        if (artistText != null)
        {
            artistText.gameObject.SetActive(visible);
        }
    }

    // Método para alternar entre modos de visualización
    public void SetDisplayMode(MusicItemDisplayMode mode)
    {
        switch (mode)
        {
            case MusicItemDisplayMode.CoverOnly:
                SetTitleVisibility(false);
                SetArtistVisibility(false);
                break;
            
            case MusicItemDisplayMode.CoverAndTitle:
                SetTitleVisibility(true);
                SetArtistVisibility(false);
                break;
            
            case MusicItemDisplayMode.CoverTitleAndArtist:
                SetTitleVisibility(true);
                SetArtistVisibility(true);
                break;
        }
    }
}

// Enum para los diferentes modos de visualización
public enum MusicItemDisplayMode
{
    CoverOnly,              // Solo portada
    CoverAndTitle,          // Portada + título
    CoverTitleAndArtist     // Portada + título + artista
}