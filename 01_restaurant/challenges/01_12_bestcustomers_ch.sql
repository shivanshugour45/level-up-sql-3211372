-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
Select C.FirstName, C.LastName, C.Email, COUNT(O.OrderId) as OrderCount FROM Customers as C 
JOIN Orders as O on C.CustomerID = O.CustomerID GROUP BY C.CustomerID ORDER BY OrderCount DESC LIMIT 15;