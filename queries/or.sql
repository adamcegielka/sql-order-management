-- OR - CustomersCustomers
SELECT * FROM Customers;
SELECT * FROM Customers WHERE City = 'Chicago' OR PostalCode = 60601;
SELECT Email FROM Customers WHERE Address = '111 Oak St' OR City = 'Seattle';
SELECT FirstName, LastName FROM Customers WHERE Address = '555 Elm St' OR City = 'Chicago';

-- OR - OrderItems
SELECT * FROM OrderItems;
SELECT * FROM OrderItems WHERE Quantity = 2 OR Price = 55;
SELECT Product FROM OrderItems WHERE Quantity = 1 OR Price = 30;
SELECT OrderItemID, OrderID, Product FROM OrderItems WHERE Quantity = 3 OR Price = 65;

-- OR - Orders
SELECT * FROM Orders;
SELECT * FROM Orders WHERE CustomerID = 1 OR TotalAmount = 190;
SELECT OrderDate FROM Orders WHERE CustomerID = 2 OR TotalAmount = 210;
SELECT OrderID, OrderDate FROM Orders WHERE OrderDate = '2023-07-07' OR TotalAmount = 310;

-- OR - Products
SELECT * FROM Products;
SELECT * FROM Products WHERE UnitPrice = 10.99 OR QuantityInStock = 110;
SELECT ProductID FROM Products WHERE UnitPrice = 9.99 OR QuantityInStock = 120;
SELECT ProductID, ProductName FROM Products WHERE UnitPrice = 14.99 OR QuantityInStock = 60;