-- Tworzenie widoku, który pokazuje informacje o zamówieniach dla każdego klienta
CREATE VIEW CustomerOrders AS
SELECT Customers.CustomerID, Customers.FirstName, Customers.LastName, Orders.OrderDate, Orders.TotalAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

-- Pobieranie informacji o zamówieniach dla klienta z widoku
SELECT FirstName, LastName, OrderDate, TotalAmount
FROM CustomerOrders
WHERE CustomerID = 1;