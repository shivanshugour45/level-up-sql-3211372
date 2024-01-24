-- Create a list of books to feature in an exhibit.

-- Make a pick list of books published from 1890-1899 
-- which are not currently checked out.
Select Title, Barcode From Books 
Where Published BETWEEN 1890 AND 1899 AND 
(BookID Not IN (Select BookID FROM Loans WHERE ReturnedDate IS NULL))