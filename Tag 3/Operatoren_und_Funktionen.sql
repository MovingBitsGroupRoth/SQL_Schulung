-- TODO!!!
SELECT *,Vorname, Nachname, 
ISNULL(Geburtsdatum, 'n/a') As GebDat,
COALESCE(Geburtsdatum, 'n/a') As GebDat
FROM Geschaeftspartner

SELECT Nachname Vorname, Geburtsdatum, YEAR(Geburtsdatum)
FROM Geschaeftspartner

SELECT UPPER(Nachname), UPPER(Vorname), Ort, Geburtsdatum
FROM Geschaeftspartner
WHERE YEAR(Geburtsdatum) BETWEEN 2000 AND 2014

SELECT UPPER(Nachname), UPPER(Vorname), Ort, Geburtsdatum
FROM Geschaeftspartner
WHERE YEAR(Geburtsdatum) >= 1994

SELECT UPPER(Nachname), UPPER(Vorname), Ort, Geburtsdatum
FROM Geschaeftspartner
WHERE Geburtsdatum IS NULL

SELECT UPPER(Nachname), UPPER(Vorname), Ort, Geburtsdatum
FROM Geschaeftspartner
WHERE Ort Like 'N%'

SELECT UPPER(Nachname), UPPER(Vorname), Ort, Geburtsdatum
FROM Geschaeftspartner
WHERE Ort NOT Like '%ü%'

SELECT UPPER(Nachname), UPPER(Vorname), Ort, Geburtsdatum
FROM Geschaeftspartner
WHERE Ort IN ('Erlangen','Schwanstetten')

SELECT UPPER(Nachname), UPPER(Vorname), Ort, Geburtsdatum
FROM Geschaeftspartner
WHERE Nachname like 'm___r'

SELECT Sum(Betrag) As [Summe Betrag]
FROM Auszahlung

SELECT Avg(Betrag) As [Mittelwert Betrag]
FROM Auszahlung

SELECT Vorname, Nachname, Betrag
FROM Auszahlung
WHERE Len(Vorname) > 5

SELECT 
	Nachname + ', ' + Vorname As [Name], 
	Betrag
FROM Auszahlung

-- Überlege neue Übung zu Cast!
SELECT 
	Nachname + ', ' + Vorname As [Name], 
	Betrag + 20 AS Zuschlag,
	Cast(Betrag AS varchar(10)) + '€' As [Euro]
FROM Auszahlung

SELECT 
	CONCAT(Nachname,  ', ', Vorname) As [Name], 
	Betrag
FROM Auszahlung

SELECT 
	Nachname + ', ' + Vorname As [Name], 
	FORMAT(Betrag, 'C') [Euro]
FROM Auszahlung

SELECT 
	Vorname, 
	Nachname, 
	Betrag, 
	DatumDerZahlung,
	Dateadd(YEAR, 1, DatumDerZahlung) As [Zahlung im nä. Jahr],
	Format(DatumDerZahlung, 'dddd, yyyy-MM-dd')
FROM Auszahlung

SELECT 
  Nachname, 
  Vorname, 
  Geburtsdatum, 
  REPLACE(Kindergeldnummer, 'FK', ' - Feste Kindergeldnummer - ') As [KG-Nr],
  Substring(Kindergeldnummer, 6, 6) As [KG-Nr (ohne Dienststelle)]
FROM Geschaeftspartner

SELECT 
  Nachname, 
  Vorname, 
  Geburtsdatum
FROM Geschaeftspartner
WHERE Kindergeldnummer = '[0-9][0-9][0-9]FK[0-9][0-9][0-9][0-9][0-9][0-9]'

-- [0-9]{3}FK[0-9]{6}

