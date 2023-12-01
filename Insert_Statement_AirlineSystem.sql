-- 1. Insert data into Person table
INSERT INTO dbo.Person (Person_ID, First_Name, Last_Name, Date_of_Birth, Country, State, Zipcode, Email, Phone_Number, Passport_ID, Person_Type)
VALUES
(1, 'John', 'Smith', '1980-05-15', 'USA', 'CA', '90210', 'john.smith@email.com', '1234567890', 'AB123456', 'Passenger'),
(2, 'Mark', 'Kelter', '1975-08-20', 'Canada', 'ON', 'M5V 2G3', 'mark.kelter@email.com', '9876543210', 'CD789012', 'Crew'),
(3, 'Peter', 'McDonalds', '1988-12-10', 'UK', 'England', 'EC1A 1BB', 'peter.mcd@email.com', '5551112222', 'EF345678', 'Passenger'),
(4, 'Ba', 'Tran', '1993-02-25', 'Australia', 'NSW', '2000', 'ba.tran@email.com', '3334445555', 'GH567890', 'Crew'),
(5, 'Rohit', 'Joshi', '1982-07-18', 'India', 'MH', '400001', 'rohit.joshi@email.com', '9998887777', 'IJ901234', 'Passenger'),
(6, 'Lei', 'Zhou', '1990-11-30', 'China', 'Beijing', '100000', 'lei.zhou@email.com', '1112223333', 'KL345678', 'Crew'),
(7, 'Juan', 'Garcia', '1985-04-22', 'Spain', 'Madrid', '28001', 'juan.garcia@email.com', '7776665555', 'MN456789', 'Passenger'),
(8, 'Deshaun', 'Jackson', '1992-09-08', 'USA', 'NY', '10001', 'deshaun.jackson@email.com', '4443332222', 'OP567890', 'Crew'),
(9, 'Lionell', 'Messi', '1987-06-24', 'Argentina', 'Buenos Aires', 'C1002ABC', 'lionell.messi@email.com', '6667778888', 'QR789012', 'Passenger'),
(10, 'Jay', 'Moser', '1983-01-01', 'USA', 'WA', '98101', 'jay.moser@email.com', '3332221111', 'ST901234', 'Crew'),
(11, 'Luke', 'Smith', '1978-03-14', 'Canada', 'AB', 'T5J 0H8', 'luke.smith@email.com', '8889990000', 'UV567890', 'Passenger'),
(12, 'Matthew', 'Hoyer', '1995-12-05', 'USA', 'CA', '90001', 'matthew.hoyer@email.com', '2223334444', 'WX678901', 'Crew'),
(13, 'John', 'Doe', '1990-05-15', 'USA', 'California', '90210', 'john.doe@email.com', '555-1234', 'ABC123456', 'Passenger'),
(14, 'Jane', 'Smith', '1985-08-22', 'Canada', 'Ontario', 'M5V 2L9', 'jane.smith@email.com', '555-5678', 'DEF789012', 'Passenger'),
(15, 'Robert', 'Johnson', '1978-03-10', 'UK', 'England', 'SW1A 1AA', 'robert.j@email.com', '555-9012', 'GHI345678', 'Crew'),
(16, 'Emily', 'Brown', '1992-11-28', 'Australia', 'Victoria', '3000', 'emily.b@email.com', '555-3456', 'JKL901234', 'Passenger'),
(17, 'Michael', 'Wong', '1980-07-17', 'Singapore', 'Central', '238877', 'michael.w@email.com', '555-7890', 'MNO567890', 'Passenger'),
(18, 'Sophia', 'Martinez', '1995-04-03', 'Mexico', 'Jalisco', '44100', 'sophia.m@email.com', '555-2345', 'PQR123456', 'Crew'),
(19, 'Daniel', 'Kim', '1983-09-14', 'South Korea', 'Seoul', '04535', 'daniel.k@email.com', '555-6789', 'STU789012', 'Crew'),
(20, 'Aisha', 'Ahmed', '1987-12-20', 'United Arab Emirates', 'Dubai', '12345', 'aisha.a@email.com', '555-0123', 'VWX345678', 'Passenger');

-- 2. Insert data into Passenger table
INSERT INTO dbo.Passenger (Person_ID, Boarding_Pass, Food_Preference)
VALUES
(1, 'BP123', 'Vegetarian'),
(2, 'BP456', 'Non-Vegetarian'),
(3, 'BP789', 'Vegan'),
(4, 'BP101', 'Gluten-Free'),
(5, 'BP112', 'Vegetarian'),
(6, 'BP202', 'Non-Vegetarian'),
(7, 'BP303', 'Vegan'),
(8, 'BP404', 'Gluten-Free'),
(9, 'BP505', 'Vegetarian'),
(10, 'BP606', 'Non-Vegetarian'),
(11, 'BP707', 'Vegan'),
(12, 'BP808', 'Gluten-Free'),
(13, 'BP111', 'Vegetarian'),
(14, 'BP222', 'Non-Vegetarian'),
(15, 'BP333', 'Vegan'),
(16, 'BP444', 'Gluten-Free'),
(17, 'BP555', 'Vegetarian'),
(18, 'BP666', 'Non-Vegetarian'),
(19, 'BP777', 'Vegan'),
(20, 'BP888', 'Gluten-Free');

-- 3. Insert data into Payment table
INSERT INTO dbo.Payment (PaymentID, Payment_Method, Amount, Payment_Date)
VALUES
(301, 'Credit Card', 500.00, '2023-01-02'),
(302, 'PayPal', 450.00, '2023-02-02'),
(303, 'Debit Card', 600.00, '2023-03-02'),
(304, 'Cash', 350.00, '2023-04-02'),
(305, 'Bank Transfer', 700.00, '2023-05-02'),
(306, 'Credit Card', 550.00, '2023-06-02'),
(307, 'PayPal', 800.00, '2023-07-02'),
(308, 'Debit Card', 400.00, '2023-08-02'),
(309, 'Cash', 650.00, '2023-09-02'),
(310, 'Bank Transfer', 900.00, '2023-10-02'),
(311, 'Credit Card', 750.00, '2023-11-02'),
(312, 'PayPal', 1000.00, '2023-12-02'),
(313, 'Credit Card', 700.00, '2022-05-15'),
(314, 'PayPal', 550.00, '2022-06-20'),
(315, 'Debit Card', 800.00, '2021-07-10'),
(316, 'Cash', 400.00, '2021-08-05'),
(317, 'Credit Card', 600.00, '2020-09-12'),
(318, 'PayPal', 750.00, '2020-10-18'),
(319, 'Debit Card', 900.00, '2019-11-25'),
(320, 'Cash', 500.00, '2019-12-30');

-- 4. Insert data into Ticket table
INSERT INTO dbo.Ticket (TicketID, Ticket_Type, Gate_Number, Seat_Number)
VALUES
(401, 'Economy', 'Gate A1', 'A1'),
(402, 'Business', 'Gate B2', 'B2'),
(403, 'First Class', 'Gate C3', 'C3'),
(404, 'Economy', 'Gate D4', 'D4'),
(405, 'Business', 'Gate E5', 'E5'),
(406, 'First Class', 'Gate F6', 'F6'),
(407, 'Economy', 'Gate G7', 'G7'),
(408, 'Business', 'Gate H8', 'H8'),
(409, 'First Class', 'Gate I9', 'I9'),
(410, 'Economy', 'Gate J10', 'J10'),
(411, 'Business', 'Gate K11', 'K11'),
(412, 'First Class', 'Gate L12', 'L12'),
(413, 'Economy', 'Gate F6', 'F6'),
(414, 'Business', 'Gate G7', 'G7'),
(415, 'First Class', 'Gate H8', 'H8'),
(416, 'Economy', 'Gate I9', 'I9'),
(417, 'Business', 'Gate J10', 'J10'),
(418, 'First Class', 'Gate K11', 'K11'),
(419, 'Economy', 'Gate L12', 'L12'),
(420, 'Business', 'Gate M13', 'M13');

-- 5. Insert data into Route table
INSERT INTO dbo.Route (RouteID, Destination_Airport_Code, Origin_Airport_Code, Distance, Duration, Stops)
VALUES
(501, 'XYZ', 'ABC', 1000.00, 120, 1),
(502, 'ABC', 'MNO', 800.00, 90, 0),
(503, 'MNO', 'PQR', 1200.00, 150, 2),
(504, 'PQR', 'LMN', 600.00, 60, 0),
(505, 'LMN', 'GHI', 900.00, 100, 1),
(506, 'GHI', 'DEF', 700.00, 80, 0),
(507, 'DEF', 'JKL', 1100.00, 130, 2),
(508, 'JKL', 'OPQ', 500.00, 50, 0),
(509, 'OPQ', 'RST', 800.00, 90, 1),
(510, 'RST', 'UVW', 1000.00, 110, 2),
(511, 'UVW', 'XYZ', 1200.00, 130, 1),
(512, 'XYZ', 'ABC', 800.00, 90, 0),
(513, 'GHI', 'JKL', 1100.00, 130, 1),
(514, 'JKL', 'DEF', 750.00, 80, 0),
(515, 'DEF', 'STU', 1000.00, 120, 2),
(516, 'STU', 'VWX', 500.00, 50, 0),
(517, 'VWX', 'NOP', 800.00, 90, 1),
(518, 'NOP', 'QRS', 1300.00, 160, 2),
(519, 'QRS', 'TUV', 700.00, 70, 0),
(520, 'TUV', 'XYZ', 1200.00, 140, 1);

-- 6. Insert data into Airport table
INSERT INTO dbo.Airport (AirportCode, Airport_Name, A_Country, A_State, IATA_Code, ICAO_Code)
VALUES
('XYZ', 'Los Angeles International Airport', 'United States', 'California', 'LAX', 'KLAX'),
('ABC', 'Toronto Pearson International Airport', 'Canada', 'Ontario', 'YYZ', 'CYYZ'),
('MNO', 'Melbourne Airport', 'Australia', 'Victoria', 'MEL', 'YMML'),
('PQR', 'Heathrow Airport', 'United Kingdom', 'England', 'LHR', 'EGLL'),
('LMN', 'Guadalajara International Airport', 'Mexico', 'Jalisco', 'GDL', 'MMGL'),
('GHI', 'Changi Airport', 'Singapore', 'Central', 'SIN', 'WSSS'),
('DEF', 'Incheon International Airport', 'South Korea', 'Seoul', 'ICN', 'RKSI'),
('JKL', 'Guarulhos–Governador ', 'Brazil', 'Sao Paulo', 'GRU', 'SBGR'),
('OPQ', 'Chhatrapati Shivaji Maharaj International Airport', 'India', 'Maharashtra', 'BOM', 'VABB'),
('RST', 'Charles de Gaulle Airport', 'France', 'Ile-de-France', 'CDG', 'LFPG'),
('UVW', 'Frankfurt Airport', 'Germany', 'Bavaria', 'FRA', 'EDDF'),
('EFG', 'EFG Airport', 'Japan', 'Tokyo', 'EFG', 'EFGA'),
('HIJ', 'HIJ Airport', 'Canada', 'British Columbia', 'HIJ', 'HIJA'),
('KLM', 'KLM Airport', 'Italy', 'Lombardy', 'KLM', 'KLMA'),
('STU', 'STU Airport', 'Spain', 'Catalonia', 'STU', 'STUA'),
('VWX', 'VWX Airport', 'United States', 'New York', 'VWX', 'VWXA'),
('YZA', 'YZA Airport', 'South Africa', 'Gauteng', 'YZA', 'YZAA'),
('CDE', 'CDE Airport', 'Russia', 'Moscow', 'CDE', 'CDEA'),
('NOP', 'NOP Airport', 'Argentina', 'Buenos Aires', 'NOP', 'NOPA'),
('QRS', 'QRS Airport', 'Saudi Arabia', 'Riyadh', 'QRS', 'QRSA'),
('TUV', 'TUV Airport',  'United Arab Emirates', 'Dubai', 'TUV', 'TUVA');


-- 7. Insert data into Aircraft table
INSERT INTO dbo.Aircraft (AircraftID, Aircraft_Type, Manufacturer, Capacity, Last_Maintenance_Date)
VALUES
(601, 'Boeing 747', 'Boeing', 300, '2022-12-01'),
(602, 'Airbus A320', 'Airbus', 150, '2022-11-15'),
(603, 'Boeing 777', 'Boeing', 250, '2023-01-05'),
(604, 'Airbus A380', 'Airbus', 500, '2023-02-10'),
(605, 'Boeing 737', 'Boeing', 200, '2023-03-15'),
(606, 'Airbus A330', 'Airbus', 300, '2023-04-20'),
(607, 'Boeing 787', 'Boeing', 350, '2023-05-25'),
(608, 'Airbus A350', 'Airbus', 400, '2023-06-30'),
(609, 'Embraer E190', 'Embraer', 100, '2023-08-05'),
(610, 'Bombardier CRJ900', 'Bombardier', 120, '2023-09-10'),
(611, 'McDonnell Douglas MD-11', 'McDonnell Douglas', 280, '2023-10-15'),
(612, 'ATR 72', 'ATR', 80, '2023-11-20'),
(613, 'Airbus A350', 'Airbus', 300, '2022-08-15'),
(614, 'Boeing 767', 'Boeing', 180, '2022-06-20'),
(615, 'Embraer E190', 'Embraer', 100, '2021-12-10'),
(616, 'Bombardier Q400', 'Bombardier', 80, '2021-10-05'),
(617, 'Airbus A330', 'Airbus', 220, '2020-09-30'),
(618, 'Boeing 787', 'Boeing', 280, '2020-07-25'),
(619, 'McDonnell Douglas MD-11', 'McDonnell Douglas', 250, '2019-05-20'),
(620, 'ATR 72', 'ATR', 70, '2019-03-15');

-- 8. Insert data into Maintenance table
INSERT INTO dbo.Maintenance (ScheduleID, AircraftID, Maintenance_Type, Maintenance_Date, Description)
VALUES
(801, 601, 'Regular Checkup', '2023-01-15', 'Routine maintenance check'),
(802, 602, 'Engine Overhaul', '2023-02-20', 'Complete engine inspection and overhaul'),
(803, 603, 'Avionics Upgrade', '2023-03-25', 'Upgrade of aircraft avionics systems'),
(804, 604, 'Interior Refurbishment', '2023-04-30', 'Renovation of interior components'),
(805, 605, 'Regular Checkup', '2023-06-05', 'Routine maintenance check'),
(806, 606, 'Painting', '2023-07-10', 'Exterior painting and detailing'),
(807, 607, 'Engine Inspection', '2023-08-15', 'Thorough inspection of aircraft engines'),
(808, 608, 'Avionics Upgrade', '2023-09-20', 'Upgrade of avionics systems for better navigation'),
(809, 609, 'Regular Checkup', '2023-10-25', 'Routine maintenance check'),
(810, 610, 'Interior Refurbishment', '2023-11-30', 'Renovation of interior components'),
(811, 611, 'Engine Overhaul', '2024-01-05', 'Complete engine inspection and overhaul'),
(812, 612, 'Painting', '2024-02-10', 'Exterior painting and detailing'),
(813, 613, 'Regular Checkup', '2022-09-10', 'Routine maintenance check'),
(814, 614, 'Engine Overhaul', '2022-07-15', 'Complete engine inspection and overhaul'),
(815, 615, 'Avionics Upgrade', '2022-05-20', 'Upgrade of aircraft avionics systems'),
(816, 616, 'Interior Refurbishment', '2022-03-25', 'Renovation of interior components'),
(817, 617, 'Regular Checkup', '2022-01-30', 'Routine maintenance check'),
(818, 618, 'Regular Checkup', '2021-11-05', 'Routine maintenance check'),
(819, 619, 'Engine Overhaul', '2021-09-10', 'Complete engine inspection and overhaul'),
(820, 620, 'Avionics Upgrade', '2021-07-15', 'Upgrade of aircraft avionics systems');


-- 9. Insert data into Flight table
INSERT INTO dbo.Flight (Flight_ID, Departure_Date_Time, Arrival_Date_Time, AircraftID, AirportCode, RouteID)
VALUES
(201, '2023-01-10', '2023-01-12', 601, 'XYZ', 501),
(202, '2023-02-15', '2023-02-18', 602, 'ABC', 502),
(203, '2023-03-20', '2023-03-22', 603, 'MNO', 503),
(204, '2023-04-25', '2023-04-27', 604, 'PQR', 504),
(205, '2023-05-30', '2023-06-01', 605, 'LMN', 505),
(206, '2023-07-05', '2023-07-08', 606, 'GHI', 506),
(207, '2023-08-10', '2023-08-12', 607, 'DEF', 507),
(208, '2023-09-15', '2023-09-17', 608, 'JKL', 508),
(209, '2023-10-20', '2023-10-22', 609, 'OPQ', 509),
(210, '2023-11-25', '2023-11-27', 610, 'RST', 510),
(211, '2023-12-30', '2024-01-02', 611, 'UVW', 511),
(212, '2024-01-05', '2024-01-07', 612, 'XYZ', 512),
(213, '2022-08-15', '2022-08-18', 613, 'EFG', 513),
(214, '2022-07-10', '2022-07-12', 614, 'HIJ', 514),
(215, '2022-06-05', '2022-06-08', 615, 'KLM', 515),
(216, '2022-05-01', '2022-05-04', 616, 'STU', 516),
(217, '2022-04-15', '2022-04-18', 617, 'VWX', 517),
(218, '2022-03-10', '2022-03-12', 618, 'YZA', 518),
(219, '2022-02-05', '2022-02-08', 619, 'CDE', 519),
(220, '2022-01-01', '2022-01-04', 620, 'NOP', 520);

-- 10. Insert data into Crew table
INSERT INTO dbo.Crew (Person_ID, Department, Certification, Salary)
VALUES
(2, 'Pilot', 'Commercial Pilot', 80000.00),
(4, 'Flight Attendant', 'Cabin Crew Certification', 45000.00),
(6, 'Pilot', 'Commercial Pilot', 90000.00),
(8, 'Flight Attendant', 'Cabin Crew Certification', 50000.00),
(10, 'Pilot', 'Commercial Pilot', 85000.00),
(12, 'Flight Attendant', 'Cabin Crew Certification', 47000.00),
(14, 'Pilot', 'Commercial Pilot', 92000.00),
(16, 'Flight Attendant', 'Cabin Crew Certification', 48000.00),
(18, 'Pilot', 'Commercial Pilot', 87000.00),
(20, 'Flight Attendant', 'Cabin Crew Certification', 49000.00),
(22, 'Pilot', 'Commercial Pilot', 88000.00),
(24, 'Flight Attendant', 'Cabin Crew Certification', 51000.00),
(25, 'Pilot', 'Commercial Pilot', 85000.00),
(26, 'Flight Attendant', 'Cabin Crew Certification', 48000.00),
(27, 'Pilot', 'Commercial Pilot', 92000.00),
(28, 'Flight Attendant', 'Cabin Crew Certification', 52000.00),
(29, 'Pilot', 'Commercial Pilot', 87000.00),
(30, 'Flight Attendant', 'Cabin Crew Certification', 49000.00),
(31, 'Pilot', 'Commercial Pilot', 94000.00),
(32, 'Flight Attendant', 'Cabin Crew Certification', 55000.00);

-- 11. Insert data into Flight_Crew_Assignment table
INSERT INTO dbo.Flight_Crew_Assignment (FLIGHT_CREW_ASGN_ID, Crew_Count, Flight_ID, C_Person_ID)
VALUES
(701, 2, 201, 2),
(702, 3, 202, 4),
(703, 2, 203, 6),
(704, 3, 204, 8),
(705, 2, 205, 10),
(706, 3, 206, 12),
(707, 2, 207, 14),
(708, 3, 208, 16),
(709, 2, 209, 18),
(710, 3, 210, 20),
(711, 2, 211, 22),
(712, 3, 212, 24),
(713, 2, 206, 12),
(714, 3, 213, 27),
(715, 2, 214, 28),
(716, 3, 215, 29),
(717, 2, 216, 30),
(718, 3, 217, 31),
(719, 2, 218, 32),
(720, 3, 219, 25);

-- 12. Insert data into Booking table
INSERT INTO dbo.Booking (BookingID, P_Person_ID, Flight_ID, PaymentID, Ticket_ID, Booking_Date)
VALUES
(101, 1, 201, 301, 401, '2023-01-01'),
(102, 2, 202, 302, 402, '2023-02-01'),
(103, 3, 203, 303, 403, '2023-03-01'),
(104, 4, 204, 304, 404, '2023-04-01'),
(105, 5, 205, 305, 405, '2023-05-01'),
(106, 6, 206, 306, 406, '2023-06-01'),
(107, 7, 207, 307, 407, '2023-07-01'),
(108, 8, 208, 308, 408, '2023-08-01'),
(109, 9, 209, 309, 409, '2023-09-01'),
(110, 10, 210, 310, 410, '2023-10-01'),
(111, 11, 211, 311, 411, '2023-11-01'),
(112, 12, 212, 312, 412, '2023-12-01'),
(113, 7, 213, 313, 413, '2022-08-01'),
(114, 8, 214, 314, 414, '2022-07-01'),
(115, 9, 215, 315, 415, '2022-06-01'),
(116, 10, 216, 316, 416, '2022-05-01'),
(117, 11, 217, 317, 417, '2022-04-01'),
(118, 12, 218, 318, 418, '2022-03-01'),
(119, 13, 219, 319, 419, '2022-02-01'),
(120, 14, 220, 320, 420, '2022-01-01');


-- 13. Insert data into Route_Leg table
INSERT INTO dbo.Route_Leg (Leg_Sequence, AirportCode, RouteID, Route_Leg_ID)
VALUES
(1, 'XYZ', 501, 1),
(2, 'ABC', 501, 2),
(1, 'ABC', 502, 3),
(2, 'MNO', 502, 4),
(1, 'MNO', 503, 5),
(2, 'PQR', 503, 6),
(1, 'PQR', 504, 7),
(2, 'LMN', 504, 8),
(1, 'LMN', 505, 9),
(2, 'GHI', 505, 10),
(1, 'GHI', 506, 11),
(2, 'DEF', 506, 12),
(1, 'JKL', 513, 13),
(2, 'DEF', 513, 14),
(1, 'DEF', 514, 15),
(2, 'STU', 514, 16),
(1, 'VWX', 515, 17),
(2, 'NOP', 515, 18),
(1, 'NOP', 516, 19),
(2, 'QRS', 516, 20),
(1, 'QRS', 517, 21),
(2, 'TUV', 517, 22),
(1, 'TUV', 518, 23),
(2, 'XYZ', 518, 24);
-- Add more rows as needed