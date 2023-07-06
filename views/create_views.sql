-- Creation of a view that shows order information for each customer
CREATE VIEW CustomerOrders AS
SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Orders.OrderDate, Orders.TotalAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Retrieving order information for a customer from a view
SELECT FirstName, LastName, OrderDate, TotalAmount
FROM CustomerOrders
WHERE CustomerID = 1;