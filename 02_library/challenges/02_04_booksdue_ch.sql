-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.
Select P.FirstName, P.Email, T.Title, T.DueDate, T.ReturnedDate  FROM Patrons as P Join 
(Select Title, DueDate, ReturnedDate From Books as B 
JOIN Loans as L on B.BookID=L.BookID) AS T 
WHERE DueDate = "2022-07-13" AND T.ReturnedDate IS NUll;