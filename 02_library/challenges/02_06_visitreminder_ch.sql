-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT P.FirstName, P.Email, Count(L.LoanID) as LoansCount 
FROM Loans as L JOIN Patrons AS P ON L.PatronID = P.PatronID
Group BY L.PatronID Order By LoansCount ASC LIMIT 15;