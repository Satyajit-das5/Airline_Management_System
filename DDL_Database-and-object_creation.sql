-- Drop database if exists
-- iF DATABASE EXISTS, DROP
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Airline_Management_System')
DROP DATABASE Airline_Management_System
GO
-- Create database
CREATE DATABASE Airline_Management_System;
GO

-- Use the created database
USE Airline_Management_System;
GO

-- Create Person table (Supertype)
CREATE TABLE dbo.Person (
    Person_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Date_of_Birth DATE,
    Country VARCHAR(50),
    State VARCHAR(50),
    Zipcode VARCHAR(20),
    Email VARCHAR(100),
    Phone_Number VARCHAR(20),
    Passport_ID VARCHAR(20),
    Person_Type VARCHAR(20)
);
GO

-- Create Passenger table (Subtype)
CREATE TABLE dbo.Passenger (
    Person_ID INT PRIMARY KEY,
    Boarding_Pass VARCHAR(50),
    Food_Preference VARCHAR(50),
    FOREIGN KEY (Person_ID) REFERENCES dbo.Person (Person_ID)
);
GO

-- Create Booking table
CREATE TABLE dbo.Booking (
    BookingID INT PRIMARY KEY,
    P_Person_ID INT,
    Flight_ID INT,
    PaymentID INT,
    Ticket_ID INT,
    Booking_Date DATETIME
);
GO

-- Create Payment table
CREATE TABLE dbo.Payment (
    PaymentID INT PRIMARY KEY,
    Payment_Method VARCHAR(50),
    Amount FLOAT,
    Payment_Date DATETIME
);
GO

-- Create Ticket table
CREATE TABLE dbo.Ticket (
    TicketID INT PRIMARY KEY,
    Ticket_Type VARCHAR(20),
    Gate_Number VARCHAR(10),
    Seat_Number VARCHAR(20)
);
GO

-- Create Route table
CREATE TABLE dbo.Route (
    RouteID INT PRIMARY KEY,
    Destination_Airport_Code VARCHAR(10),
    Origin_Airport_Code VARCHAR(10),
    Distance FLOAT,
    Duration INT,
    Stops INT
);
GO

-- Create Airport table
CREATE TABLE dbo.Airport (
    AirportCode VARCHAR(10) PRIMARY KEY,
    Airport_Name VARCHAR(50),
    A_Country VARCHAR(50),
    A_State VARCHAR(50),
    IATA_Code VARCHAR(10),
    ICAO_Code VARCHAR(10)
);
GO

-- Create Flight table
CREATE TABLE dbo.Flight (
    Flight_ID INT PRIMARY KEY,
    Departure_Date_Time DATETIME,
    Arrival_Date_Time DATETIME,
    AircraftID INT,
    AirportCode VARCHAR(10),
    RouteID INT
);
GO



-- Create Aircraft table
CREATE TABLE dbo.Aircraft (
    AircraftID INT PRIMARY KEY,
    Aircraft_Type VARCHAR(50),
    Manufacturer VARCHAR(50),
    Capacity INT,
    Last_Maintenance_Date DATE,
);
GO

-- Create Crew table (Subtype)
CREATE TABLE dbo.Crew (
    Person_ID INT PRIMARY KEY,
    Department VARCHAR(50),
    Certification VARCHAR(50),
    Salary FLOAT
);
GO

-- Create Flight_Crew_Assignment table
CREATE TABLE dbo.Flight_Crew_Assignment (
    FLIGHT_CREW_ASGN_ID INT PRIMARY KEY,
    Crew_Count INT,
    Flight_ID INT,
    C_Person_ID INT
);
GO

-- Create Maintenance_Schedule table
CREATE TABLE dbo.Maintenance (
    ScheduleID INT PRIMARY KEY,
    AircraftID INT,
    Maintenance_Type VARCHAR(50),
    Maintenance_Date DATE,
    Description VARCHAR(255)
);
GO

-- Create Route_Leg table
CREATE TABLE dbo.Route_Leg (
    Leg_Sequence INT,
    AirportCode VARCHAR(10),
    RouteID INT,
    Route_Leg_ID INT PRIMARY KEY,
);
GO

-- Add foreign keys for Booking table
ALTER TABLE dbo.Booking
    ADD CONSTRAINT FK_Booking_Person FOREIGN KEY (P_Person_ID) REFERENCES dbo.Person (Person_ID);

ALTER TABLE dbo.Booking
    ADD CONSTRAINT FK_Booking_Flight FOREIGN KEY (Flight_ID) REFERENCES dbo.Flight (Flight_ID);

ALTER TABLE dbo.Booking
    ADD CONSTRAINT FK_Booking_Payment FOREIGN KEY (PaymentID) REFERENCES dbo.Payment (PaymentID);

ALTER TABLE dbo.Booking
    ADD CONSTRAINT FK_Booking_Ticket FOREIGN KEY (Ticket_ID) REFERENCES dbo.Ticket (TicketID);
GO

-- Add foreign keys for Flight table
ALTER TABLE dbo.Flight
    ADD CONSTRAINT FK_Flight_Booking FOREIGN KEY (AircraftID) REFERENCES dbo.Aircraft (AircraftID);

ALTER TABLE dbo.Flight
    ADD CONSTRAINT FK_Flight_Airport FOREIGN KEY (AirportCode) REFERENCES dbo.Airport (AirportCode);

ALTER TABLE dbo.Flight
    ADD CONSTRAINT FK_Flight_Route FOREIGN KEY (RouteID) REFERENCES dbo.Route (RouteID);
GO

-- Add foreign keys for Maintenance table
ALTER TABLE dbo.Maintenance
    ADD CONSTRAINT FK_Maintenance FOREIGN KEY (AircraftID) REFERENCES dbo.Aircraft (AircraftID);
GO

-- Add foreign keys for Flight_Crew_Assignment table
ALTER TABLE dbo.Flight_Crew_Assignment
    ADD CONSTRAINT FK_Flight_Crew_Assignment_Flight FOREIGN KEY (Flight_ID) REFERENCES dbo.Flight (Flight_ID);

ALTER TABLE dbo.Flight_Crew_Assignment
    ADD CONSTRAINT FK_Flight_Crew_Assignment_Crew FOREIGN KEY (C_Person_ID) REFERENCES dbo.Crew (Person_ID);
GO

-- Add foreign keys for Route_Leg table
ALTER TABLE dbo.Route_Leg
    ADD CONSTRAINT FK_Route_Leg_Airport FOREIGN KEY (AirportCode) REFERENCES dbo.Airport (AirportCode);

ALTER TABLE dbo.Route_Leg
    ADD CONSTRAINT FK_Route_Leg_Route FOREIGN KEY (RouteID) REFERENCES dbo.Route (RouteID);
GO