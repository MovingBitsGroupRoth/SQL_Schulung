USE Kindergeld_VR
Go

-- Aufruf: SELECT dbo.GetFullName('Peter', 'Pan') AS 'Kundenname'

CREATE FUNCTION GetFullName
(
	@Vorname varchar(255),
	@Nachname varchar(255)
)
RETURNS varchar(550)
AS
BEGIN
	DECLARE @FullName varchar(550)

	SET @FullName = @Nachname + ', ' +  @Vorname

	RETURN @FullName
END

-- Verwendung
SELECT dbo.GetFullName('Peter', 'Pan') AS 'Kundenname'

SELECT dbo.GetFullName(Nachname, Vorname) AS 'Kundenname', Ort
FROM Geschaeftspartner