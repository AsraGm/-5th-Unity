using UnityEngine;

public class SimpleNPC : MonoBehaviour
{
    [Header("Movement")]
    public float moveSpeed = 2f;
    public float waitTime = 3f;

    [Header("Patrol")]
    public Transform[] patrolPoints;

    private int currentPatrolIndex = 0;
    private float waitTimer = 0f;
    private bool isWaiting = false;

    private void Update()
    {
        if (patrolPoints == null || patrolPoints.Length == 0) return;

        Patrol();
    }

    private void Patrol()
    {
        if (isWaiting)
        {
            waitTimer += Time.deltaTime;
            if (waitTimer >= waitTime)
            {
                isWaiting = false;
                waitTimer = 0f;
                currentPatrolIndex = (currentPatrolIndex + 1) % patrolPoints.Length;
            }
            return;
        }

        Transform targetPoint = patrolPoints[currentPatrolIndex];
        transform.position = Vector3.MoveTowards(transform.position, targetPoint.position, moveSpeed * Time.deltaTime);

        if (Vector3.Distance(transform.position, targetPoint.position) < 0.1f)
        {
            isWaiting = true;
        }
    }
}