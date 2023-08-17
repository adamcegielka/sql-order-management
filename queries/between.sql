-- BETWEEN - Customers
SELECT * FROM Customers;

SELECT FirstName, LastName, Phone
FROM Customers
WHERE Phone
BETWEEN "333-333-3333"
AND "555-555-5555";

SELECT Address, City, PostalCode
FROM Customers
WHERE PostalCode
BETWEEN "33101" 
AND "60601"
ORDER BY City DESC;

-- ----------------------------------
-- BETWEEN - OrderItems
SELECT * FROM OrderItems;

SELECT Product, Quantity
FROM OrderItems
WHERE Quantity
BETWEEN "2"
AND "3";

SELECT OrderItemID, Price
FROM OrderItems
WHERE Price
BETWEEN "55.00"
AND "75"
ORDER BY Price;

-- ----------------------------------
-- BETWEEN - Orders
SELECT * FROM Orders;

SELECT OrderID, OrderDate
FROM Orders
WHERE OrderDate
BETWEEN "2023-06-25"
AND "2023-07-05";

SELECT TotalAmount
FROM Orders
WHERE TotalAmount
BETWEEN "170.00"
AND "210.00"
ORDER BY TotalAmount;

-- ----------------------------------
-- BETWEEN - Products
SELECT * FROM Products;

SELECT ProductName, UnitPrice
FROM Products
WHERE UnitPrice
BETWEEN "12.99"
AND "14.99";

SELECT ProductID, QuantityInStock
FROM Products
WHERE QuantityInStock
BETWEEN "85"
AND "100"
ORDER BY QuantityInStock DESC;