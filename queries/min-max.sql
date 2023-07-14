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


-- ------------------------------------------------------
-- MIN, MAX - Orders
SELECT * FROM Orders;


-- ------------------------------------------------------
-- MIN, MAX - Products
SELECT * FROM Products;

