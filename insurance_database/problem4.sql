-- Problem 4: Complex join query

SELECT c.name AS CustomerName,
       p.policy_name AS PolicyName,
       a.name AS AgentName,
       cl.claim_id AS ClaimID,
       cl.amount AS ClaimAmount,
       cl.status AS ClaimStatus
FROM Customers c
INNER JOIN Policies p ON c.customer_id = p.customer_id
LEFT JOIN Agents a ON p.agent_id = a.agent_id
RIGHT JOIN Claims cl ON p.policy_id = cl.policy_id;
