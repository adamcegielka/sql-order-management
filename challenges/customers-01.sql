-- 1. Display table structure customers
DESCRIBE customers;
DESC customers;
SHOW COLUMNS FROM customers;

-- 2. Display the contents of the regions table
SELECT * FROM customers;

-- 3. Display the names and email of customers
SELECT FirstName, LastName, Email FROM customers;

-- 4. Display FirstNames, LastNames, Phon of customers. Assign the aliases "Name", "Surname", "Phone Number" to the corresponding columns
SELECT firstName Name, LastName Surname, Phone 'Phone Number' FROM customers;
SELECT firstName AS Name, LastName AS Surname, Phone AS 'Phone Number' FROM customers;

-- 5. Display the FirstName and LastNames of customers in a single column (concatenation), assign the aliases "Full Name"
SELECT CONCAT(FirstName, ' ', LastName) AS 'Full Name' FROM customers;

-- 6. Display FirstName and LastName of customers in a single column, assign the aliases "Full Name", by LastName ascending
SELECT CONCAT(FirstName, ' ', LastName) AS 'Full Name'
FROM customers
ORDER BY LastName ASC;

-- 7. Display LastName, FirstName, City of customers in single column, assign the aliases "Full Name and City", by LastName descending
 SELECT CONCAT(LastName, ' ', FirstName, ' - ', City) AS 'Full Name and City'
 FROM customers
 ORDER BY LastName DESC;

-- 8. Display LastName , PostalCode, City of customers, assign the alias for LastName to 'Customer name', by PostalCode descending
SELECT LastName AS 'Customer name', PostalCode, City
FROM customers
ORDER BY PostalCode DESC;

-- 9. Display City, FirstName and LastName by City ascending and FirstName descending
SELECT City, FirstName, LastName
FROM customers
ORDER BY City ASC, FirstName DESC;

-- 10. Display a list of all cities in the customers table, and for each city display a combined LastName list of customers from that city,
-- separating the names with commas. Each city should only appear once in the query results.
SELECT GROUP_CONCAT(LastName SEPARATOR ', ') AS LastNames, City
FROM customers
GROUP BY City;

SELECT City, GROUP_CONCAT(LastName SEPARATOR ', ') AS 'Last Names', COUNT(LastName) AS 'Number Of Names'
FROM customers
GROUP BY City;
