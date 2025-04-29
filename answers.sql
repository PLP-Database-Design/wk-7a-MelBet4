-- Question one
CREATE TABLE productDetail (
OrderID INT PRIMARY KEY,
customerName VARCHAR (100),
Products VARCHAR (100)
);
INSERT INTO productDetail (orderID, customerName, Products)
VALUES 
(1, "John Doe", "Laptop"),
(2, "John Doe", "Mouse"),
(3, "Jane Smith", "Tablet"),
(4, "Jane Smith", "Keyboard"),
(5, "Jane Smith", "Mouse"),
(6, "Emily Clark", "Phone");
-- Question two
CREATE TABLE orderDetails ( 
orderID INT PRIMARY KEY,
customerName VARCHAR (100)
);
INSERT INTO orderDetails
VALUES (101, "John Doe"),
(102, "Jane Smith"),
(103, "Emily Clark");
CREATE TABLE productData (
orderID INT,
Product VARCHAR (100),
Quantity INT NOT NULL,
FOREIGN KEY (orderID) REFERENCES orderDetails (orderID)
);
INSERT INTO productData (orderID, Product, Quantity)
VALUES (101, "Laptop", 2),
(101, "Mouse", 1),
(102, "Tablet", 3),
(102, "Keyboard", 1),
(102, "Mouse", 2),
(103, "Phone", 1);