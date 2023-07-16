-- AND - CustomersCustomers
SELECT * FROM Customers;

SELECT *
FROM Customers
WHERE City = 'Chicago'
AND PostalCode = 60601;

SELECT Email
FROM Customers
WHERE Address = '111 Oak St'
AND City = 'Seattle';

SELECT FirstName, LastName
FROM Customers
WHERE Address = '555 Elm St'
AND City = 'Chicago';

SELECT FirstName, LastName
FROM Customers
WHERE NOT Address = '555 Elm St'
AND City = 'Chicago';

SELECT *
FROM Customers
WHERE FirstName = 'Mia'
AND LastName = 'Adams'
AND PostalCode = 94101;

-- ----------------------------------
-- AND - OrderItems
SELECT * FROM OrderItems;

SELECT *
FROM OrderItems
WHERE Quantity = 2
AND Price = 55.00;

SELECT Product
FROM OrderItems
WHERE Quantity = 1
AND Price = 30.00;

SELECT OrderItemID, OrderID, Product
FROM OrderItems
WHERE Quantity = 3
AND Price = 65.00;

SELECT Quantity, Price
FROM OrderItems
WHERE NOT Quantity = 3
AND Price = 90.00;

SELECT *
FROM OrderItems
WHERE OrderID = 4
AND Quantity = 3
AND Price = 65.00;

-- ----------------------------------
-- AND - Orders
SELECT * FROM Orders;

SELECT *
FROM Orders
WHERE CustomerID = 1
AND TotalAmount = 190;

SELECT OrderDate
FROM Orders
WHERE CustomerID = 2
AND TotalAmount = 210;

SELECT OrderID, OrderDate
FROM Orders
WHERE OrderDate = '2023-07-07'
AND TotalAmount = 310;

SELECT OrderID, OrderDate
FROM Orders
WHERE NOT OrderDate = '2023-07-07'
AND TotalAmount = 290.00;

SELECT *
FROM Orders
WHERE CustomerID = 4
AND OrderDate = '2023-07-07'
AND TotalAmount = 340.00;

-- ----------------------------------
-- AND - Products
SELECT * FROM Products;

SELECT *
FROM Products
WHERE UnitPrice = 10.99
AND QuantityInStock = 110;

SELECT ProductID
FROM Products
WHERE UnitPrice = 9.99
AND QuantityInStock = 120;

SELECT ProductID, ProductName
FROM Products
WHERE UnitPrice = 14.99
AND QuantityInStock = 60;

SELECT ProductID, ProductName
FROM Products
WHERE NOT UnitPrice = 14.99
AND QuantityInStock = 60;

SELECT *
FROM Products
WHERE ProductName = 'Product K'
AND UnitPrice = 16.99
AND QuantityInStock = 70;