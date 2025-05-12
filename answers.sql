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
VALUES 
(101, "John Doe"),
(102, "Jane Smith"),
(103, "Emily Clark");
CREATE TABLE product(
product_id INT primary key,
productName varchar(100),
quantity INT,
order_id INT,
FOREIGN KEY(order_id) REFERENCES orders(OrderID)
);
INSERT INTO product(product_id,productName,quantity,order_id)
VALUES 
(1,'laptop',2,101),
(2,'Mouse',1,101),
(3,'Tablet',3,102),
(4,'Keyboard',2,102),
(5,'Mouse',1,102),
(6,'Phone',1,103);
