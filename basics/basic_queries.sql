-- calling up the list of tables available in the active database
SHOW tables;

-- calling up the table description
DESC customers;
SHOW COLUMNS FROM customers;

-- checking the active database
SELECT database ();

-- creating a new database
CREATE DATABASE databaseName;

-- deletion of the database and its tables
DROP DATABASE databaseName;

-- creating a new table
CREATE TABLE tableName;

-- deletion of table
DROP TABLE tableName;

-- deleting a table from a database other than the active one
DROP TABLE databaseName.tableName;

-- adding a new record
INSERT INTO tableName (columnName) VALUES ("newValue");