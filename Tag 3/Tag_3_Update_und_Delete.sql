Use Kindergeld_Tag_2
Go

-- Gib Datensätze der Geschäftspartner mit ihren Kindern aus.
SELECT 
	Kindergeldnummer, 
	gp.GeschaeftspartnerID [GP-ID (GP)], 
	gp.Vorname,
	Nachname, 
	KindID, 
	k.GeschaeftspartnerID [GP-ID (Kind)], 
	k.Vorname
FROM Geschaeftspartner gp
Left Outer Join Kind k -- Left Join => Auch GP ohne Kinder
On gp.GeschaeftspartnerID = k.GeschaeftspartnerID
ORDER BY k.GeschaeftspartnerID

DELETE FROM
Geschaeftspartner
WHERE Kindergeldnummer = '120FK095423'

UPDATE Geschaeftspartner
SET Nachname = 'Abelt-Renner'
WHERE Kindergeldnummer = '199FK101067'

-- Aufgaben Tag 3:
-- 1.) Lösche den GP mit der KG-Nr.: 199FK101067
-- 2.) Update den GP, der im Ort Schwanstetten wohnt zu: Schwanstetten OT Schwand

DELETE FROM
Geschaeftspartner
WHERE Kindergeldnummer = '199FK101067'

Select * from Geschaeftspartner where Ort = 'Schwanstetten'

UPDATE Geschaeftspartner
SET Ort = 'Schwanstetten OT Schwand'
WHERE Ort = 'Schwanstetten'
AND Kindergeldnummer = '118FK854201'

Select * from Geschaeftspartner where Ort = 'Schwanstetten OT Schwand'