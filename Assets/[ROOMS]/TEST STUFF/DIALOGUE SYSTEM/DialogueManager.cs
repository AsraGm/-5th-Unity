using System.Collections;
using System.Linq;
using TMPro;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

public class DialogueManager : MonoBehaviour
{
    [HideInInspector] public static DialogueManager Instance { get; private set; }

    [Header("Dialogue UI")]
    [Tooltip("El panel")]
    [SerializeField] private GameObject dialoguePanel;
    [Tooltip("Texto NPC")]
    [SerializeField] private TMP_Text dialogueText;
    [Tooltip("Area de botones")]
    [SerializeField] private Transform responsesContainer;
    [Tooltip("Prefab Botones")]
    [SerializeField] private GameObject responseButtonPrefab;

    [Header("Typing Effect")]
    [Tooltip("Segundos de escritura")]
    [SerializeField] private float textSpeed = 0.05f;

    [Header("Animation")]
    [SerializeField] private Animator panelAnimator;

    [Header("Keybind Settings")]
    [Tooltip("Tecla para seleccionar opción")]
    [SerializeField] private KeyCode selectKey = KeyCode.Return;
    [Tooltip("Tecla para mover arriba")]
    [SerializeField] private KeyCode upKey = KeyCode.UpArrow;
    [Tooltip("Tecla para mover abajo")]
    [SerializeField] private KeyCode downKey = KeyCode.DownArrow;

    [Header("Visual Feedback")]
    [Tooltip("Color de opción seleccionada")]
    [SerializeField] private Color selectedColor = Color.yellow;
    [Tooltip("Color de opción normal")]
    [SerializeField] private Color normalColor = Color.white;

    [Header("Player Control")]
    [Tooltip("Arrastra los scripts de movimiento")]
    [SerializeField] private MOVEPLAYER playerMovement;

    [Header("Camera Control")]
    [SerializeField] private CAMERA cameraController;

    [Tooltip("Para congelar física")]
    [SerializeField] private Rigidbody playerRigidbody;

    private Coroutine typingCoroutine;
    private DIALOGUENODE currentNode;
    private Button[] currentButtons;
    private int selectedIndex = 0;

    // Variables para optimización
    private bool isDialogueActive = false;
    private bool hasValidButtons = false;
    private int cachedButtonCount = 0;

    // Cache para componentes TMP_Text de los botones
    private TMP_Text[] buttonTexts;

    private void Awake()
    {
        if (Instance == null)
        {
            Instance = this;
            DontDestroyOnLoad(gameObject);
        }
        else
        {
            Destroy(gameObject);
        }

        // Asegurar que el Canvas tenga Graphic Raycaster
        if (!dialoguePanel.GetComponentInParent<GraphicRaycaster>())
        {
            dialoguePanel.GetComponentInParent<Canvas>().gameObject.AddComponent<GraphicRaycaster>();
        }
    }

    private void Update()
    {
        // OPTIMIZACIÓN: Solo procesar input si el diálogo está activo Y hay botones válidos
        if (!isDialogueActive || !hasValidButtons) return;

        HandleKeyboardNavigation();
    }

    private void HandleKeyboardNavigation()
    {
        // Cache del índice anterior para comparación
        int previousIndex = selectedIndex;

        // Navegación con teclado
        if (Input.GetKeyDown(downKey))
        {
            selectedIndex = (selectedIndex + 1) % cachedButtonCount;
        }
        else if (Input.GetKeyDown(upKey))
        {
            selectedIndex = (selectedIndex - 1 + cachedButtonCount) % cachedButtonCount;
        }
        else if (Input.GetKeyDown(selectKey))
        {
            currentButtons[selectedIndex].onClick.Invoke();
            return;
        }

        // OPTIMIZACIÓN: Solo actualizar colores si cambió la selección
        if (previousIndex != selectedIndex)
        {
            UpdateButtonColors(previousIndex, selectedIndex);
        }
    }

    // OPTIMIZACIÓN: Método separado para actualizar colores sin buscar componentes cada frame
    private void UpdateButtonColors(int previousIndex, int newIndex)
    {
        if (buttonTexts != null && buttonTexts.Length > previousIndex && buttonTexts.Length > newIndex)
        {
            buttonTexts[previousIndex].color = normalColor;
            buttonTexts[newIndex].color = selectedColor;
        }
    }

    public void StartDialogue(DIALOGUENODE startNode)
    {
        // OPTIMIZACIÓN: Activar flag de diálogo activo
        isDialogueActive = true;

        cameraController.SwitchCameraStyle(CAMERA.CameraStyle.Dialogue);
        playerMovement.controlActivo = false;

        currentNode = startNode;
        dialoguePanel.SetActive(true);
        panelAnimator.SetTrigger("Appear");
        UpdateDialogueUI();
    }

    private void UpdateDialogueUI()
    {
        ClearSelection();

        // Limpiar botones existentes
        foreach (Transform child in responsesContainer)
        {
            Destroy(child.gameObject);
        }

        if (typingCoroutine != null)
        {
            StopCoroutine(typingCoroutine);
        }
        typingCoroutine = StartCoroutine(TypeText(currentNode.dialogueText));
    }

    private IEnumerator TypeText(string text)
    {
        dialogueText.text = "";

        var stringBuilder = new System.Text.StringBuilder();

        foreach (char letter in text)
        {
            stringBuilder.Append(letter);
            dialogueText.text = stringBuilder.ToString();
            yield return new WaitForSeconds(textSpeed);
        }

        CreateResponseButtons();
        typingCoroutine = null;
    }

    private void CreateResponseButtons()
    {
        ClearSelection();

        // Limpiar botones anteriores
        foreach (Transform child in responsesContainer)
        {
            Destroy(child.gameObject);
        }

        if (currentNode.isEndNode)
        {
            CreateButton("Cerrar", EndDialogue, isCloseButton: true);
        }
        else
        {
            foreach (DialogueResponse response in currentNode.responses)
            {
                if (response.nextNode != null)
                {
                    CreateButton(response.responseText, () => SelectResponse(response));
                }
            }
        }

        // OPTIMIZACIÓN: Cache de botones y textos
        currentButtons = responsesContainer.GetComponentsInChildren<Button>();
        cachedButtonCount = currentButtons.Length;

        // Cache de componentes TMP_Text para evitar GetComponentInChildren repetidos
        buttonTexts = new TMP_Text[cachedButtonCount];
        for (int i = 0; i < cachedButtonCount; i++)
        {
            buttonTexts[i] = currentButtons[i].GetComponentInChildren<TMP_Text>();
        }

        // OPTIMIZACIÓN: Establecer flags de estado
        hasValidButtons = cachedButtonCount > 0;

        if (hasValidButtons)
        {
            selectedIndex = 0;
            buttonTexts[selectedIndex].color = selectedColor;
        }
    }

    private void CreateButton(string text, UnityAction action, bool isCloseButton = false)
    {
        GameObject button = Instantiate(responseButtonPrefab, responsesContainer);
        Button btnComponent = button.GetComponent<Button>();
        TMP_Text btnText = button.GetComponentInChildren<TMP_Text>();
        btnText.text = text;

        if (isCloseButton)
        {
            btnText.color = new Color(1f, 0, 0);
            btnText.fontStyle = FontStyles.Bold;
            button.GetComponent<Image>().color = new Color(0.9f, 0.9f, 0.9f, 0.2f);
        }

        button.GetComponent<Button>().onClick.AddListener(action);
    }

    private void ClearSelection()
    {
        // OPTIMIZACIÓN: Usar cache en lugar de buscar componentes
        if (buttonTexts != null)
        {
            for (int i = 0; i < buttonTexts.Length; i++)
            {
                if (buttonTexts[i] != null)
                    buttonTexts[i].color = normalColor;
            }
        }

        // Limpiar cache
        currentButtons = null;
        buttonTexts = null;
        hasValidButtons = false;
        cachedButtonCount = 0;
    }

    private void SelectResponse(DialogueResponse response)
    {
        if (currentNode.onNodeEnd != null)
            currentNode.onNodeEnd.Invoke();

        if (response.nextNode != null)
        {
            currentNode = response.nextNode;
            UpdateDialogueUI();
        }
        else
        {
            EndDialogue();
        }
    }

    public void OnDisappearEnd()
    {
        // OPTIMIZACIÓN: Desactivar flag de diálogo activo
        isDialogueActive = false;

        dialoguePanel.SetActive(false);
        ClearSelection();

        playerMovement.controlActivo = true;

        if (playerRigidbody != null)
        {
            playerRigidbody.constraints = RigidbodyConstraints.FreezeRotation;
            playerRigidbody.linearVelocity = Vector3.zero;
        }

        if (currentNode.onNodeEnd != null) currentNode.onNodeEnd.Invoke();
    }

    private void EndDialogue()
    {
        cameraController.SwitchCameraStyle(CAMERA.CameraStyle.Basic);
        panelAnimator.SetTrigger("Disappear");
        Invoke(nameof(OnDisappearEnd), 0.5f);
    }
}