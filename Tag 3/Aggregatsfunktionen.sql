Use Kindergeld_Tag_2
Go

SELECT Ort, COUNT(Ort) AS [Anzahl Ortsangabe]
FROM Geschaeftspartner 
GROUP BY Ort


SELECT Ort, COUNT(Ort) AS [Anzahl Ortsangabe]
FROM Geschaeftspartner gp
GROUP BY gp.Ort
HAVING COUNT(gp.Ort) > 1

SELECT * FROM Auszahlung

SELECT Vorname, Nachname, 
	COUNT(Betrag) [Anzahl Auszahlungen],
	SUM(Betrag) [Auszahlung gesamt],
	AVG(Betrag) [Auszahlung durchschnittlich],
	MIN(Betrag) [Auszahlung Min],
	MAX(Betrag) [Auszahlung Max]
FROM Auszahlung
GROUP BY Vorname, Nachname