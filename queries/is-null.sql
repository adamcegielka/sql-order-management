-- IS NULL, != - Customers
SELECT * FROM Customers;

SELECT *
FROM Customers
WHERE City
IS NULL;

SELECT FirstName, LastName, Email
FROM Customers
WHERE Email
IS NOT NULL;

SELECT *
FROM Customers
WHERE City != 'New York';

-- ----------------------------------
-- IS NULL, != - OrderItems
SELECT * FROM OrderItems;

SELECT *
FROM OrderItems
WHERE Quantity
IS NULL;

SELECT Product
FROM OrderItems
WHERE Price
IS NOT NULL;

SELECT OrderItemID, OrderID, Product
FROM OrderItems
WHERE OrderID != 4;

-- ----------------------------------
-- IS NULL, != - Orders
SELECT * FROM Orders;

SELECT *
FROM Orders
WHERE CustomerID
IS NULL;

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE TotalAmount
IS NOT NULL;

SELECT OrderID, CustomerID, TotalAmount
FROM Orders
WHERE TotalAmount != 180.00;

-- ----------------------------------
-- IS NULL, != - Products
SELECT * FROM Products;

SELECT *
FROM Products
WHERE QuantityInStock
IS NULL;

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice
IS NOT NULL;

SELECT ProductID, ProductName
FROM Products
WHERE QuantityInStock != 85;