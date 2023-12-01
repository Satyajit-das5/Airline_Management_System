

-- create the partition function with the desired range values
CREATE PARTITION FUNCTION FlightPartitionFunction (DATETIME)
AS RANGE LEFT FOR VALUES 
('2023-01-01', '2023-07-01', '2024-01-01');
