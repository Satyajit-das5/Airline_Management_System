-- ######## VIEWS ####################################
-- 1. This view provides details about passengers, including personal information and specific details 
-- related to air travel, such as boarding pass and food preferences.
CREATE VIEW vw_PassengerDetails
AS
SELECT
    p.Person_ID,
    p.First_Name,
    p.Last_Name,
    p.Date_of_Birth,
    p.Country,
    p.State,
    p.Zipcode,
    p.Email,
    p.Phone_Number,
    p.Passport_ID,
    p.Person_Type,
    ps.Boarding_Pass,
    ps.Food_Preference
FROM dbo.Person p
JOIN dbo.Passenger ps ON p.Person_ID = ps.Person_ID;

-- 2. This view provides comprehensive details about flight bookings, 
-- including passenger names, booking date, flight details, ticket information, and payment details
CREATE VIEW vw_BookingDetails
AS
SELECT
    b.BookingID,
    p.First_Name + ' ' + p.Last_Name AS Passenger_Name,
    b.Booking_Date,
    b.P_Person_ID,
    f.Flight_ID,
    t.Ticket_Type,
    p.Email AS Passenger_Email,
    py.Payment_Method,
    py.Amount
FROM dbo.Booking b
JOIN dbo.Person p ON b.P_Person_ID = p.Person_ID
JOIN dbo.Flight f ON b.Flight_ID = f.Flight_ID
JOIN dbo.Ticket t ON b.Ticket_ID = t.TicketID
JOIN dbo.Payment py ON b.PaymentID = py.PaymentID;

-- 3.This view provides a comprehensive list of details for airports, 
-- including airport codes, names, countries, states, IATA codes, and ICAO codes.
CREATE VIEW vw_AirportDetails
AS
SELECT *
FROM dbo.Airport;

-- 4. This view displays details about aircraft maintenance schedules, 
-- including schedule ID, aircraft type, manufacturer, maintenance type, 
-- maintenance date, and description.
CREATE VIEW vw_MaintenanceSchedule
AS
SELECT
    m.ScheduleID,
    a.Aircraft_Type,
    a.Manufacturer,
    m.Maintenance_Type,
    m.Maintenance_Date,
    m.Description
FROM dbo.Maintenance m
JOIN dbo.Aircraft a ON m.AircraftID = a.AircraftID;

-- 5. This view presents information about flight crew assignments,
--  including assignment ID, crew count, flight ID, crew person ID, 
--  department, certification, and salary.
CREATE VIEW vw_FlightCrewAssignment
AS
SELECT
    fca.FLIGHT_CREW_ASGN_ID,
    fca.Crew_Count,
    fca.Flight_ID,
    c.Person_ID AS Crew_Person_ID,
    c.Department,
    c.Certification,
    c.Salary
FROM dbo.Flight_Crew_Assignment fca
JOIN dbo.Crew c ON fca.C_Person_ID = c.Person_ID;


-- ######## STORED PROCEDURES ####################################
-- Stored procedures
-- 1.
/*
Description: This stored procedure retrieves details about a person based on the provided PersonID.
Parameters:
@PersonID (INT): The unique identifier of the person.
Result:
Returns all columns from the Person table for the specified PersonID
*/
CREATE PROCEDURE usp_GetPersonDetails
    @PersonID INT
AS
BEGIN
    SELECT *
    FROM dbo.Person
    WHERE Person_ID = @PersonID;
END;

-- 2.
/*
Description: This stored procedure fetches details about a flight based on the provided FlightID.
Parameters:
@FlightID (INT): The unique identifier of the flight.
Result:
Returns all columns from the Flight table for the specified FlightID.
*/
CREATE PROCEDURE usp_GetFlightDetails
    @FlightID INT
AS
BEGIN
    SELECT *
    FROM dbo.Flight
    WHERE Flight_ID = @FlightID;
END;

-- 3.
/*
Description: This stored procedure retrieves details about a booking based on the provided BookingID.
Parameters:
@BookingID (INT): The unique identifier of the booking.
Result:
Returns all columns from the Booking table for the specified BookingID.
*/
CREATE PROCEDURE usp_GetBookingDetails
    @BookingID INT
AS
BEGIN
    SELECT *
    FROM dbo.Booking
    WHERE BookingID = @BookingID;
END;

-- 4.
/*
Description: This stored procedure retrieves details about an aircraft based on the provided AircraftID.
Parameters:
@AircraftID (INT): The unique identifier of the aircraft.
Result:
Returns all columns from the Aircraft table for the specified AircraftID.
*/
CREATE PROCEDURE usp_GetAircraftDetails
    @AircraftID INT
AS
BEGIN
    SELECT *
    FROM dbo.Aircraft
    WHERE AircraftID = @AircraftID;
END;

-- 5.
/*
Description: This stored procedure retrieves details about a route based on the provided RouteID.
Parameters:
@RouteID (INT): The unique identifier of the route.
Result:
Returns all columns from the Route table for the specified RouteID.
*/
CREATE PROCEDURE usp_GetRouteDetails
    @RouteID INT
AS
BEGIN
    SELECT *
    FROM dbo.Route
    WHERE RouteID = @RouteID;
END;