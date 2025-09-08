-- Insert sample data into tables

INSERT INTO Customers (customer_id, name) VALUES
(1, 'John Doe'),
(2, 'Jane Smith'),
(3, 'Alice Johnson');

INSERT INTO Agents (agent_id, name) VALUES
(1, 'Agent A'),
(2, 'Agent B');

INSERT INTO Policies (policy_id, customer_id, policy_name, agent_id) VALUES
(1, 1, 'Health Insurance', 1),
(2, 2, 'Car Insurance', 2),
(3, 3, 'Travel Insurance', 1);

INSERT INTO Claims (claim_id, policy_id, claim_date, amount, status) VALUES
(1, 1, '2018-05-20', 500.00, 'Closed'),
(2, 1, '2023-01-10', 200.00, 'Open'),
(3, 2, '2017-11-11', 0.00, 'Closed');

INSERT INTO Temp_Claims (claim_id, policy_id, claim_date, amount, status) VALUES
(1, 1, '2023-06-01', 100.00, 'Open'),
(2, 2, '2022-12-15', 250.00, 'Closed');

INSERT INTO Old_Agents (agent_id, name) VALUES
(1, 'Agent Old');

INSERT INTO Temp_Policies (policy_id, customer_id, policy_name) VALUES
(1, 3, 'Temporary Policy');
