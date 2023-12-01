-- Alter the existing function with additional error handling
ALTER FUNCTION dbo.CalculateAge (@BirthDate DATE)
RETURNS INT
AS
BEGIN
    DECLARE @Age INT

    BEGIN TRY
        -- Check if the input BirthDate is NULL
        IF @BirthDate IS NULL
            RAISEERROR('BirthDate cannot be NULL', 16, 1);

        -- Calculate age based on the current date
        SET @Age = DATEDIFF(YEAR, @BirthDate, GETDATE())

        -- Check if the calculated age is negative (invalid)
        IF @Age < 0
            RAISEERROR('Invalid BirthDate', 16, 1);

        RETURN @Age
    END TRY
    BEGIN CATCH
        -- Handle the error
        DECLARE @ErrorMessage NVARCHAR(4000) = ERROR_MESSAGE();
        DECLARE @ErrorSeverity INT = ERROR_SEVERITY();
        DECLARE @ErrorState INT = ERROR_STATE();

        -- Log or handle the error as needed
        -- For example, you can use PRINT or insert into an error log table

        -- Re-throw the error for the caller
        RAISEERROR(@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END;
