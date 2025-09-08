-- Create all tables for the insurance project

CREATE TABLE Temp_Claims (
    claim_id INT PRIMARY KEY,
    policy_id INT,
    claim_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20)
);

CREATE TABLE Claims (
    claim_id INT PRIMARY KEY,
    policy_id INT,
    claim_date DATE,
    amount DECIMAL(10,2),
    status VARCHAR(20)
);

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Policies (
    policy_id INT PRIMARY KEY,
    customer_id INT,
    policy_name VARCHAR(100),
    agent_id INT
);

CREATE TABLE Agents (
    agent_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Old_Agents (
    agent_id INT PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE Temp_Policies (
    policy_id INT PRIMARY KEY,
    customer_id INT,
    policy_name VARCHAR(100)
);
