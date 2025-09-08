-- 1. Retrieve all books along with their authors
SELECT b.title, a.first_name, a.last_name FROM Books b
JOIN Authors a ON b.author_id = a.author_id;

-- 2. Find all books currently on loan with member details
SELECT l.loan_id, b.title, m.first_name, m.last_name FROM Loans l
JOIN Books b ON l.book_id = b.book_id
JOIN Members m ON l.member_id = m.member_id
WHERE l.actual_return_date IS NULL;

-- 3. List all books borrowed by a specific member (e.g., member_id = 2)
SELECT b.title FROM Loans l
JOIN Books b ON l.book_id = b.book_id
WHERE l.member_id = 2;

-- 4. Get total number of books and total available copies for each genre
SELECT genre, COUNT(*) AS total_books, SUM(available_copies) AS total_available FROM Books
GROUP BY genre;

-- 5. Find all staff members who are librarians and their hire dates
SELECT first_name, last_name, hire_date FROM Staff
WHERE job_title = 'Librarian';
