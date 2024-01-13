SHOW DATABASES; -- check of available databases
SHOW tables; -- calling up the list of tables available in the active database
DESC tableName; -- calling up the table description
SHOW COLUMNS FROM tableName; -- calling up the table description - second way
USE tableName; -- setting the table as active
SELECT database (); -- check of active database
CREATE DATABASE databaseName; -- creation of a new database
DROP DATABASE databaseName; -- deletion of the database and its tables
CREATE TABLE tableName; -- creating a new table
DROP TABLE tableName; -- deletion of table
DROP TABLE databaseName.tableName; -- deleting a table from a database other than the active one
INSERT INTO tableName (columnName) VALUES ("newValue"); -- adding a new record
HELP methodName; -- obtaining assistance for a specific method
HELP "SELECT"; -- getting help with the SELECT method
SELECT * FROM tableName; -- calling all columns from a table
SELECT columnName_1, columnName_2 FROM tableName; -- calling up specific columns from a table

-- ---------------------------------------------------
-- SELECT DISTINCT -- -- Request without duplicates
SELECT DISTINCT columnName FROM tableName;

-- ---------------------------------------------------
-- Query of odd and even numbers --
SELECT columnName FROM tableName WHERE id % 2 = 0; -- even
SELECT columnName FROM tableName WHERE id % 2 <> 0; -- odd