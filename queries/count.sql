-- COUNT() - CustomersCustomers
SELECT * FROM Customers;

SELECT COUNT(*) 
FROM Customers;

SELECT COUNT(CustomerID) AS NumberOfID 
FROM Customers;

SELECT COUNT(DISTINCT City)
FROM Customers;

-- ----------------------------------
-- COUNT() - OrderItems
SELECT * FROM OrderItems;

SELECT COUNT(OrderID)
FROM OrderItems;

SELECT COUNT(DISTINCT OrderID) AS DistOrderID
FROM OrderItems;

-- ----------------------------------
-- COUNT() - Orders
SELECT * FROM Orders;

SELECT COUNT(TotalAmount)
FROM Orders;

SELECT COUNT(*) AS DistinctTotalAmount
FROM (SELECT DISTINCT TotalAmount
      FROM Orders) AS TotalList;

-- ----------------------------------
-- COUNT() - Products
SELECT * FROM Products;

SELECT COUNT(UnitPrice)
FROM Products;

SELECT COUNT(DISTINCT UnitPrice) AS DistUnitPrice
FROM Products;