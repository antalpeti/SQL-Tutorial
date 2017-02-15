SELECT * FROM Customers WHERE City LIKE 'ber%'; 

SELECT * FROM Customers WHERE PostalCode LIKE '12%'; 

SELECT * FROM Customers WHERE City LIKE '%es%'; 

SELECT * FROM Customers WHERE City LIKE '_erlin'; 

SELECT * FROM Customers WHERE City LIKE 'L_n_on'; 

SELECT * FROM Customers WHERE City LIKE '[bsp]%';

SELECT * FROM Customers WHERE City LIKE '[a-c]%'; 

SELECT * FROM Customers WHERE City LIKE '[!bsp]%';

SELECT * FROM Customers WHERE City NOT LIKE '[bsp]%';