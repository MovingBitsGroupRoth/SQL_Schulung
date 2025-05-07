CREATE DATABASE Objektverwaltung
Go
Use Objektverwaltung
Go

CREATE TABLE Objekt (
	ObjektID INT PRIMARY KEY IDENTITY,
	ObjektName Varchar(255) NOT NULL 
)
Go

CREATE TABLE Verwalter (
	VerwalterID INT PRIMARY KEY IDENTITY,
	Nachname Varchar(255) NOT NULL
)
Go

INSERT INTO Objekt (
	ObjektName
)
VALUES
	('NOP'),
	('KGS'),
	('SWP')

SELECT * FROM Objekt

INSERT INTO Verwalter (
	Nachname
)
VALUES
	('Huber'),
	('Schunke'),
	('John')

SELECT * FROM Verwalter
	
CREATE TABLE ObjektVerwalter ( -- n:m-Tabelle
	ObjektVerwalter INT PRIMARY KEY IDENTITY,
	-- Primary Key Objekt. Objekt <-> ObjektVerwalter = 1:n
	ObjektID INT,    
	-- Primary Key Verwalter. Verwalter <-> ObjektVerwalter = 1:n
	VerwalterID INT, 
	AbDatum Date NOT NULL, -- Verwalter für Objekt zuständig ab welchem Datum?
	FOREIGN KEY(ObjektID) 
		REFERENCES Objekt(ObjektID),
	FOREIGN KEY(VerwalterID) 
		REFERENCES Verwalter(VerwalterID)
)
Go


INSERT INTO ObjektVerwalter (
	ObjektID, VerwalterID, AbDatum
)
VALUES
	(1, 1, '10.02.2025'), -- NOP, Huber
	(2, 2, '05.12.2023'), -- KGS, Schunke
	(3, 3, '30.07.2025'), -- SWP, John
	(1, 2, '07.10.2018'), -- NOP, Huber
	(3, 2, '22.06.2019')  -- SWP, John

SELECT ObjektName, Nachname, AbDatum
FROM Objekt o INNER JOIN ObjektVerwalter ov 
ON o.ObjektID = ov.ObjektID INNER JOIN Verwalter v 
ON ov.VerwalterID = v.VerwalterID

SELECT * FROM Objekt
SELECT * FROM Verwalter