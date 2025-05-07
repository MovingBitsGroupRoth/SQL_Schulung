Use Kindergeld_Tag_2
Go

CREATE TABLE KindLoeschprotokoll (
    ProtokollID INT PRIMARY KEY IDENTITY,
    KindID INT NOT NULL,
    LoeschDatum DATETIME NOT NULL,
    FOREIGN KEY (KindID) REFERENCES Kind(KindID)
);

CREATE TRIGGER KindIsDeleted
ON Kind
AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    INSERT INTO KindLoeschprotokoll (KindID, LoeschDatum)
    SELECT i.KindID, GETDATE()
    FROM inserted i
    JOIN deleted d ON i.KindID = d.KindID
    WHERE i.IsDeleted = 1 AND d.IsDeleted = 0;
END;


-- Testen
UPDATE Kind
SET IsDeleted = 1
WHERE Vorname = 'Lisa';

SELECT * FROM Kind
WHERE IsDeleted = 1

-- Protokollierte Löschung prüfen
SELECT * FROM KindLoeschprotokoll;