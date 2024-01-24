-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.
SELECT CustomerID FROM Customers 
WHERE FirstName = "Loretta" AND LastName = "Hundey" AND Address = "6939 Elka Place";

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
INSERT INTO Orders (CustomerID, OrderDate) VALUES (70, "2022-09-20 14:00:00");
SELECT * FROM Orders WHERE CustomerID = 70;
SELECT * FROM Dishes;
INSERT INTO OrdersDishes (OrderID, DishID) 
Values (1001, 7), (1001, 4), (1001, 20);
SELECT * FROM OrdersDishes WHERE OrderID = 1001;

SELECT SUM(Price) From Dishes Where DishID IN 
(SELECT DishID FROM OrdersDishes WHERE OrderID = 1001);