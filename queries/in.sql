-- IN - Customers
SELECT * FROM Customers;

SELECT *
FROM Customers
WHERE City
IN ('Chicago', 'Miami');

SELECT LastName, Email
FROM Customers
WHERE LastName
IN ('Smith', 'Brown', 'Clark', 'Taylor');

SELECT FirstName, LastName, City
FROM Customers
WHERE City
IN ('New York', 'San Francisco', 'Seattle');

SELECT FirstName, LastName, City
FROM Customers
WHERE NOT City
IN ('New York', 'San Francisco', 'Seattle', 'Miami');

SELECT *
FROM Customers
WHERE City
NOT IN ('New York', 'Los Angeles');

-- ----------------------------------
-- IN - OrderItems
SELECT * FROM OrderItems;

SELECT *
FROM OrderItems
WHERE Quantity
IN (3, 4);

SELECT Product
FROM OrderItems
WHERE Quantity
IN (1, 2);

SELECT OrderItemID, OrderID, Product
FROM OrderItems
WHERE OrderID
IN (4, 12);

SELECT OrderItemID, OrderID, Product
FROM OrderItems
WHERE NOT Price
IN (30.00, 75.00);

SELECT *
FROM OrderItems
WHERE Price
NOT IN (55.00, 65.00);

-- ----------------------------------
-- IN - Orders
SELECT * FROM Orders;

SELECT *
FROM Orders
WHERE CustomerID
IN (2, 4);

SELECT OrderDate
FROM Orders
WHERE TotalAmount
IN (170.00, 210.00);

SELECT OrderID, CustomerID, TotalAmount
FROM Orders
WHERE OrderDate
IN ('2023-06-07', '2023-07-07');

SELECT OrderID, CustomerID, TotalAmount
FROM Orders
WHERE NOT TotalAmount
IN (210.00, 260.00, 340.00);

SELECT *
FROM Orders
WHERE CustomerID
NOT IN (2, 4);

-- ----------------------------------
-- IN - Products
SELECT * FROM Products;

SELECT *
FROM Products
WHERE QuantityInStock 
IN (85, 110);

SELECT ProductID
FROM Products
WHERE UnitPrice
IN (9.99, 14.99);

SELECT ProductID, ProductName
FROM Products
WHERE QuantityInStock
IN (70, 90, 120);

SELECT ProductID, ProductName
FROM Products
WHERE NOT UnitPrice
IN (8.99, 11.99, 16.99);

SELECT *
FROM Products
WHERE QuantityInStock
NOT IN (90.00, 110.00);