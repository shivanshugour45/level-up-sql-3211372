-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.
Select Published, Count(Distinct(Title)) AS Count 
FROM Books 
GROUP BY Published
ORDER BY Count DESC;
-- Report 2: Show the five books that have been
-- checked out the most.
Select B.Title, COUNT(L.LoanID) as LoanCount 
FROM Loans as L JOIN Books as B on L.BookID = B.BookID
Group BY B.Title
ORDER BY LoanCount DESC
LIMIT 5;