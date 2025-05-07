-- Reihenfolge der Spalten Beim Insert muss der Reihenfolge der Daten im Values entsprechen

INSERT INTO Geschaeftspartner(Kindergeldnummer, Vorname, Nachname, Geburtsdatum, Ort, Strasse, PLZ) 
VALUES 
('112FK928674', 'Rixt', 'Huber', '22.01.1960', 'Schwabach', 'Alte Rother Stra�e 4', '91126'), -- Ze�len mit Komma absachlie�en, au�er letzte Zeile
('113FK954267', 'Volpe', 'Maier', NULL, 'Erlangen', 'Gebbertstra�e 125', '91058'),
('114FK095362', 'Kenna', 'Meyer', '1.5.1981', 'N�rnberg', 'Wilhelmshavener Str. 15', '90425'),
('115FK845201', 'Leopoldo', 'Meier', '29.12.2000', 'Schwabach', 'Penzendorfer Stra�e 50', '91126'),
('116FK479321', 'Burdine', 'Holder', '10.7.1990', 'N�rnberg', 'Gewerbemuseumsplatz 1', '90403'),
('117FK333334', 'Creed', 'Thal', NULL, 'Defersdorf', 'Ortsstra�e 5', '90574'),
('118FK854201', 'Haldeman', 'Sanders', '11.2.1994', 'Schwanstetten', 'Schulstra�e 3', '90596'),
('119FK741098', 'Gitte', 'Kiritsis', '7.5.2002', 'F�rth', 'Kurgartenstr. 37', '90762'),
('120FK095423', 'Xiaona', 'Letzner', '11.9.1977', 'N�rnberg', 'Thomas-Mann-Stra�e 59', '90471'),
('111FK902675', 'Riqing', 'Batho', '23.8.1999', 'Altdorf', 'N�rnberger Str. 27', '90518'),
('199FK101067', 'Mas', 'Abelt', NULL, 'Ansbach', 'Residenzstra�e 2-6', '91522')
GO