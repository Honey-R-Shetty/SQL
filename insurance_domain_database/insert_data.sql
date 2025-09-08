INSERT INTO Customers (customer_id, first_name, last_name, date_of_birth, gender, contact_number, email, address) VALUES
(1, 'Emma', 'Brown', '1980-04-12', 'Female', '4445556666', 'emma@example.com', '123 Elm Street'),
(2, 'Liam', 'Wilson', '1975-09-23', 'Male', '7778889999', 'liam@example.com', '456 Oak Avenue');

INSERT INTO Policies (policy_id, policy_name, policy_type, coverage_details, premium, start_date, end_date) VALUES
(1, 'Health Secure', 'Health', 'Covers hospitalization', 5000.00, '2023-01-01', '2023-12-31'),
(2, 'Auto Protect', 'Auto', 'Covers vehicle damage', 3000.00, '2023-06-01', '2024-05-31');

INSERT INTO Claims (claim_id, claim_date, claim_amount, approved_amount, claim_status, policy_id, customer_id) VALUES
(1, '2023-07-15', 2000.00, 1500.00, 'Approved', 1, 1),
(2, '2023-08-20', 5000.00, 0.00, 'Denied', 2, 2);

INSERT INTO Agents (agent_id, first_name, last_name, contact_number, email, hire_date) VALUES
(1, 'Olivia', 'Davis', '2223334444', 'olivia@example.com', '2021-03-15'),
(2, 'Noah', 'Miller', '5556667777', 'noah@example.com', '2022-07-22');

INSERT INTO PolicyAssignments (assignment_id, customer_id, policy_id, start_date, end_date) VALUES
(1, 1, 1, '2023-01-01', '2023-12-31'),
(2, 2, 2, '2023-06-01', '2024-05-31');

INSERT INTO ClaimProcessing (processing_id, claim_id, processing_date, payment_amount, payment_date) VALUES
(1, 1, '2023-07-20', 1500.00, '2023-07-22');
