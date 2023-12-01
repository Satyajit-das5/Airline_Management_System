
CREATE FUNCTION dbo.CalculateAge (@BirthDate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT

    -- Calculate age based on the current date
    SET @Age = DATEDIFF(YEAR, @BirthDate, GETDATE())

    RETURN @Age
END;

-- View UDF
SELECT 
    definition
FROM 
    sys.sql_modules 
WHERE 
    object_id = OBJECT_ID('dbo.CalculateAge');
