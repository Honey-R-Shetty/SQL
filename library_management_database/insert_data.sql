INSERT INTO Authors (author_id, first_name, last_name, date_of_birth, nationality) VALUES
(1, 'George', 'Orwell', '1903-06-25', 'British'),
(2, 'J.K.', 'Rowling', '1965-07-31', 'British');

INSERT INTO Books (book_id, title, author_id, publication_year, genre, isbn, available_copies) VALUES
(1, '1984', 1, 1949, 'Fiction', '1234567890', 3),
(2, 'Harry Potter', 2, 1997, 'Fantasy', '0987654321', 5);

INSERT INTO Members (member_id, first_name, last_name, date_of_birth, contact_number, email, membership_date) VALUES
(1, 'Alice', 'Johnson', '1990-03-15', '1234567890', 'alice@example.com', '2022-01-01'),
(2, 'Bob', 'Smith', '1985-11-20', '0987654321', 'bob@example.com', '2023-03-05');

INSERT INTO Loans (loan_id, book_id, member_id, loan_date, return_date, actual_return_date) VALUES
(1, 1, 1, '2023-08-01', '2023-08-15', NULL);

INSERT INTO Staff (staff_id, first_name, last_name, position, contact_number, email, hire_date) VALUES
(1, 'Carol', 'White', 'Librarian', '1112223333', 'carol@example.com', '2020-05-20');
