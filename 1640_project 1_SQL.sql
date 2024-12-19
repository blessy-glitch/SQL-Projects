CREATE TABLE Product (
    ProductID INT,
    ProductName VARCHAR(50),
    SellingPrice DECIMAL(10, 2)
);

INSERT INTO Product (ProductID, ProductName, SellingPrice) VALUES
(1, 'Product A', 100.00),
(2, 'Product B', 150.00),
(1, 'Product A', 120.00),
(3, 'Product C', 200.00),
(2, 'Product B', 180.00),
(1, 'Product A', 90.00),
(3, 'Product C', 210.00);

SELECT * FROM product;

SELECT ProductName, 
       AVG(SellingPrice) AS AverageSellingPrice
FROM Product
GROUP BY ProductName;


