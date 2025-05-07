Use Kindergeld_Tag_2
Go

-- Alle Tabellen in der aktuellen Datenbank
SELECT * FROM INFORMATION_SCHEMA.TABLES;

-- Alle Spalten einer bestimmten Tabelle
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Auszahlung';

-- Alle gespeicherten Prozeduren
SELECT *
FROM sys.procedures;

-- Fremdschlüssel-Details
SELECT *
FROM sys.foreign_keys;
