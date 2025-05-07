Use Kindergeld_Tag_2
Go

CREATE TABLE Auszahlung (
	AuszahlungID INT PRIMARY KEY IDENTITY,
	GeschaeftspartnerID INT NOT NULL,
	-- Datetime2 kann zusätzlich auch die Uhrzeit erfassen
	ErfasstAm DateTime2 DEFAULT GetDate(), 
	-- Muss von der Client-Anwendung mit dem Windows User gefüllt werden. Das 
	CurrentUser VARCHAR(100), 
	Vorname VARCHAR(255) NOT NULL,
	-- Zum Zeitpunkt der Auszahlung. Kann sich durch Namensannahme bei Heirat z.B. ändern
	Nachname VARCHAR(255) NOT NULL, 
	-- Ausgezahlter Betrag. Decimal -> für finanz-mathematische Berechnungen geeignet
	Betrag DECIMAL NOT NULL, 
	Bank VARCHAR(255) NOT NULL,
	DatumDerZahlung DATE NOT NULL,
	ZahlungsZeitraumVon Date NOT NULL,
	ZahlungsZeitraumBis Date NOT NULL,
	IBAN CHAR(22) NOT NULL,
	FOREIGN KEY(GeschaeftspartnerID) 
		REFERENCES Geschaeftspartner(GeschaeftspartnerID)
)
Go

-- DROP TABLE Auszahlung

INSERT INTO Auszahlung (
	GeschaeftspartnerID, 
	Vorname, 
	Nachname, 
	Betrag, 
	Bank, 
	DatumDerZahlung,
	ZahlungsZeitraumVon, 
	ZahlungsZeitraumBis,
	IBAN, 
	CurrentUser)
VALUES 
  (6, 'Burdine', 'Holder', 120.50,'Sparkasse Mfr. Süd', '20.04.2024','01.04.2024', '30.04.2024', 'DE02700100800030876808', 'MeierE05'),
  (4, 'Kenna', 'Meyer', 105,'Sparda Bank', '20.04.2024', '01.01.2024', '30.04.2024', 'DE02300209000106531065', 'JohnP'),
  (6, 'Burdine', 'Holder', 380,'Sparkasse Mfr. Süd', '20.05.2024','01.05.2024', '31.05.2024', 'DE02700100800030876808', 'SchadeT')
Go

SELECT * FROM Auszahlung
