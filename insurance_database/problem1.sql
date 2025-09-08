-- Problem 1: Clean up old data

-- Task 1: Truncate Temp_Claims
TRUNCATE TABLE Temp_Claims;

-- Task 2: Delete Claims older than 5 years
DELETE FROM Claims
WHERE claim_date < DATE_SUB(CURDATE(), INTERVAL 5 YEAR);
