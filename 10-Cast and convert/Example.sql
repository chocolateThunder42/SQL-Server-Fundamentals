SELECT GETDATE(), CONVERT(VARCHAR(10),GETDATE(),111)

--Cast a decimal to an integer and truncate the decimals
SELECT  CAST(10.6496 AS int) as [Truncated value]