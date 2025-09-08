CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    gender VARCHAR(10),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Policies (
    policy_id INT PRIMARY KEY,
    policy_name VARCHAR(100),
    policy_type VARCHAR(50),
    coverage_details TEXT,
    premium DECIMAL(10,2),
    start_date DATE,
    end_date DATE
);

CREATE TABLE Claims (
    claim_id INT PRIMARY KEY,
    claim_date DATE,
    claim_amount DECIMAL(10,2),
    approved_amount DECIMAL(10,2),
    claim_status VARCHAR(20),
    policy_id INT,
    customer_id INT,
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Agents (
    agent_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    contact_number VARCHAR(20),
    email VARCHAR(100),
    hire_date DATE
);

CREATE TABLE PolicyAssignments (
    assignment_id INT PRIMARY KEY,
    customer_id INT,
    policy_id INT,
    start_date DATE,
    end_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (policy_id) REFERENCES Policies(policy_id)
);

CREATE TABLE ClaimProcessing (
    processing_id INT PRIMARY KEY,
    claim_id INT,
    processing_date DATE,
    payment_amount DECIMAL(10,2),
    payment_date DATE,
    FOREIGN KEY (claim_id) REFERENCES Claims(claim_id)
);
