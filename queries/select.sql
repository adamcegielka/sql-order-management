-- Customers:
SELECT * FROM customers;
SELECT DISTINCT * FROM customers;
SELECT firstname FROM customers;
SELECT DISTINCT firstname FROM customers;
SELECT city FROM customers;
SELECT DISTINCT city FROM customers;

-- Orderitems:
SELECT * FROM orderitems;
SELECT DISTINCT * FROM customers;
SELECT quantity FROM orderitems;
SELECT DISTINCT quantity FROM orderitems;
SELECT price FROM orderitems;
SELECT DISTINCT price FROM orderitems;

-- Orders:
SELECT * FROM orders;
SELECT DISTINCT * FROM orders;
SELECT customerid FROM orders;
SELECT DISTINCT customerid FROM orders;
SELECT totalamount FROM orders;
SELECT DISTINCT totalamount FROM orders;

-- Products:
SELECT * FROM products;
SELECT DISTINCT * FROM products;
SELECT unitprice FROM products;
SELECT DISTINCT unitprice FROM products;
SELECT quantityinstock FROM products;
SELECT DISTINCT quantityinstock FROM products;

-- DISTINCT - Query without duplicates