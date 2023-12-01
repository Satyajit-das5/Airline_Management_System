/*
This trigger, named trg_UpdateLastMaintenanceDate, is designed to automatically 
update the Last_Maintenance_Date column in the Aircraft table whenever a new 
record is inserted into the Maintenance table. The trigger is configured to 
execute AFTER INSERT operations on the Maintenance table.
*/

CREATE TRIGGER trg_UpdateLastMaintenanceDate
ON dbo.Maintenance
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @AircraftID INT;

    -- Assuming that Maintenance table has a foreign key relationship with Aircraft table
    SELECT @AircraftID = i.AircraftID
    FROM inserted i;

    -- Update Last_Maintenance_Date in Aircraft table
    UPDATE dbo.Aircraft
    SET Last_Maintenance_Date = GETDATE() -- You can modify this based on your business logic
    WHERE AircraftID = @AircraftID;
END;