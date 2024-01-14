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

-- ---------------------------------------------------
-- WHERE --
SELECT * FROM tableName WHERE columnName <= 30; -- request for a number less than or equal to 30
SELECT * FROM tableName WHERE columnName > 30 ORDER BY columnName; -- request a number greater than 30 in ascending order
SELECT * FROM tableName WHERE columnName = "recordValue"; -- request a specific string

-- --------------------------------------------------
-- AND, OR, IN, NOT --
SELECT * FROM tableName WHERE columnName = "recordValue";
SELECT * FROM tableName WHERE NOT columnName = "recordValue"; -- request for all records except the specified record
SELECT * FROM tableName WHERE columnName_1 = "recordValue" AND columnName_2 = "recordValue"; -- request for two records
SELECT * FROM tableName WHERE columnName_1 = "recordValue" OR columnName_2 = "recordValue"; -- request for one of the records
SELECT * FROM tableName WHERE columnName IN ("recordValue_1", "recordValue_2", "recordValue_3"); -- request for specific records

-- -------------------------------------------------
-- IS NULL, != --
SELECT * FROM tableName WHERE columnName IS NULL; -- display the column where empty records exist
SELECT * FROM tableName WHERE columnName IS NOT NULL; -- display the column where there are no empty records
SELECT * FROM tableName WHERE columnName != value; -- displaying a column excluding a given record

-- -------------------------------------------------
-- LIMIT --
SELECT * FROM tableName LIMIT 5; -- request for a specific number of records, the first 5
SELECT columnName FROM tableName ORDER BY columnName LIMIT 1; -- query from the second record
SELECT columnName FROM tableName ORDER BY columnName LIMIT 0,4; -- query from first record + four records

-- -------------------------------------------------
-- MIN, MAX -- -- calculation of a minimum or maximum value from a column
SELECT MAX(columnName) FROM tableName; ;
SELECT MIN(columnName) FROM tableName;

-- -------------------------------------------------
-- COUNT, AVG, SUM --
SELECT COUNT(columnName) FROM tableName WHERE columnName = 1; -- COUNT - calculates how many rows were returned from a given query
SELECT AVG(columnName) FROM tableName WHERE columnName = 1; -- AVG - calculates the average of a given column
SELECT SUM(columnName) FROM tableName WHERE columnName = 1; -- SUM - calculates the sum of all values in a given column

-- -------------------------------------------------
-- LIKE, BETWEEN --
SELECT * FROM tableName WHERE columnName LIKE "%n"; -- record ends with a letter 'n'
SELECT * FROM tableName WHERE columnName LIKE "%on"; -- record ends with a letter 'on'
SELECT * FROM tableName WHERE columnName LIKE "P%"; -- record starts with a letter 'P'
SELECT * FROM tableName WHERE columnName LIKE "Pa%"; -- record starts with the letters 'Pa'
SELECT * FROM tableName WHERE columnName LIKE "p%n"; -- record starts with 'p' and ends with 'n'
SELECT * FROM tableName WHERE columnName LIKE "%y%"; -- record has the letter 'y' anywhere on it
SELECT * FROM tableName WHERE columnName LIKE "%co%"; -- record has a string of the letter 'co' anywhere in it
SELECT * FROM tableName WHERE columnName LIKE "_a%"; -- rekord których druga litera jest 'a'
SELECT * FROM tableName WHERE columnName LIKE "__r%"; -- record of which the third letter is 'r'
SELECT * FROM tableName WHERE columnName LIKE "__ri%"; -- record of which the third and fourth letters are 'ri'
SELECT * FROM tableName WHERE columnName LIKE "__ri%s"; -- record of which the third and fourth letters are 'ri' and the last 's'
SELECT * FROM tableName WHERE columnName LIKE "_______"; -- record has 7 letters in it
SELECT * FROM tableName WHERE columnName LIKE "__________%"; -- the record has a minimum of 10 letters in it and more
SELECT * FROM tableName WHERE columnName >= "2022-08-01" AND columnName <= "2022-09-30";
SELECT * FROM tableName WHERE columnName BETWEEN "2020-01-01" AND "2021-12-31"; -- shorter query using BETWEEN
SELECT * FROM tableName WHERE columnName BETWEEN 3 AND 8;

-- -------------------------------------------------
-- AS - Aliasy -- -- change of column name
SELECT columnName_1, columnName2 FROM tableName;
SELECT columnName_1 AS nameChange_1, columnName_2 AS nameChange_2 FROM tableName;
SELECT SUM(columnName) AS nameChange FROM tableName;

-- -------------------------------------------------
-- ORDER BY -- -- ascending and descending sorting
SELECT columnName, columnName_1 FROM tableName ORDER BY columnName_1; -- ascending by default
SELECT columnName, columnName_1 FROM tableName ORDER BY columnName_1 ASC; -- ascending
SELECT columnName, columnName_1 FROM tableName ORDER BY columnName_1 DESC; -- descending
-- sorting in multiple columns
SELECT columnName_1, columnName_2 FROM tableName ORDER BY columnName_2 ASC, columnName_1 DESC;
SELECT columnName_2, columnName_1 FROM tableName ORDER BY columnName_2 ASC, columnName_1 ASC; -- change the order of columns

-- -------------------------------------------------
-- GROUP BY, HAVING -- -- grouping rows which have the same values - summary
SELECT columnName, SUM(columnName_1) FROM tableName GROUP BY columnName;
SELECT columnName, SUM(columnName_1) FROM tableName GROUP BY columnName ORDER BY SUM(columnName1) ;
SELECT columnName, columnName_1, SUM(columnName_2) FROM tableName GROUP BY columnName, columnName_1;
SELECT columnName, columnName_1, SUM(columnName_2) FROM tableName GROUP BY columnName, columnName_1 ORDER BY SUM(columnName_2) ;
-- grouping and adding a range condition for the indicated column from 2 to 6
SELECT columnName, columnName_1, SUM(columnName_2) FROM tableName WHERE columnName BETWEEN 2 AND 6 GROUP BY columnName, columnName_1;
-- calculation of the difference between the total number of entries and the number of duplicates
SELECT columnName, COUNT(columnName) - COUNT(DISTINCT (columnName)) FROM tableName;
SELECT columnName_1, COUNT(columnName_2) AS nameChange FROM tableName GROUP BY columnName_1 ORDER BY COUNT(columnName_2) DESC;
SELECT columnName_1, columnName_3, COUNT(columnName_2) AS nameChange FROM tableName GROUP BY columnName_1, columnName_3;
-- HAVING clause is added to SQL because WHERE cannot be used with GROUP BY
SELECT columnName_1, COUNT(columnName_2) AS nameChange FROM tableName GROUP BY columnName_1 HAVING COUNT(columnName_2) > 5;;

-- -------------------------------------------------
-- INSERT INTO -- -- add a new record
INSERT INTO tableName (columnName_1, columnName_2, columnName_3) VALUES ("newValue1_", "newValue_2", "newValue_3");
INSERT INTO tableName (columnName_1, columnName_2, columnName_3) VALUES -- addition of several new records
("newValue_1a", "newValue_2a", "newValue_3a"),
("newValue_1b", "newValue_2b", "newValue_3b"),
("newValue_1c", "newValue_2c", "newValue_3c");
INSERT INTO tableName VALUES ("newValue_1", "newValue_2", "newValue_3"); -- faster addition of a new record
INSERT INTO tableName VALUES (NULL, "newValue_2", "newValue_3"); -- automatic ID incrementation

-- -------------------------------------------------
-- UPDATE -- -- record update
UPDATE tableName SET columnName = "changeValue" WHERE columnNameID = 4;
-- update of all records where the same name appears
UPDATE tableName SET columnName_1 = "changeValue1", columnName_2 = "changeValue_2" WHERE columnName_2 = Value_2;

-- -------------------------------------------------
-- DELETE -- -- 
DELETE FROM tableName WHERE columnName LIKE "recordValue";
DELETE FROM tableName WHERE columnName LIKE "%5";
DELETE FROM tableName WHERE columnNameID = 4;

-- -------------------------------------------------
-- INNER JOIN -- -- linking data from two or more tables
SELECT tableName_2.columnNameID, tableName_1.columnName_1, tableName_2.columnName_2
FROM tableName_2
INNER JOIN tableName_1
ON tableName_2.columnNameID = tableName_1.columnNameID
ORDER BY tableName_2.columnNameID;

SELECT tableName_2.columnNameID, tableName_1.columnName, tableName_2.columnName, tableName_3.columnName
FROM tableName_2
INNER JOIN tableName_1 ON tableName_2.columnNameID = tableName_1.columnNameID
INNER JOIN tableName_3 ON tableName_2.columnNameID_2 = tableName_3.columnNameID
ORDER BY tableName_2.columnNameID;

-- -------------------------------------------------
-- LEFT JOIN -- -- returns all records from the left table and matching records from the right table
SELECT tableName_2.columnNameID, tableName_1.columnName
FROM tableName_2
LEFT JOIN tableName_1
ON tableName_2.columnNameID = tableName_1.columnNameID;

-- -------------------------------------------------
-- RIGHT JOIN -- -- returns all records from the right table and matching records from the left table
SELECT tableName_2.columnNameID, tableName_1.columnName_1, tableName_1.columnName_2
FROM tableName_2
RIGHT JOIN tableName_1
ON tableName_2.columnNameID = tableName_1.columnNameID;

-- -------------------------------------------------
-- UNION -- -- merge all statements without duplicates from both columns
SELECT columnName FROM tableName_1 UNION SELECT columnName FROM tableName_2;
-- UNION ALL -- -- merge all statements with duplicates from both columns
SELECT columnName FROM tableName_1 UNION ALL SELECT columnName FROM tableName_2;

-- -------------------------------------------------