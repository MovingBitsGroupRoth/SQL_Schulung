-- Stored Procedure: Neuen Kind-Eintrag einfügen
CREATE PROCEDURE dbo.ErstelleKind
    @GeschaeftspartnerID INT,
    @Vorname VARCHAR(255),
    @Geburtsdatum DATE = NULL
AS
BEGIN
    SET NOCOUNT ON;

    -- Existenzprüfung des Geschaeftspartners
    IF NOT EXISTS (SELECT 1 FROM Geschaeftspartner WHERE GeschaeftspartnerID = @GeschaeftspartnerID)
    BEGIN
        RAISERROR('GeschaeftspartnerID nicht vorhanden.', 16, 1);
        RETURN;
    END

    -- Einfügen des neuen Kinds
    INSERT INTO Kind (GeschaeftspartnerID, Vorname, Geburtsdatum)
    VALUES (@GeschaeftspartnerID, @Vorname, @Geburtsdatum);
END;


-- Testen
EXEC dbo.ErstelleKind
    @GeschaeftspartnerID = 1,
    @Vorname = 'Lisa',
    @Geburtsdatum = '2018-05-01';

SELECT * FROM Kind