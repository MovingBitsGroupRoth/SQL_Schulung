Use Kindergeld_Tag_2                                                                                                                                                                                                                                                Use Kindergeld_VR
Go

SELECT *
FROM Geschaeftspartner
WHERE Ort = 'N�rnberg'

SELECT *
FROM Geschaeftspartner
WHERE Ort LIKE 'Sch%'

SELECT *
FROM Geschaeftspartner
WHERE Ort LIKE '%�r%'

SELECT *
FROM Geschaeftspartner
WHERE Geburtsdatum > '1999-12-31'
AND Ort = 'F�rth'

SELECT Nachname + ', ' + Vorname [GP-Name], Ort
FROM Geschaeftspartner
                                                                    