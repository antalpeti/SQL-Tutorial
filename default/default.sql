--My SQL / SQL Server / Oracle / MS Access
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255) DEFAULT 'Sandnes'
);

CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
OrderDate date DEFAULT GETDATE()
);

--MySQL
ALTER TABLE Persons
ALTER City SET DEFAULT 'SANDNES';

--SQL Server / MS Access
ALTER TABLE Persons
ALTER COLUMN City SET DEFAULT 'SANDNES';

--Oracle
ALTER TABLE Persons
MODIFY City DEFAULT 'SANDNES';

--MySQL
ALTER TABLE Persons
ALTER City DROP DEFAULT;

--SQL Server / Oracle / MS Access
ALTER TABLE Persons
ALTER COLUMN City DROP DEFAULT;