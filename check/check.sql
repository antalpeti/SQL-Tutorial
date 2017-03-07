--MySQL
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CHECK (P_Id>0)
);

--SQL Server / Oracle / MS Access
CREATE TABLE Persons
(
P_Id int NOT NULL CHECK (P_Id>0),
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

--MySQL / SQL Server / Oracle / MS Access
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT chk_Person CHECK (P_Id>0 AND City='Sandnes')
);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons
ADD CHECK (P_Id>0);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons
ADD CONSTRAINT chk_Person CHECK (P_Id>0 AND City='Sandnes');

--SQL Server / Oracle / MS Access
ALTER TABLE Persons
DROP CONSTRAINT chk_Person;

--MySQL
ALTER TABLE Persons
DROP CHECK chk_Person;