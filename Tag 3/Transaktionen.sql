-- Use Case: Kinder wurden verkehrt zugeordnet
-- Es darf nicht passieren, dass bei der Neuzuordnung etwas schiefläuft
use Kindergeld_Tag_2
Go

SELECT gp.Kindergeldnummer, gp.GeschaeftspartnerID, gp.Nachname AS [GP Nachname], gp.Geburtsdatum AS [Geburtsdatum Gp], gp.Ort, k.Vorname, k.Geburtsdatum AS [Geburtsdatum Kind]
FROM Geschaeftspartner gp INNER JOIN Kind k
ON gp.GeschaeftspartnerID = k.GeschaeftspartnerID
WHERE (Kindergeldnummer = '117FK333334' OR Kindergeldnummer = '222FK928643') AND (k.Vorname = 'Petra' OR k.Vorname = 'Alexandra')
ORDER BY gp.Nachname

-- Andere DBs
-- START TRANSACTION
BEGIN TRANSACTION

UPDATE Kind
SET GeschaeftspartnerID = 
	(SELECT GeschaeftspartnerID from Geschaeftspartner WHERE Kindergeldnummer = '117FK333334') 
WHERE Vorname = 'Alexandra' AND Geburtsdatum = '2015-10-20'

UPDATE Kind
SET GeschaeftspartnerID = 
	(SELECT GeschaeftspartnerID from Geschaeftspartner WHERE Kindergeldnummer = '222FK928643') 
WHERE Vorname = 'Petra' AND Geburtsdatum = '2011-02-28'

COMMIT

SELECT gp.Kindergeldnummer, gp.GeschaeftspartnerID, gp.Nachname AS [GP Nachname], gp.Geburtsdatum AS [Geburtsdatum Gp], gp.Ort, k.Vorname, k.Geburtsdatum AS [Geburtsdatum Kind]
FROM Geschaeftspartner gp INNER JOIN Kind k
ON gp.GeschaeftspartnerID = k.GeschaeftspartnerID
WHERE (Kindergeldnummer = '117FK333334' OR Kindergeldnummer = '222FK928643') AND (k.Vorname = 'Petra' OR k.Vorname = 'Alexandra')
ORDER BY gp.Nachname
