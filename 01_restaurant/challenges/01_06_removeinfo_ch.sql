-- Remove incorrect information from the database.
SELECT * FROM Customers WHERE FirstName = "Norby";
-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.
SELECT * From Reservations WHERE CustomerID = 64;

DELETE FROM Reservations WHERE ReservationID = 2000;

SELECT * From Reservations WHERE CustomerID = 64;