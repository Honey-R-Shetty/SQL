-- 1. Add a new column to agents
ALTER TABLE Agents ADD region VARCHAR(50);

-- 2. Rename policy_name column to policy_title in policies
ALTER TABLE Policies RENAME COLUMN policy_name TO policy_title;

-- 3. Drop the address column from customers
ALTER TABLE Customers DROP COLUMN address;
