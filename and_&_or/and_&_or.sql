SELECT * FROM Customers WHERE Country='Germany' AND City='Berlin';

SELECT * FROM Customers WHERE CustomerID>1 AND CustomerID<5;

SELECT * FROM Customers WHERE City='Berlin' OR City='München';

SELECT * FROM Customers WHERE City='Köln' OR Country='Mexico';

SELECT * FROM Customers WHERE Country='Germany' AND (City='Berlin' OR City='München');

SELECT * FROM Customers WHERE Country='Germany' AND (CustomerID=17 OR CustomerID=39 OR CustomerID=63);