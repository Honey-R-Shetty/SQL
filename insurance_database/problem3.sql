-- Problem 3: Retrieve customer and policy data

-- Task 1: INNER JOIN customers and policies
SELECT c.name AS CustomerName, p.policy_name AS PolicyName
FROM Customers c
INNER JOIN Policies p ON c.customer_id = p.customer_id;

-- Task 2: LEFT JOIN customers and policies
SELECT c.name AS CustomerName, p.policy_name AS PolicyName
FROM Customers c
LEFT JOIN Policies p ON c.customer_id = p.customer_id;
