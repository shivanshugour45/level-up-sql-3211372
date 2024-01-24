-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
SELECT 
c.FirstName, c.LastName, r.ReservationID, r.Date, r.PartySize 
FROM Customers AS c JOIN Reservations AS r on c.CustomerID = r.CustomerID
WHERE c.LastName LIKE "St%" AND r.PartySize = 4 ORDER BY r.Date DESC;
-- There are four people in the party. Today is June 14th.