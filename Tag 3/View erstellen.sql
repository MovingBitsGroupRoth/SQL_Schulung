USE Kindergeld_Tag_2
GO

CREATE VIEW GeschaeftspartnerSchwabach AS
	SELECT Top (1000) Nachname [Nachname GP], Kindergeldnummer, k.Vorname [Vorname Kind], k.Geburtsdatum [Geb-Datum Kind]
	FROM Geschaeftspartner g INNER JOIN Kind k
	ON g.GeschaeftspartnerID = k.GeschaeftspartnerID
	WHERE Ort = 'Schwabach'
	ORDER BY Kindergeldnummer
GO

SELECT * FROM GeschaeftspartnerSchwabach