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

SELECT COUNT(DISTINCT City)
FROM Customers;

SELECT COUNT(DISTINCT City) AS DistinctCity
FROM Customers;

SELECT COUNT(*) AS DistinctCity
FROM (SELECT DISTINCT City
      FROM Customers) AS CityList;

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

SELECT COUNT(DISTINCT Price)
FROM Orderitems;

SELECT COUNT(DISTINCT Price) AS DistinctPrices
FROM Orderitems;

SELECT COUNT(*) AS DistinctPrices
FROM (SELECT DISTINCT Price
      FROM Orderitems) AS PriceList;

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

SELECT COUNT(DISTINCT TotalAmount)
FROM Orders;

SELECT COUNT(DISTINCT TotalAmount) AS DistinctTotal
FROM Orders;

SELECT COUNT(*) AS DistinctTotal
FROM (SELECT DISTINCT TotalAmount
      FROM Orders) AS AmountList;

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

SELECT COUNT(DISTINCT QuantityInStock)
FROM Products;

SELECT COUNT(DISTINCT QuantityInStock) AS DistinctQuantity
FROM Products;

SELECT COUNT(*) AS DistinctQuantity
FROM (SELECT DISTINCT QuantityInStock
      FROM Products) AS StockList;

-- DISTINCT - Query without duplicates