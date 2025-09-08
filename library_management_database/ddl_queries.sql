-- 1. Add a new column to the books table
ALTER TABLE Books ADD shelf_location VARCHAR(50);

-- 2. Rename position column to job_title in staff
ALTER TABLE Staff RENAME COLUMN position TO job_title;

-- 3. Drop the email column from members
ALTER TABLE Members DROP COLUMN email;
