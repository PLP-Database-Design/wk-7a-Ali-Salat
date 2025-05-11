-- QUESTION1: 
USE PLP_WK7Db;
--  ProductDetail Table

CREATE TABLE  ProductDetail(
OrderID INT, 
CustomerName VARCHAR(100),
Products VARCHAR(100)
);

-- Insert Data into productDetails

INSERT INTO ProductDetail(OrderID, CustomerName, Products)
VALUES 
(101, "John Doe", "Laptop"),
(101, "John Doe", "Mouse"),
(102, "John Smith", "Tablet"),
(102, "John Smith", "Keyboard"),
(102, "John Smith", "Mouse"),
(103, "Emily Clark", "Phone");

-- QUESTION 2:

-- Create Orders table

CREATE TABLE Orders(
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100)
);

-- Insert into orders
INSERT INTO Orders (OrderID, CustomerName) 
VALUES
(101, "John Doe"),
(102, "Jane Smith"),
(103, "Emily Clark");

-- Create OrderDetails table 
CREATE TABLE OrderDetails (
    OrderID INT,
    Product VARCHAR(100),
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert into orderDetails 
INSERT INTO OrderDetails (OrderID, Product, Quantity) 
VALUES
(101, "Laptop", 2),
(101, "Mouse", 1),
(102, "Tablet", 3),
(102, "Keyboard", 1),
(102, "Mouse", 2),
(103, "Phone", 1);