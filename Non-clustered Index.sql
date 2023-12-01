/* 1.
Description: The nonclustered index IX_Flight_Departure_Date_Time is created on the Departure_Date_Time column of the Flight table.
Purpose:

This index is designed to optimize queries that involve sorting, filtering, or searching based on the Departure_Date_Time of flights.
It enhances the performance of queries that retrieve flight information based on the departure date and time.
View Details:

The index is nonclustered, meaning that the physical order of the rows in the index does not match the logical order of the data in the table.
The index type is specified as nonclustered (type_desc).
*/ 

CREATE NONCLUSTERED INDEX IX_Flight_Departure_Date_Time
ON dbo.Flight (Departure_Date_Time);

-- View details for IX_Flight_Departure_Date_Time
SELECT 
    index_name = i.name,
    table_name = OBJECT_NAME(i.object_id),
    column_name = c.name,
    index_type = i.type_desc
FROM 
    sys.indexes i
INNER JOIN 
    sys.index_columns ic ON i.index_id = ic.index_id AND i.object_id = ic.object_id
INNER JOIN 
    sys.columns c ON ic.column_id = c.column_id AND ic.object_id = c.object_id
WHERE 
    i.name = 'IX_Flight_Departure_Date_Time' AND
    OBJECT_NAME(i.object_id) = 'Flight';


/* 2.
Description: The nonclustered index IX_Booking_Booking_Date is created on the Booking_Date column of the Booking table.
Purpose:

This index is tailored to enhance the efficiency of queries involving sorting, filtering, or searching based on the Booking_Date of bookings.
It improves the performance of queries that retrieve booking details using the booking date as a criterion.
View Details:

The index is nonclustered, indicating that the physical order of the index does not dictate the order of the data in the table.
The index type is specified as nonclustered (type_desc).
*/ 

CREATE NONCLUSTERED INDEX IX_Booking_Booking_Date
ON dbo.Booking (Booking_Date);

-- View details for IX_Booking_Booking_Date
SELECT 
    index_name = i.name,
    table_name = OBJECT_NAME(i.object_id),
    column_name = c.name,
    index_type = i.type_desc
FROM 
    sys.indexes i
INNER JOIN 
    sys.index_columns ic ON i.index_id = ic.index_id AND i.object_id = ic.object_id
INNER JOIN 
    sys.columns c ON ic.column_id = c.column_id AND ic.object_id = c.object_id
WHERE 
    i.name = 'IX_Booking_Booking_Date' AND
    OBJECT_NAME(i.object_id) = 'Booking';


/* 3.
Description: The nonclustered index IX_Person_Email is established on the Email column of the Person table.
Purpose:

This index is crafted to optimize queries that involve sorting, filtering, or searching based on the email addresses of individuals.
It enhances the performance of queries that retrieve person details using email as a key identifier.
View Details:

The index is nonclustered, signifying that the physical order of the index does not mirror the logical order of the data in the table.
The index type is specified as nonclustered (type_desc).
*/
CREATE NONCLUSTERED INDEX IX_Person_Email
ON dbo.Person (Email);


-- View details for IX_Person_Email
SELECT 
    index_name = i.name,
    table_name = OBJECT_NAME(i.object_id),
    column_name = c.name,
    index_type = i.type_desc
FROM 
    sys.indexes i
INNER JOIN 
    sys.index_columns ic ON i.index_id = ic.index_id AND i.object_id = ic.object_id
INNER JOIN 
    sys.columns c ON ic.column_id = c.column_id AND ic.object_id = c.object_id
WHERE 
    i.name = 'IX_Person_Email' AND
    OBJECT_NAME(i.object_id) = 'Person';