-- AVG() - Customers
SELECT * FROM Customers;

SELECT AVG(PostalCode) AS AverageOfPostalCode 
FROM Customers;

SELECT City, AVG(PostalCode)
FROM Customers
GROUP BY City;

-- ----------------------------------
-- AVG() - OrderItems
SELECT * FROM OrderItems;

SELECT Product, AVG(Price)
FROM OrderItems;

SELECT AVG(DISTINCT Price)
FROM OrderItems;

SELECT OrderID, AVG(Price)
FROM OrderItems
GROUP BY OrderID;

-- ----------------------------------
-- AVG() - Orders
SELECT * FROM Orders;

SELECT AVG(TotalAmount)
FROM Orders;

SELECT CustomerID, AVG(DISTINCT TotalAmount)
FROM Orders
GROUP BY CustomerID;

-- ----------------------------------
-- AVG() - Products
SELECT * FROM Products;

SELECT AVG(UnitPrice) AS AverageOfUnitPrice
FROM Products;

SELECT AVG(DISTINCT UnitPrice)
FROM Products;

SELECT AVG(DISTINCT UnitPrice), QuantityInStock
FROM Products
GROUP BY QuantityInStock;