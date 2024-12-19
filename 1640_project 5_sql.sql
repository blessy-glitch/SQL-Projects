CREATE TABLE dataProduct (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO dataProduct (ProductID, ProductName, Price)
VALUES 
(1, 'Apple', 2.50),
(2, 'Banana', 1.50),
(3, 'Orange', 3.00),
(4, 'Mango', 2.00);


SELECT * FROM dataproduct;

CREATE TABLE dataOrders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    Quantity INT,
    Sales DECIMAL(10,2),
    FOREIGN KEY (ProductID) REFERENCES dataProduct(ProductID)
);

INSERT INTO dataOrders (OrderID, ProductID, Quantity, Sales)
VALUES 
(1, 1, 10, 25.00),
(2, 1, 5, 12.50),
(3, 2, 8, 12.00),
(4, 3, 12, 36.00),
(5, 4, 6, 12.00);

SELECT * FROM dataorders;

SELECT p.ProductName, 
       SUM(o.sales) AS TotalRevenue
FROM dataOrders o
JOIN dataProduct p 
   ON o.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY TotalRevenue DESC;

