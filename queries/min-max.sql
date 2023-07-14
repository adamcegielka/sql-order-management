-- MIN, MAX - CustomersCustomers
SELECT * FROM Customers;

SELECT MIN(PostalCode)
FROM Customers;

SELECT MAX(PostalCode)
FROM Customers;

SELECT *
FROM Customers
WHERE PostalCode = (
	SELECT MIN(PostalCode)
    FROM Customers);
    
SELECT *
FROM Customers
WHERE PostalCode = (
	SELECT MAX(PostalCode)
    FROM Customers);

SELECT *
FROM Customers
WHERE PostalCode = (
	SELECT MIN(PostalCode)
    FROM Customers
)
ORDER BY LastName;

SELECT *
FROM Customers
WHERE PostalCode = (
	SELECT MAX(PostalCode)
    FROM Customers
)
ORDER BY LastName;

SELECT *
FROM Customers
WHERE PostalCode = (
	SELECT MIN(PostalCode)
    FROM Customers
)
ORDER BY LastName 
LIMIT 3;

SELECT *
FROM Customers
WHERE PostalCode = (
	SELECT MAX(PostalCode)
    FROM Customers
)
ORDER BY LastName
LIMIT 3;

-- ------------------------------------------------------
-- MIN, MAX - OrderItems
SELECT * FROM OrderItems;

SELECT MIN(Price)
FROM OrderItems;

SELECT MAX(Price)
FROM OrderItems;

SELECT *
FROM OrderItems
WHERE Price = (
	SELECT MIN(Price)
    FROM OrderItems);
    
SELECT *
FROM OrderItems
WHERE OrderID = (
	SELECT MAX(OrderID)
    FROM OrderItems);
    
SELECT *
FROM OrderItems
WHERE Price = (
	SELECT MIN(Price)
    FROM OrderItems
)
ORDER BY Quantity;

SELECT OrderItemID, Quantity, Price
FROM OrderItems
WHERE Price = (
	SELECT MAX(Price)
    FROM OrderItems
)
ORDER BY Product;

SELECT OrderItemID, OrderID, Quantity, Price
FROM OrderItems
WHERE Quantity = (
	SELECT MIN(Quantity)
    FROM OrderItems
)
ORDER BY Price
LIMIT 3;

SELECT OrderItemID, OrderID, Quantity
FROM OrderItems
WHERE Price = (
	SELECT MAX(Price)
    FROM OrderItems
)
ORDER BY Quantity
LIMIT 4;

-- ------------------------------------------------------
-- MIN, MAX - Orders
SELECT * FROM Orders;


-- ------------------------------------------------------
-- MIN, MAX - Products
SELECT * FROM Products;

