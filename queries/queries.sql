-- Pobieranie informacji o kliencie i jego zamówieniach
SELECT Customers.FirstName, Customers.LastName, Orders.OrderDate, Orders.TotalAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
WHERE Customers.CustomerID = 1;

-- Obliczanie łącznej kwoty zamówień dla każdego klienta
SELECT Customers.FirstName, Customers.LastName, SUM(Orders.TotalAmount) AS TotalOrderAmount
FROM Customers
JOIN Orders ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CustomerID;

-- Pobieranie informacji o pozycjach zamówienia dla danego zamówienia
SELECT Orders.OrderID, OrderItems.Product, OrderItems.Quantity, OrderItems.Price
FROM Orders
JOIN OrderItems ON Orders.OrderID = OrderItems.OrderID
WHERE Orders.OrderID = 1;
