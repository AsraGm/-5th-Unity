// ArtGallery.cs - Script principal de la galería
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.UI;

public class ArtGallery : MonoBehaviour
{
    [System.Serializable]
    public class ArtPiece
    {
        public string artName;
        public Sprite thumbnail;
        public Sprite fullImage;
        public string description;
    }

    [Header("UI References")]
    public GameObject artItemPrefab;          // Prefab del item de arte pequeño
    public Transform contentParent;           // Parent donde se instancian los items (Content del ScrollView)
    public ScrollRect scrollRect;             // ScrollRect para el scroll

    [Header("Gallery Settings")]
    public List<ArtPiece> artCollection = new List<ArtPiece>();
    public int columnsPerRow = 4;             // 4 columnas
    public float itemSpacing = 10f;           // Espaciado entre items
    public Vector2 itemSize = new Vector2(150, 150); // Tamaño de cada thumbnail

    [Header("Preview")]
    public GameObject previewPanel;           // Panel para mostrar la imagen grande
    public Image previewImage;                // Image component para la vista previa
    public TextMeshProUGUI previewTitle;      // Título del arte
    public TextMeshProUGUI previewDescription;// Descripción del arte
    public Button closePreviewButton;         // Botón para cerrar preview

    private List<GameObject> instantiatedItems = new List<GameObject>();

    void Start()
    {
        SetupGallery();
        SetupPreviewPanel();
    }

    void SetupGallery()
    {
        // Configurar el Grid Layout Group
        GridLayoutGroup gridLayout = contentParent.GetComponent<GridLayoutGroup>();
        if (gridLayout == null)
        {
            gridLayout = contentParent.gameObject.AddComponent<GridLayoutGroup>();
        }

        // Configurar el grid para 4 columnas
        gridLayout.constraint = GridLayoutGroup.Constraint.FixedColumnCount;
        gridLayout.constraintCount = columnsPerRow;
        gridLayout.cellSize = itemSize;
        gridLayout.spacing = new Vector2(itemSpacing, itemSpacing);
        gridLayout.startCorner = GridLayoutGroup.Corner.UpperLeft;
        gridLayout.startAxis = GridLayoutGroup.Axis.Horizontal;
        gridLayout.childAlignment = TextAnchor.MiddleCenter;

        // Configurar Content Size Fitter para scroll automático
        ContentSizeFitter sizeFitter = contentParent.GetComponent<ContentSizeFitter>();
        if (sizeFitter == null)
        {
            sizeFitter = contentParent.gameObject.AddComponent<ContentSizeFitter>();
        }
        sizeFitter.verticalFit = ContentSizeFitter.FitMode.PreferredSize;

        // Instanciar los items de arte
        CreateArtItems();
    }

    void CreateArtItems()
    {
        // Limpiar items existentes
        foreach (GameObject item in instantiatedItems)
        {
            DestroyImmediate(item);
        }
        instantiatedItems.Clear();

        // Crear un item por cada pieza de arte
        for (int i = 0; i < artCollection.Count; i++)
        {
            GameObject newItem = Instantiate(artItemPrefab, contentParent);
            ArtItem artItemScript = newItem.GetComponent<ArtItem>();

            if (artItemScript != null)
            {
                artItemScript.Setup(artCollection[i], this, i);
            }

            instantiatedItems.Add(newItem);
        }
    }

    void SetupPreviewPanel()
    {
        if (previewPanel != null)
        {
            previewPanel.SetActive(false);
        }

        if (closePreviewButton != null)
        {
            closePreviewButton.onClick.AddListener(ClosePreview);
        }
    }

    public void OpenPreview(ArtPiece artPiece)
    {
        if (previewPanel != null)
        {
            previewPanel.SetActive(true);

            if (previewImage != null)
                previewImage.sprite = artPiece.fullImage;

            if (previewTitle != null)
                previewTitle.text = artPiece.artName;

            if (previewDescription != null)
                previewDescription.text = artPiece.description;
        }
    }

    public void ClosePreview()
    {
        if (previewPanel != null)
        {
            previewPanel.SetActive(false);
        }
    }

    // Método para scroll con mouse wheel (opcional)
    void Update()
    {
        if (scrollRect != null)
        {
            float scroll = Input.GetAxis("Mouse ScrollWheel");
            if (scroll != 0)
            {
                scrollRect.verticalNormalizedPosition += scroll * 0.1f;
            }
        }
    }

    // Método para agregar arte en runtime
    public void AddArtPiece(ArtPiece newArt)
    {
        artCollection.Add(newArt);
        CreateArtItems(); // Recrear la galería
    }

    // Método para remover arte
    public void RemoveArtPiece(int index)
    {
        if (index >= 0 && index < artCollection.Count)
        {
            artCollection.RemoveAt(index);
            CreateArtItems(); // Recrear la galería
        }
    }
}