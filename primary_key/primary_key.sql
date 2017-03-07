--MySQL
CREATE TABLE Persons
(
P_Id int NOT NULL,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Address varchar(255),
City varchar(255),
PRIMARY KEY (P_Id)
);

--SQL Server / Oracle / MS Access
CREATE TABLE Persons
(
P_Id int NOT NULL PRIMARY KEY,
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
CONSTRAINT pk_PersonID PRIMARY KEY (P_Id,LastName)
);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons
ADD PRIMARY KEY (P_Id);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Persons
ADD CONSTRAINT pk_PersonID PRIMARY KEY (P_Id,LastName);

--MySQL
ALTER TABLE Persons
DROP PRIMARY KEY;

--SQL Server / Oracle / MS Access
ALTER TABLE Persons
DROP CONSTRAINT pk_PersonID;