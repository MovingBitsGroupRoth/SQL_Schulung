-- CREATE DATABASE Kindergeld_Tag_2
-- Go -- T-SQL

Use Kindergeld_Tag_2
Go

-- DROP TABLE Geschaeftspartner
CREATE TABLE Geschaeftspartner (
	GeschaeftspartnerID Int PRIMARY KEY IDENTITY,
	Kindergeldnummer Char(11) NOT NULL,
	Vorname Varchar(255) NOT NULL,
	Nachname Varchar(255) NOT Null,
	Strasse Varchar(255) NOT NULL,
	PLZ Char(5) NOT NULL, -- Nur deutsche PLZ
	Ort Varchar(255) NOT NULL,
	Geburtsdatum Date NULL,
	IsDeleted Bit NOT NULL Default 0
)

SELECT * FROM Geschaeftspartner

SELECT Kindergeldnummer, Nachname, Ort FROM Geschaeftspartner

-- DROP TABLE Kind
CREATE TABLE Kind (
	KindID Int PRIMARY KEY IDENTITY,
	GeschaeftspartnerID Int NOT NULL,
	Vorname Varchar(255) NOT NULL,
	Geburtsdatum Date NULL,
	IsDeleted Bit NOT NULL Default 0
	-- Column GeschaeftspartnerID in Kind
	Foreign Key(GeschaeftspartnerID) 
		-- Column GeschaeftspartnerID in Geschaeftspartner
		References Geschaeftspartner(GeschaeftspartnerID), 
)

SELECT * FROM Kind

SELECT 
	Kindergeldnummer, 
	gp.GeschaeftspartnerID [GP-ID (GP)], 
	gp.Vorname,
	Nachname, 
	KindID, 
	k.GeschaeftspartnerID [GP-ID (Kind)], 
	k.Vorname
FROM Geschaeftspartner gp
Inner Join Kind k
On gp.GeschaeftspartnerID = k.GeschaeftspartnerID
ORDER BY k.GeschaeftspartnerID


SELECT 
	Kindergeldnummer, 
	gp.GeschaeftspartnerID [GP-ID (GP)], 
	gp.Vorname,
	Nachname, 
	KindID, 
	k.GeschaeftspartnerID [GP-ID (Kind)], 
	k.Vorname
FROM Geschaeftspartner gp
Left Outer Join Kind k
On gp.GeschaeftspartnerID = k.GeschaeftspartnerID
ORDER BY k.GeschaeftspartnerID
