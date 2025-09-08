-- 1. Retrieve all customers with their assigned policies and agents
SELECT cu.first_name AS CustomerFirstName, cu.last_name AS CustomerLastName,
       p.policy_title, a.first_name AS AgentFirstName, a.last_name AS AgentLastName
FROM PolicyAssignments pa
JOIN Customers cu ON pa.customer_id = cu.customer_id
JOIN Policies p ON pa.policy_id = p.policy_id
JOIN Agents a ON a.agent_id = 1;

-- 2. Find all claims and associated policy details
SELECT cl.claim_id, cl.claim_date, cl.claim_amount, p.policy_title
FROM Claims cl
JOIN Policies p ON cl.policy_id = p.policy_id;

-- 3. List all claims with customer details
SELECT cl.claim_id, cl.claim_date, cl.claim_status, cu.first_name, cu.last_name
FROM Claims cl
JOIN Customers cu ON cl.customer_id = cu.customer_id;

-- 4. Get total claim amount and number of claims per policy type
SELECT p.policy_type, COUNT(cl.claim_id) AS total_claims, SUM(cl.claim_amount) AS total_amount
FROM Claims cl
JOIN Policies p ON cl.policy_id = p.policy_id
GROUP BY p.policy_type;

-- 5. Find the most recent claim for each customer
SELECT cu.customer_id, cu.first_name, cu.last_name, MAX(cl.claim_date) AS recent_claim
FROM Customers cu
JOIN Claims cl ON cu.customer_id = cl.customer_id
GROUP BY cu.customer_id;
