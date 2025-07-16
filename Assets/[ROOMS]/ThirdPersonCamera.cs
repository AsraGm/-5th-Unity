using System.Collections;
using UnityEngine;

[RequireComponent(typeof(Camera))]
public class ThirdPersonCamera : MonoBehaviour
{
    [Header("References")]
    [SerializeField] private Transform target;
    [SerializeField] private Transform cameraPivot;
    [SerializeField] private Camera cam;

    [Header("Movement Settings")]
    [SerializeField] private Vector3 offset = new Vector3(2f, 2f, -4f);
    [SerializeField] private float followSpeed = 2000f;
    [SerializeField] private float movementLerpSpeed = 5f;

    [Header("Rotation Settings")]
    [SerializeField] private float rotationSpeed = 5f;
    [SerializeField] private float mouseSensitivity = 3f;
    [SerializeField] private bool invertY = false;
    [SerializeField] private float verticalClamp = 10f;

    [Header("Collision Settings")]
    [SerializeField] private LayerMask collisionMask;
    [SerializeField] private float collisionRadius = 1f;
    [SerializeField] private float collisionOffset = 0.5f;

    [Header("Temporary Position Settings")]
    [SerializeField] private float transitionDuration = 1f;

    // Estados
    private float mouseX;
    private float mouseY;
    private Vector3 currentVelocity;
    private Vector3 refVelocity;
    private Vector3 originalOffset;
    private Vector3 originalRotation;
    private Coroutine currentTransition;

    private void Awake()
    {
        if (!cameraPivot)
        {
            cameraPivot = new GameObject("CameraPivot").transform;
            cameraPivot.SetParent(target);
            cameraPivot.localPosition = Vector3.zero;
        }

        Cursor.lockState = CursorLockMode.Locked;
        Cursor.visible = false;
    }

    private void Start()
    {
        originalOffset = offset;
        originalRotation = new Vector3(mouseY, mouseX, 0);
    }

    private void Update()
    {
        HandleCameraRotation();
    }

    private void LateUpdate()
    {
        if (target == null) return;

        FollowTarget();
        HandleObstacles();
        MatchPlayerRotation();
    }

    private void HandleCameraRotation()
    {
        float mouseXInput = Input.GetAxis("Mouse X") * mouseSensitivity;
        float mouseYInput = Input.GetAxis("Mouse Y") * mouseSensitivity * (invertY ? 1 : -1);

        mouseX += mouseXInput;
        mouseY -= mouseYInput;
        mouseY = Mathf.Clamp(mouseY, -verticalClamp, verticalClamp);

        cameraPivot.rotation = Quaternion.Euler(0, mouseX, 0);
        transform.rotation = Quaternion.Euler(mouseY, mouseX, 0);
    }

    private void FollowTarget()
    {
        Vector3 targetPosition = target.position +
                               cameraPivot.forward * offset.z +
                               cameraPivot.right * offset.x +
                               Vector3.up * offset.y;

        transform.position = Vector3.SmoothDamp(transform.position, targetPosition, ref refVelocity, 1f / followSpeed);
    }

    private void MatchPlayerRotation()
    {
        float targetRotationY = Mathf.Atan2(cameraPivot.forward.x, cameraPivot.forward.z) * Mathf.Rad2Deg;
        Quaternion targetPlayerRotation = Quaternion.Euler(0, targetRotationY, 0);
        target.rotation = Quaternion.Lerp(target.rotation, targetPlayerRotation, movementLerpSpeed * Time.deltaTime);
    }

    private void HandleObstacles()
    {
        Vector3 dirToTarget = target.position - transform.position;
        float distance = dirToTarget.magnitude;

        if (Physics.SphereCast(transform.position, collisionRadius, dirToTarget.normalized, out RaycastHit hit, distance, collisionMask))
        {
            transform.position = Vector3.Lerp(transform.position, hit.point + hit.normal * collisionOffset, 10f * Time.deltaTime);
        }
    }

    public void ResetCamera()
    {
        mouseX = target.eulerAngles.y;
        mouseY = 0f;
    }

    #region POSICIONES TEMPORALES

    // Permite establecer una posición temporal para la cámara, con una rotación y duración específicas
    public void SetTemporaryPosition(Vector3 newOffset, Vector3 newRotation, float duration, bool returnAutomatically = true)
    {
        if (currentTransition != null)
            StopCoroutine(currentTransition);

        currentTransition = StartCoroutine(TransitionToPosition(
            newOffset,
            newRotation,
            duration,
            returnAutomatically));
    }

    public void ReturnToNormalPosition(float customDuration = -1f) // Si customDuration es -1, usa el valor por defecto de transitionDuration
    {
        if (currentTransition != null)
            StopCoroutine(currentTransition);

        float duration = customDuration > 0 ? customDuration : transitionDuration;
        currentTransition = StartCoroutine(TransitionToPosition(
            originalOffset,
            originalRotation,
            duration,
            false));
    }

    // Corrutina para la transición a una posición temporal
    private IEnumerator TransitionToPosition(Vector3 targetOffset, Vector3 targetRotation, float duration, bool autoReturn)
    {
        Vector3 startOffset = offset;
        Vector2 startRotation = new Vector2(mouseX, mouseY);
        Vector2 endRotation = new Vector2(targetRotation.y, targetRotation.x);
        float timer = 0f;

        while (timer < transitionDuration)
        {
            timer += Time.deltaTime;
            float t = timer / transitionDuration;

            offset = Vector3.Lerp(startOffset, targetOffset, t);
            mouseX = Mathf.LerpAngle(startRotation.x, endRotation.x, t);
            mouseY = Mathf.LerpAngle(startRotation.y, endRotation.y, t);

            yield return null;
        }

        if (autoReturn && duration > 0)
        {
            yield return new WaitForSeconds(duration);
            ReturnToNormalPosition();
        }

        currentTransition = null;
    }

    #endregion
}