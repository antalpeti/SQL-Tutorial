--MySQL
CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
PRIMARY KEY (O_Id),
FOREIGN KEY (P_Id) REFERENCES Persons(P_Id)
);

--SQL Server / Oracle / MS Access
CREATE TABLE Orders
(
O_Id int NOT NULL PRIMARY KEY,
OrderNo int NOT NULL,
P_Id int FOREIGN KEY REFERENCES Persons(P_Id)
);

--MySQL / SQL Server / Oracle / MS Access
CREATE TABLE Orders
(
O_Id int NOT NULL,
OrderNo int NOT NULL,
P_Id int,
PRIMARY KEY (O_Id),
CONSTRAINT fk_PerOrders FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id)
);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Orders
ADD FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id);

--MySQL / SQL Server / Oracle / MS Access
ALTER TABLE Orders
ADD CONSTRAINT fk_PerOrders
FOREIGN KEY (P_Id)
REFERENCES Persons(P_Id);

--MySQL
ALTER TABLE Orders
DROP FOREIGN KEY fk_PerOrders;

--SQL Server / Oracle / MS Access
ALTER TABLE Orders
DROP CONSTRAINT fk_PerOrders;