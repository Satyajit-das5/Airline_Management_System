ALTER TABLE dbo.Person
ADD Age AS dbo.CalculateAge(Date_of_Birth);

Select * from Person

ALTER TABLE dbo.Person
ADD Full_Name AS CONCAT(First_Name, ' ', Last_Name);

Select * from Person

ALTER TABLE dbo.Person
ADD Email_Domain AS RIGHT(Email, CHARINDEX('@', REVERSE(Email)) - 1);

Select * from Person

ALTER TABLE dbo.Booking
ADD Booking_Year AS YEAR(Booking_Date);

Select * from Booking

ALTER TABLE dbo.Flight
ADD Flight_Duration_Hours AS DATEDIFF(HOUR, Departure_Date_Time, Arrival_Date_Time);

Select * from Flight

ALTER TABLE dbo.Crew
ADD Monthly_Salary_USD AS Salary / 12;

Select * from Crew