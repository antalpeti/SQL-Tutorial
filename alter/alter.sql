--SQL Server / MS Access
ALTER TABLE table_name
ALTER COLUMN column_name datatype;

--My SQL / Oracle (prior version 10G)
ALTER TABLE table_name
MODIFY COLUMN column_name datatype;

--Oracle 10G and later
ALTER TABLE table_name
MODIFY column_name datatype;

ALTER TABLE Persons
ADD DateOfBirth date;

ALTER TABLE Persons
ALTER COLUMN DateOfBirth year;

ALTER TABLE Persons
DROP COLUMN DateOfBirth;