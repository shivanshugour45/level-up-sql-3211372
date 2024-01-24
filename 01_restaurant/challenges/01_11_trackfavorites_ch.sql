-- Update information in the database.
SELECT * FROM Customers WHERE FirstName = "Cleo" AND LastName = "Goldwater";
-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

UPDATE Customers SET FavoriteDish = (Select DishID FROM Dishes  WHERE Name = "Quinoa Salmon Salad");