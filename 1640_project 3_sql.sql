CREATE TABLE Customer (
    id INT PRIMARY KEY,
    NAME VARCHAR(50)
);

CREATE TABLE Ordered (
    id INT,
    customerId INT
);

INSERT INTO Customer (id, NAME) VALUES
(1, 'Joe'),
(2, 'Henry'),
(3, 'Sam'),
(4, 'Max');

INSERT INTO Ordered (id, customerId) VALUES
(2, 1),
(1, 3);

SELECT * FROM customer;
SELECT * FROM Ordered;

SELECT c.name AS Customers
FROM Customer c
LEFT JOIN Ordered o
ON c.id = o.customerId
WHERE o.customerId IS NULL;
