CREATE TABLE Persons
(
P_Id int NOT NULL PRIMARY KEY,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

INSERT INTO Persons VALUES (1, 'Hansen', 'Ola', null, 'Sandnes'); 
INSERT INTO Persons VALUES (2, 'Svendson', 'Tove', 'Borgvn 23', 'Sandnes'); 
INSERT INTO Persons VALUES (3, 'Pettersen', 'Kari', null, 'Stavanger'); 

SELECT LastName,FirstName,Address FROM Persons
WHERE Address IS NULL;

SELECT LastName,FirstName,Address FROM Persons
WHERE Address IS NOT NULL;