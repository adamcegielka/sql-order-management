CREATE TABLE `suppliers` (
    `SupplierID` INT(11) NOT NULL,
    `SupplierName` VARCHAR(255) DEFAULT NULL,
    `ContactName` VARCHAR(255) DEFAULT NULL,
    `Address` VARCHAR(255) DEFAULT NULL,
    `City` VARCHAR(255) DEFAULT NULL,
    `PostalCode` VARCHAR(255) DEFAULT NULL,
    `Country` VARCHAR(255) DEFAULT NULL,
    `Phone` VARCHAR(255) DEFAULT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

INSERT INTO `suppliers` (`SupplierID`, `SupplierName`, `ContactName`, `Address`, `City`, `PostalCode`, `Country`, `Phone`)
VALUES
(1, 'Irish Whiskey Distillers', 'Sean O\'Connor', 'Whiskey Lane 9', 'Dublin', 'D02 XY12', 'Ireland', '(01) 987 6543'),
(2, 'Swedish Meat & Seafood', 'Lars Eriksson', 'Kött och Fiskvägen 123', 'Stockholm', '123 45', 'Sweden', '(08) 765 4321'),
(3, 'Caribbean Rum Co.', 'Isabella Fernandez', 'Rum Road 456', 'Havana', '10100', 'Cuba', '(53) 1234 5678'),
(4, 'Argentinian Wines', 'Diego Gonzalez', 'Calle del Vino 789', 'Mendoza', '5500', 'Argentina', '(0261) 555-6789'),
(5, 'South African Safari Foods', 'Thabo Mandela', 'Safari Lane 15', 'Johannesburg', '2000', 'South Africa', '(011) 765 4321'),
(6, 'Viva Italia', 'Mario Rossi', 'Via del Corso 32', 'Rome', '00186', 'Italy', '(06) 9876 5432'),
(7, 'Nordic Fresh', 'Lars Andersen', 'Fjordvej 15', 'Copenhagen', '2100', 'Denmark', '(45) 1234 5678'),
(8, 'Café Français', 'Marie Leclerc', '12 Rue des Croissants', 'Paris', '75001', 'France', '(01) 2345 6789'),
(9, 'Bavarian Breads', 'Hans Müller', 'Bachstrasse 23', 'Munich', '80331', 'Germany', '(089) 1234 5678'),
(10, 'Elegant Wines', 'Isabel Paredes', 'Rua do Vinho 123', 'Lisbon', '12345', 'Portugal', '(21) 9876 5432'),
(11, 'Scandinavian Seafood', 'Erik Johansen', 'Fiskaregatan 10', 'Gothenburg', '41118', 'Sweden', '(031) 123 4567'),
(12, 'Spice Bazaar', 'Fatima Ahmed', 'Bazar Road 20', 'Istanbul', '34122', 'Turkey', '(0212) 345 6789'),
(13, 'Great Wall Tea', 'Li Wei', 'Chaoyang Road 888', 'Beijing', '100123', 'China', '(010) 9876 5432'),
(14, 'Mystic Spices', 'Ravi Patel', 'Spice Market Lane 5', 'Mumbai', '400001', 'India', '(022) 2345 6789'),
(15, 'Green Valley Fruits', 'Maria Rodriguez', 'Calle de Frutas 456', 'Mexico City', '07000', 'Mexico', '(55) 5555 5555'),
(16, 'Aussie Delights', 'Emma Johnson', '123 Sydney Street', 'Sydney', '2000', 'Australia', '(02) 9876 5432'),
(17, 'Canadian Maple', 'William Thompson', 'Maple Lane 456', 'Toronto', 'M4B 1V1', 'Canada', '(416) 555-1234'),
(18, 'Swiss Chocolate Co.', 'Hans Müller', 'Schokolade Strasse 8', 'Zurich', '8001', 'Switzerland', '(044) 987 6543'),
(19, 'Brazilian Coffee', 'Carlos Oliveira', 'Avenida do Café 789', 'São Paulo', '01001', 'Brazil', '(11) 2345 6789'),
(20, 'Russian Vodka Distillery', 'Dmitri Petrov', 'Vodka Lane 3', 'Moscow', '101000', 'Russia', '(495) 123 4567'),
(21, 'Japanese Tea House', 'Yuki Tanaka', 'Sakura Lane 7', 'Kyoto', '605-0025', 'Japan', '(075) 555-6789'),
(22, 'Dutch Dairy Delights', 'Jan van der Berg', 'Molenstraat 15', 'Amsterdam', '1012 JN', 'Netherlands', '(020) 123 4567'),
(23, 'Mediterranean Olives', 'Maria Kostopoulos', 'Olive Grove 23', 'Athens', '11526', 'Greece', '(210) 555-7890'),
(24, 'Thai Spice Market', 'Somchai Pong', 'Sukhumvit Road 123', 'Bangkok', '10110', 'Thailand', '(02) 345 6789'),
(25, 'Peruvian Produce', 'Alejandro Gutierrez', 'Calle Lima 456', 'Lima', '15063', 'Peru', '(01) 234 5678');

SELECT * FROM suppliers;

ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);