-- LIKE - Customers
SELECT * FROM Customers;

SELECT FirstName, LastName 
FROM Customers 
WHERE LastName 
LIKE "%n";

SELECT CustomerID, Email, Address, City 
FROM Customers 
WHERE City 
LIKE "S%";

SELECT FirstName, Phone, Address
FROM Customers
WHERE Address
LIKE "%Elm%";

SELECT Email
FROM Customers
WHERE Email
LIKE "__a%";

SELECT Address, City
FROM Customers
WHERE Address
LIKE "%St";

SELECT FirstName, LastName
FROM Customers
WHERE LastName
LIKE "%r%z";

SELECT FirstName
FROM Customers
WHERE FirstName
LIKE "___";

SELECT FirstName
FROM Customers
WHERE FirstName
LIKE "______%";

-- ----------------------------------
-- LIKE - OrderItems
SELECT * FROM OrderItems;

SELECT Product, Quantity, Price
FROM OrderItems
WHERE Price
LIKE "_5%";

-- ----------------------------------
-- LIKE - Orders
SELECT * FROM Orders;

SELECT TotalAmount
FROM Orders
WHERE TotalAmount
LIKE "_1%";

-- ----------------------------------
-- LIKE - Products
SELECT * FROM Products;

SELECT ProductName, QuantityInStock
FROM Products
WHERE QuantityInStock
LIKE "__";

SELECT UnitPrice, QuantityInStock
FROM Products
WHERE UnitPrice
LIKE "_____%";