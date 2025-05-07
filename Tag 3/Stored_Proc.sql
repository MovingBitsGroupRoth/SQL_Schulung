-- Stored Procedure: Neuen Kind-Eintrag einf�gen
CREATE PROCEDURE dbo.ErstelleKind
    @GeschaeftspartnerID INT,
    @Vorname VARCHAR(255),
    @Geburtsdatum DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Existenzpr�fung des Geschaeftspartners
    IF NOT EXISTS (SELECT 1 FROM Geschaeftspartner WHERE GeschaeftspartnerID = @GeschaeftspartnerID)
    BEGIN
        RAISERROR('GeschaeftspartnerID nicht vorhanden.', 16, 1);
        RETURN;
    END

    -- Einf�gen des neuen Kinds
    INSERT INTO Kind (GeschaeftspartnerID, Vorname, Geburtsdatum)
    VALUES (@GeschaeftspartnerID, @Vorname, @Geburtsdatum);
END;


-- Testen
EXEC dbo.ErstelleKind
    @GeschaeftspartnerID = 1,
    @Vorname = 'Lisa',
    @Geburtsdatum = '2018-05-01';

SELECT * FROM Kind