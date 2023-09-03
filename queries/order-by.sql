-- ORDER BY - Customers
SELECT * FROM Customers;

SELECT FirstName, LastName
FROM Customers
ORDER BY LastName ASC;

SELECT FirstName, Email, Phone
FROM Customers
ORDER BY FirstName DESC;

-- ----------------------------------
-- ORDER BY - OrderItems
SELECT * FROM OrderItems;

SELECT Product, Price
FROM OrderItems
ORDER BY Price;

-- ----------------------------------
-- ORDER BY - Orders
SELECT * FROM Orders;

SELECT OrderID, OrderDate, TotalAmount
FROM Orders
ORDER BY TotalAmount DESC;

-- ----------------------------------
-- ORDER BY - Products
SELECT * FROM Products;

SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY ProductName ASC;

-- ----------------------------------
-- ORDER BY - Employees
SELECT * FROM Employees;

SELECT LastName, FirstName, Notes
FROM Employees
ORDER BY LastName DESC;

-- ----------------------------------
-- ORDER BY - Shippers
SELECT * FROM Shippers;

SELECT ShipperName, Phone
FROM Shippers
ORDER BY ShipperName;

-- ----------------------------------
-- ORDER BY - Suppliers
SELECT * FROM Suppliers;

SELECT SupplierName, Address, City, Country
FROM Suppliers
ORDER BY City ASC;