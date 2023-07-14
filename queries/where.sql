-- WHERE - Customers
SELECT * FROM Customers;

SELECT *
FROM Customers
WHERE FirstName = 'John';

SELECT FirstName, LastName
FROM Customers
WHERE City = 'Los Angeles';

SELECT Address, City, PostalCode
FROM Customers
WHERE PostalCode <= 33101;

SELECT CustomerID, Email, Phone
FROM Customers
WHERE Phone > '222-333-4444';

SELECT FirstName, LastName
FROM Customers
WHERE Phone %2 = 0;    -- even (2, 4, 6 ...)

SELECT FirstName, LastName
FROM Customers
WHERE Phone %2 <> 0;   -- odd (1, 3, 5 ...)

-- WHERE NOT
SELECT FirstName, LastName
FROM Customers
WHERE NOT City = 'Chicago';

SELECT Email
FROM Customers
WHERE NOT PostalCode = 90001;

-- ------------------------------------------------------
-- WHERE - OrderItems
SELECT * FROM OrderItems;

SELECT *
FROM OrderItems
WHERE OrderID = 12;

SELECT OrderItemID, OrderID
FROM OrderItems
WHERE Price = 65;

SELECT OrderItemID, OrderID, Price
FROM OrderItems
WHERE Price >= 70;

SELECT OrderItemID, OrderID
FROM OrderItems
WHERE Price %2 = 0;

SELECT OrderItemID, OrderID
FROM OrderItems
WHERE Price %2 <> 0;

-- WHERE NOT
SELECT OrderItemID, OrderID, Product
FROM OrderItems
WHERE NOT Quantity = 2;

SELECT OrderItemID, OrderID, Price
FROM OrderItems
WHERE NOT Price = 75;

-- ------------------------------------------------------
-- WHERE - Orders
SELECT * FROM Orders;

SELECT *
FROM Orders
WHERE TotalAmount = 200;

SELECT OrderID, OrderDate
FROM Orders
WHERE TotalAmount = 290;

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE TotalAmount <= 190;

SELECT OrderID, OrderDate
FROM Orders
WHERE TotalAmount %2 = 0;

SELECT OrderID, OrderDate
FROM Orders
WHERE TotalAmount %2 <> 0;

-- WHERE NOT
SELECT OrderID, OrderDate
FROM Orders
WHERE NOT TotalAmount = 180;

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
WHERE NOT CustomerID = 1;

-- ------------------------------------------------------
-- WHERE - Products
SELECT * FROM Products;

SELECT *
FROM Products
WHERE QuantityInStock = 100;

SELECT ProductID, ProductName
FROM Products
WHERE QuantityInStock = 50;

SELECT ProductID, UnitPrice
FROM Products
WHERE QuantityInStock >= 120;

SELECT ProductID, ProductName
FROM Products
WHERE UnitPrice %2 = 0;

SELECT ProductID, ProductName
FROM Products
WHERE UnitPrice %2 <> 0;

-- WHERE NOT
SELECT ProductID, ProductName
FROM Products
WHERE NOT QuantityInStock = 100;

SELECT ProductID, ProductName, UnitPrice
FROM Products
WHERE NOT UnitPrice = 9.99;