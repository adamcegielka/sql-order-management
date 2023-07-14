-- Customers:
SELECT * FROM Customers;

SELECT DISTINCT *
FROM Customers;

SELECT FirstName, LastName
FROM Customers;

SELECT DISTINCT FirstName
FROM Customers;

SELECT FirstName, LastName, City
FROM Customers;

SELECT DISTINCT City
FROM Customers;

-- ------------------------------------------------------
-- Orderitems:
SELECT * FROM Orderitems;

SELECT DISTINCT *
FROM Orderitems;

SELECT OrderItemID, Quantity
FROM Orderitems;

SELECT DISTINCT Quantity
FROM Orderitems;

SELECT OrderItemID, Quantity, Price
FROM Orderitems;

SELECT DISTINCT Price
FROM Orderitems;

-- ------------------------------------------------------
-- Orders:
SELECT * FROM Orders;

SELECT DISTINCT *
FROM Orders;

SELECT CustomerID, TotalAmount
FROM Orders;

SELECT DISTINCT CustomerID
FROM Orders;

SELECT OrderID, TotalAmount
FROM Orders;

SELECT DISTINCT TotalAmount
FROM Orders;

-- ------------------------------------------------------
-- Products:
SELECT * FROM Products;

SELECT DISTINCT *
FROM Products;

SELECT ProductID, UnitPrice
FROM Products;

SELECT DISTINCT UnitPrice
FROM Products;

SELECT ProductID, UnitPrice, QuantityInStock
FROM Products;

SELECT DISTINCT QuantityInStock
FROM Products;

-- DISTINCT - Query without duplicates