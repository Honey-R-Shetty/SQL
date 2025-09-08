-- Problem 5: Cleanup and reporting

-- Task 1: Delete closed claims with zero amount
DELETE FROM Claims
WHERE status = 'Closed' AND amount = 0;

-- Task 2: Drop Temp_Policies
DROP TABLE Temp_Policies;

-- Task 3: LEFT JOIN agents and policies
SELECT a.name AS AgentName, p.policy_name AS PolicyName
FROM Agents a
LEFT JOIN Policies p ON a.agent_id = p.agent_id;
