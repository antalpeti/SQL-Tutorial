--SQL Server / Oracle / MS Access
CREATE TABLE Persons
(
P_Id int NOT NULL UNIQUE,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255)
);

--MySQL
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
UNIQUE (P_Id)
);

--MySQL / SQL Server / Oracle / MS Access
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName)
);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons 
ADD UNIQUE (P_Id);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons 
ADD CONSTRAINT uc_PersonID UNIQUE (P_Id,LastName);

--MySQL
ALTER TABLE Persons
DROP INDEX uc_PersonID

--SQL Server / Oracle / MS Access
ALTER TABLE Persons
DROP CONSTRAINT uc_PersonID