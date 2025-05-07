-- Reihenfolge der Spalten Beim Insert muss der Reihenfolge der Daten im Values entsprechen

INSERT INTO Geschaeftspartner(Kindergeldnummer, Vorname, Nachname, Geburtsdatum, Ort, Strasse, PLZ) 
VALUES 
('112FK928674', 'Rixt', 'Huber', '22.01.1960', 'Schwabach', 'Alte Rother Straße 4', '91126'), -- Zeílen mit Komma absachließen, außer letzte Zeile
('113FK954267', 'Volpe', 'Maier', NULL, 'Erlangen', 'Gebbertstraße 125', '91058'),
('114FK095362', 'Kenna', 'Meyer', '1.5.1981', 'Nürnberg', 'Wilhelmshavener Str. 15', '90425'),
('115FK845201', 'Leopoldo', 'Meier', '29.12.2000', 'Schwabach', 'Penzendorfer Straße 50', '91126'),
('116FK479321', 'Burdine', 'Holder', '10.7.1990', 'Nürnberg', 'Gewerbemuseumsplatz 1', '90403'),
('117FK333334', 'Creed', 'Thal', NULL, 'Defersdorf', 'Ortsstraße 5', '90574'),
('118FK854201', 'Haldeman', 'Sanders', '11.2.1994', 'Schwanstetten', 'Schulstraße 3', '90596'),
('119FK741098', 'Gitte', 'Kiritsis', '7.5.2002', 'Fürth', 'Kurgartenstr. 37', '90762'),
('120FK095423', 'Xiaona', 'Letzner', '11.9.1977', 'Nürnberg', 'Thomas-Mann-Straße 59', '90471'),
('111FK902675', 'Riqing', 'Batho', '23.8.1999', 'Altdorf', 'Nürnberger Str. 27', '90518'),
('199FK101067', 'Mas', 'Abelt', NULL, 'Ansbach', 'Residenzstraße 2-6', '91522')
GO