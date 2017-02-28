SELECT *
INTO CustomersBackup2013
FROM Customers;

SELECT *
INTO CustomersBackup2013 IN 'Backup.mdb'
FROM Customers;

SELECT CustomerName, ContactName
INTO CustomersBackup2013
FROM Customers;

SELECT *
INTO CustomersBackup2013
FROM Customers
WHERE Country='Germany';

SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2013
FROM Customers
LEFT JOIN Orders
ON Customers.CustomerID=Orders.CustomerID;

SELECT *
INTO newtable
FROM table1
WHERE 1=0;