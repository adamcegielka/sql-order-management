CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(50),
  LastName VARCHAR(50),
  Email VARCHAR(100),
  Phone VARCHAR(20)  
);

ALTER TABLE Customers
ADD COLUMN Address VARCHAR(100),
ADD COLUMN City VARCHAR(50),
ADD COLUMN PostalCode VARCHAR(10);

INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, PostalCode)
VALUES 
  (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '987 Pine St', 'San Francisco', '94101'),
  (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '123 Main St', 'New York', '10001'),
  (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-123-4567', '456 Elm St', 'Los Angeles', '90001'),
  (4, 'Emily', 'Brown', 'emily.brown@example.com', '111-222-3333', '789 Oak St', 'Chicago', '60601'),
  (5, 'Emma', 'Johnson', 'emma.johnson@example.com', '555-555-5555', '555 Elm St', 'New York', '10001'),
  (6, 'Liam', 'Anderson', 'liam.anderson@example.com', '666-666-6666', '666 Oak St', 'Los Angeles', '90001'),
  (7, 'Olivia', 'Thompson', 'olivia.thompson@example.com', '777-777-7777', '777 Pine St', 'San Francisco', '94101'),
  (8, 'Noah', 'Harris', 'noah.harris@example.com', '888-888-8888', '888 Maple Ave', 'Chicago', '60601'),
  (9, 'Ava', 'Wilson', 'ava.wilson@example.com', '999-999-9999', '999 Cedar Ave', 'Miami', '33101'),
  (10, 'William', 'Thomas', 'william.thomas@example.com', '111-111-1111', '111 Oak St', 'Seattle', '98101'),
  (11, 'James', 'White', 'james.white@example.com', '222-222-2222', '222 Pine Ave', 'Miami', '33101'),
  (12, 'Charlotte', 'Clark', 'charlotte.clark@example.com', '333-333-3333', '333 Cedar St', 'New York', '10001'),
  (13, 'Benjamin', 'Turner', 'benjamin.turner@example.com', '444-444-4444', '444 Elm St', 'Chicago', '60601'),
  (14, 'Mia', 'Adams', 'mia.adams@example.com', '555-555-5555', '555 Maple Ave', 'San Francisco', '94101'),
  (15, 'Alexander', 'Wilson', 'alexander.wilson@example.com', '555-555-5555', '555 Oak St', 'Seattle', '98101'),
  (16, 'Elijah', 'Taylor', 'elijah.taylor@example.com', '111-222-3333', '123 Elm St', 'Los Angeles', '90001'),
  (17, 'Amelia', 'Harris', 'amelia.harris@example.com', '222-333-4444', '456 Oak St', 'Chicago', '60601'),
  (18, 'Henry', 'Roberts', 'henry.roberts@example.com', '333-444-5555', '789 Pine Ave', 'San Francisco', '94101'),
  (19, 'Harper', 'Cook', 'harper.cook@example.com', '444-555-6666', '987 Maple Ave', 'Miami', '33101'),
  (20, 'Evelyn', 'Phillips', 'evelyn.phillips@example.com', '555-666-7777', '555 Cedar St', 'New York', '10001'),
  (21, 'Oliver', 'Wilson', 'oliver.wilson@example.com', '222-333-4444', '555 Pine St', 'San Francisco', '94101'),
  (22, 'Sophia', 'Davis', 'sophia.davis@example.com', '333-444-5555', '789 Maple Ave', 'Seattle', '98101'),
  (23, 'Aiden', 'Miller', 'aiden.miller@example.com', '444-555-6666', '321 Oakwood Dr', 'Miami', '33101'),
  (24, 'Isabella', 'Wilson', 'isabella.wilson@example.com', '555-666-7777', '456 Elm St', 'Los Angeles', '90001'),
  (25, 'Mason', 'Anderson', 'mason.anderson@example.com', '666-777-8888', '987 Pine St', 'San Francisco', '94101'),
  (26, 'Scarlett', 'Martinez', 'scarlett.martinez@example.com', '777-888-9999', '555 Cedar Ave', 'Chicago', '60601'),
  (27, 'Luna', 'Garcia', 'luna.garcia@example.com', '111-111-1111', '111 Elm St', 'Los Angeles', '90001'),
  (28, 'Carter', 'Brown', 'carter.brown@example.com', '222-222-2222', '222 Oak St', 'Chicago', '60601'),
  (29, 'Mila', 'Smith', 'mila.smith@example.com', '333-333-3333', '333 Pine Ave', 'San Francisco', '94101'),
  (30, 'Sebastian', 'Clark', 'sebastian.clark@example.com', '444-444-4444', '444 Maple Ave', 'Miami', '33101'),
  (31, 'Avery', 'Taylor', 'avery.taylor@example.com', '555-555-5555', '555 Cedar St', 'New York', '10001'),
  (32, 'Leo', 'Adams', 'leo.adams@example.com', '111-111-1111', '111 Oak St', 'Seattle', '98101'),
  (33, 'Layla', 'Turner', 'layla.turner@example.com', '222-222-2222', '222 Elm St', 'Los Angeles', '90001'),
  (34, 'Jack', 'Thomas', 'jack.thomas@example.com', '333-333-3333', '333 Pine Ave', 'San Francisco', '94101'),
  (35, 'Sofia', 'Roberts', 'sofia.roberts@example.com', '444-444-4444', '444 Maple St', 'Miami', '33101'),
  (36, 'Lucas', 'Cook', 'lucas.cook@example.com', '555-555-5555', '555 Elm St', 'Chicago', '60601'),
  (37, 'Aria', 'Harris', 'aria.harris@example.com', '111-111-1111', '111 Elm St', 'Los Angeles', '90001'),
  (38, 'Grayson', 'Wilson', 'grayson.wilson@example.com', '222-222-2222', '222 Oak St', 'Chicago', '60601'),
  (39, 'Scarlett', 'Thompson', 'scarlett.thompson@example.com', '333-333-3333', '333 Pine Ave', 'San Francisco', '94101'),
  (40, 'Zoe', 'Anderson', 'zoe.anderson@example.com', '444-444-4444', '444 Maple St', 'Miami', '33101'),
  (41, 'Ezra', 'Martin', 'ezra.martin@example.com', '555-555-5555', '555 Cedar St', 'New York', '10001');
  
  SELECT * FROM customers;
  
  -- DELETE FROM Customers;
  -- DELETE FROM Customers WHERE CustomerID = 1;
  -- DELETE FROM Customers WHERE CustomerID IN (2, 3, 4);




