-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.

SELECT Count(BookID) FROM Books WHERE Title = "Dracula";

SELECT Count(LoanID) FROM Loans 
WHERE BookID IN 
(SELECT BookID FROM Books WHERE Title = "Dracula") AND
ReturnedDate IS NULL;

SELECT 
(SELECT Count(BookID) FROM Books WHERE Title = "Dracula")-(SELECT Count(Books.BookID) 
FROM Books JOIN Loans ON Books.BookID = Loans.BookID
WHERE Books.Title = "Dracula" AND Loans.ReturnedDate IS NULL) AS AvailableCopies; 