CREATE VIEW [Product List] AS
SELECT ProductID,ProductName
FROM Products;

SELECT * FROM [Product List];

CREATE VIEW [Products Above Average Price] AS
SELECT ProductName, Price
FROM Products
WHERE Price>(SELECT AVG(Price) FROM Products);

SELECT * FROM [Products Above Average Price];

CREATE VIEW [Product Sales for 1997] AS
SELECT CategoryName, (p.Price * od.Quantity) AS ProductSales
FROM OrderDetails od
INNER JOIN Products p ON p.ProductID = od.ProductID
INNER JOIN Orders o ON o.OrderID = od.OrderID
INNER JOIN Categories c ON c.CategoryID = p.CategoryID
WHERE o.OrderDate >= '1997-01-01' AND o.OrderDate <= '1997-12-31';

CREATE VIEW [Category Sales For 1997] AS
SELECT DISTINCT CategoryName,Sum(ProductSales) AS CategorySales
FROM [Product Sales for 1997]
GROUP BY CategoryName;

CREATE OR REPLACE VIEW [Product List] AS
SELECT ProductID,ProductName,Category
FROM Products;

DROP VIEW [Product List];