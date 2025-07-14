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
    [Tooltip("Tecla para seleccionar opci�n")]
    [SerializeField] private KeyCode selectKey = KeyCode.Return;
    [Tooltip("Tecla para mover arriba")]
    [SerializeField] private KeyCode upKey = KeyCode.UpArrow;
    [Tooltip("Tecla para mover abajo")]
    [SerializeField] private KeyCode downKey = KeyCode.DownArrow;

    [Header("Visual Feedback")]
    [Tooltip("Color de opci�n seleccionada")]
    [SerializeField] private Color selectedColor = Color.yellow;
    [Tooltip("Color de opci�n normal")]
    [SerializeField] private Color normalColor = Color.white;

    [Header("Player Control")]
    [Tooltip("Arrastra los scripts de movimiento")]
    [SerializeField] private MonoBehaviour[] playerMovementScripts; 
    [Tooltip("Para congelar f�sica")]
    [SerializeField] private Rigidbody playerRigidbody; 

    private Coroutine typingCoroutine;
    private DIALOGUENODE currentNode;
    private Button[] currentButtons;
    private int selectedIndex = 0;

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
        if (!dialoguePanel.activeSelf) return;

        HandleKeyboardNavigation();
    }

    private void HandleKeyboardNavigation()
    {
        if (currentButtons == null || currentButtons.Length == 0) return;

        // Guardar el �ndice anterior para actualizar el color
        int previousIndex = selectedIndex;

        // Navegaci�n con teclado
        if (Input.GetKeyDown(downKey))
        {
            selectedIndex = (selectedIndex + 1) % currentButtons.Length;
        }
        else if (Input.GetKeyDown(upKey))
        {
            selectedIndex = (selectedIndex - 1 + currentButtons.Length) % currentButtons.Length;
        }
        else if (Input.GetKeyDown(selectKey))
        {
            currentButtons[selectedIndex].onClick.Invoke();
            return;
        }
        if (previousIndex != selectedIndex)
        {
            currentButtons[previousIndex].GetComponentInChildren<TMP_Text>().color = normalColor;
            currentButtons[selectedIndex].GetComponentInChildren<TMP_Text>().color = selectedColor;
        }
    }

    public void StartDialogue(DIALOGUENODE startNode)
    {
        foreach (var script in playerMovementScripts)
        {
            script.enabled = false;
        }
        if (playerRigidbody != null)
        {
            playerRigidbody.linearVelocity = Vector3.zero; // Detener movimiento f�sico
        }

        currentNode = startNode;
        dialoguePanel.SetActive(true);
        panelAnimator.SetTrigger("Appear");
        UpdateDialogueUI();
    }

    private void UpdateDialogueUI()
    {
        ClearSelection();
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

        var stringBuilder = new System.Text.StringBuilder(); // ← Clave para optimizar strings

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

        currentButtons = responsesContainer.GetComponentsInChildren<Button>();

        if (currentButtons.Length > 0)
        {
            selectedIndex = 0;
            currentButtons[selectedIndex].GetComponentInChildren<TMP_Text>().color = selectedColor;
        }
    }

    private void CreateButton(string text, UnityAction action, bool isCloseButton = false)
    {
        GameObject button = Instantiate(responseButtonPrefab, responsesContainer);
        Button btnComponent = button.GetComponent<Button>();
        TMP_Text btnText = button.GetComponentInChildren<TMP_Text>();
            btnText.text = text;

        if (isCloseButton) // Si es el bot�n de cerrar
        {
            btnText.color = new Color(1f, 0, 0); // Rojo
            btnText.fontStyle = FontStyles.Bold;
            button.GetComponent<Image>().color = new Color(0.9f, 0.9f, 0.9f, 0.2f);
        }

        button.GetComponent<Button>().onClick.AddListener(action);
        // Debug visual
        Debug.Log($"Boton creado: {text}", button);
    }

    private void ClearSelection()
    {
        if (currentButtons != null)
        {
            foreach (var button in currentButtons)
            {
                if (button != null)
                    button.GetComponentInChildren<TMP_Text>().color = normalColor;
            }
        }
        currentButtons = null;
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
        dialoguePanel.SetActive(false);
        ClearSelection();
        if (currentNode.onNodeEnd != null) currentNode.onNodeEnd.Invoke();
    }

    private void EndDialogue()
    {
        panelAnimator.SetTrigger("Disappear");
    }
}