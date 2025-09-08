-- 1. Update a policy's premium amount
UPDATE Policies SET premium = 5500.00 WHERE policy_id = 1;

-- 2. Delete a specific claim
DELETE FROM Claims WHERE claim_id = 2;

-- 3. Insert a new policy assignment
INSERT INTO PolicyAssignments (assignment_id, customer_id, policy_id, start_date, end_date) VALUES
(3, 1, 2, '2023-09-01', '2024-08-31');
