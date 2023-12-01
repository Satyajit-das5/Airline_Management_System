alter table dbo.Person add Username varchar(50), [Password] varbinary(400)
go

create MASTER KEY
ENCRYPTION BY PASSWORD = 'p4Project';
-- drop master key
-- very that master key exists
SELECT name KeyName,
symmetric_key_id KeyID,
key_length KeyLength,
algorithm_desc KeyAlgorithm
FROM sys.symmetric_keys;
go
--Create a self signed certificate and name it PersonPass
CREATE CERTIFICATE PersonPass
WITH SUBJECT = 'Person Password';
GO


CREATE SYMMETRIC KEY PersonPass_SM
WITH ALGORITHM = AES_256
ENCRYPTION BY CERTIFICATE PersonPass;
GO

OPEN SYMMETRIC KEY PersonPass_SM
DECRYPTION BY CERTIFICATE PersonPass;

UPDATE dbo.Person set [Username] = Last_Name
, [Password] = EncryptByKey(Key_GUID('PersonPass_SM'), convert(varbinary,'Pass123') )
GO

OPEN SYMMETRIC KEY PersonPass_SM
DECRYPTION BY CERTIFICATE PersonPass;
SELECT *,
CONVERT(varchar, DecryptByKey([Password]))
AS 'Decrypted password'
FROM dbo.Person;
GO
