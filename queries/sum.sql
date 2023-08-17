-- SUM() - Customers
SELECT * FROM Customers;

SELECT SUM(PostalCode) AS AverageOfPostalCode 
FROM Customers;

SELECT City, SUM(PostalCode)
FROM Customers
GROUP BY City;

-- ----------------------------------
-- SUM() - OrderItems
SELECT * FROM OrderItems;

SELECT SUM(Price)
FROM OrderItems;

SELECT AVG(DISTINCT Price)
FROM OrderItems;

SELECT OrderID, SUM(Price)
FROM OrderItems
GROUP BY OrderID;

-- ----------------------------------
-- SUM() - Orders
SELECT * FROM Orders;

SELECT SUM(TotalAmount)
FROM Orders;

SELECT CustomerID, SUM(DISTINCT TotalAmount)
FROM Orders
GROUP BY CustomerID;

-- ----------------------------------
-- SUM() - Products
SELECT * FROM Products;

SELECT SUM(UnitPrice) AS AverageOfUnitPrice
FROM Products;

SELECT SUM(DISTINCT UnitPrice)
FROM Products;

SELECT SUM(DISTINCT UnitPrice), QuantityInStock
FROM Products
GROUP BY QuantityInStock;