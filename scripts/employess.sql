CREATE TABLE `employees` (
  `EmployeeID` int(11) NOT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `BirthDate` date DEFAULT NULL,
  `Photo` varchar(255) DEFAULT NULL,
  `Notes` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO Employees (EmployeeID, LastName, FirstName, BirthDate, Photo, Notes)
VALUES 
(1, 'Smith', 'John', '1985-06-15', 'EmpID1.pic', 'John has a degree in Computer Science from XYZ University. He is passionate about coding and software development.'),
(2, 'Johnson', 'Emily', '1990-03-22', 'EmpID2.pic', 'Emily holds a degree in Marketing and has experience in digital marketing strategies.'),
(3, 'Williams', 'David', '1977-11-10', 'EmpID3.pic', 'David is a skilled graphic designer with a portfolio of award-winning designs.'),
(4, 'Brown', 'Jessica', '1989-02-01', 'EmpID4.pic', 'Jessica has a background in Human Resources and has worked with various multinational companies.'),
(5, 'Miller', 'Michael', '1982-09-08', 'EmpID5.pic', 'Michael is a certified project manager with expertise in leading cross-functional teams.'),
(6, 'Garcia', 'Sophia', '1993-07-29', 'EmpID6.pic', 'Sophia has a degree in Economics and has worked in financial analysis roles.'),
(7, 'Martinez', 'Daniel', '1988-04-12', 'EmpID7.pic', 'Daniel is a software engineer with expertise in developing web applications.'),
(8, 'Rodriguez', 'Olivia', '1991-11-05', 'EmpID8.pic', 'Olivia is a skilled UI/UX designer who focuses on creating user-friendly interfaces.'),
(9, 'Hernandez', 'Alexander', '1975-12-18', 'EmpID9.pic', 'Alexander is an experienced project manager with a track record of delivering successful projects.'),
(10, 'Lopez', 'Isabella', '1994-03-27', 'EmpID10.pic', 'Isabella has a degree in Communications and is passionate about content creation and social media marketing.'),
(11, 'Gonzalez', 'Ethan', '1987-09-03', 'EmpID11.pic', 'Ethan is a skilled data analyst with expertise in data visualization.'),
(12, 'Perez', 'Ava', '1997-01-14', 'EmpID12.pic', 'Ava is a recent graduate with a degree in Computer Science and a passion for machine learning.'),
(13, 'Torres', 'Liam', '1984-06-26', 'EmpID13.pic', 'Liam has a background in sales and has consistently exceeded sales targets in previous roles.'),
(14, 'Rivera', 'Mia', '1992-08-09', 'EmpID14.pic', 'Mia is a talented writer with experience in content creation for various industries.'),
(15, 'Moore', 'Noah', '1996-04-17', 'EmpID15.pic', 'Noah is a software developer specializing in building scalable and efficient backend systems.');

SELECT * FROM Employees;

ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);