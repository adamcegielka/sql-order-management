CREATE TABLE `shippers` (
    `ShipperID` INT(11) NOT NULL,
    `ShipperName` VARCHAR(255) DEFAULT NULL,
    `Phone` VARCHAR(255) DEFAULT NULL
)  ENGINE=INNODB DEFAULT CHARSET=UTF8;

INSERT INTO `shippers` (`ShipperID`, `ShipperName`, `Phone`)
VALUES
(1, 'Swift Logistics', '(503) 555-7744'),
(2, 'Express Shipping', '(503) 555-2222'),
(3, 'Global Transport', '(503) 555-5555'),
(4, 'Quick Delivery', '(503) 555-9191'),
(5, 'Rapid Carriers', '(503) 555-1234');

SELECT * FROM shippers;

ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);