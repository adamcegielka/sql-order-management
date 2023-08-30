-- AS - Customers
SELECT * FROM Customers;

SELECT FirstName, LastName AS Surname, Email
FROM Customers;

-- ----------------------------------
-- AS - OrderItems
SELECT * FROM OrderItems;

SELECT SUM(Price) AS TotalPrice
FROM OrderItems;

-- ----------------------------------
-- AS - Orders
SELECT * FROM Orders;

SELECT AVG(TotalAmount) AS AveragePrice
FROM Orders;

-- ----------------------------------
-- AS - Products
SELECT * FROM Products;

SELECT MIN(UnitPrice) AS Minimum_Price
FROM Products;

-- ----------------------------------
-- AS - Employees
SELECT * FROM Employees;

SELECT LastName, FirstName, Notes AS Information
FROM Employees;

-- ----------------------------------
-- AS - Shippers
SELECT * FROM Shippers;

SELECT ShipperName AS Company
FROM Shippers;

-- ----------------------------------
-- AS - Suppliers
SELECT * FROM Suppliers;

SELECT SupplierName AS Suppliers
FROM Suppliers;