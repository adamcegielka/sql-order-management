-- LIMIT - CustomersCustomers
SELECT * FROM Customers;

SELECT *
FROM Customers
LIMIT 10;

SELECT *
FROM Customers
ORDER BY LastName
LIMIT 15;		-- counting by LastName

SELECT Customerid, FirstName, LastName, Email
FROM Customers
LIMIT 5; 		-- 5 firsts

SELECT Customerid, FirstName, LastName, Email
FROM Customers
LIMIT 25,5;		-- 5 from 25

SELECT Customerid, FirstName, LastName
FROM Customers
LIMIT 25
OFFSET 5;		-- from 5 next 25

SELECT Customerid, FirstName, LastName
FROM Customers
WHERE City = 'Miami'
LIMIT 2;

SELECT Customerid, FirstName, LastName
FROM Customers
WHERE City = 'Miami'
ORDER BY LastName
LIMIT 2;		-- by LastName

SELECT DISTINCT City
FROM Customers
LIMIT 5;

-- ------------------------------------------------------
-- LIMIT - OrderItems
SELECT * FROM OrderItems;

SELECT *
FROM OrderItems
LIMIT 8;

SELECT *
FROM OrderItems
ORDER BY Price
LIMIT 8;

SELECT OrderItemID, OrderID, Product, Price
FROM OrderItems
LIMIT 15,8;

SELECT OrderItemID, OrderID, Product, Price
FROM OrderItems
LIMIT 15
OFFSET 8;

SELECT OrderItemID, OrderID, Product, Price
FROM OrderItems
WHERE Price = 75
LIMIT 2;

SELECT DISTINCT OrderItemID, Price
FROM OrderItems
LIMIT 4;

SELECT DISTINCT OrderItemID, Price
FROM OrderItems
ORDER BY Price
LIMIT 4;

-- ------------------------------------------------------
-- LIMIT - Orders
SELECT * FROM Orders;

SELECT *
FROM Orders
LIMIT 12;

SELECT *
FROM Orders
ORDER BY TotalAmount
LIMIT 12;

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
LIMIT 5,9;

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
LIMIT 5
OFFSET 9;

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE TotalAmount = 190
LIMIT 2;

SELECT DISTINCT TotalAmount
FROM Orders
ORDER BY TotalAmount
LIMIT 5;

-- ------------------------------------------------------
-- LIMIT - Products
SELECT * FROM Products;

SELECT *
FROM Products
LIMIT 6;

SELECT *
FROM Products
ORDER BY QuantityInStock
LIMIT 9;

SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice
LIMIT 10;

SELECT ProductID, ProductName, UnitPrice
FROM Products
LIMIT 4,11;

SELECT ProductID, ProductName, UnitPrice
FROM Products
LIMIT 4
OFFSET 11;

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE UnitPrice = 9.99
LIMIT 3;

SELECT DISTINCT UnitPrice
FROM Products
ORDER BY UnitPrice
LIMIT 4;