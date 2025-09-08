-- 1. Insert new data into the books table
INSERT INTO Books (book_id, title, author_id, publication_year, genre, isbn, available_copies, shelf_location) VALUES
(3, 'Animal Farm', 1, 1945, 'Political Fiction', '1122334455', 4, 'A3');

-- 2. Update a member's contact number
UPDATE Members SET contact_number = '5556667777' WHERE member_id = 1;

-- 3. Delete a specific loan record
DELETE FROM Loans WHERE loan_id = 1;

-- 4. Insert a new loan record
INSERT INTO Loans (loan_id, book_id, member_id, loan_date, return_date, actual_return_date) VALUES
(2, 2, 2, '2023-09-01', '2023-09-15', NULL);
