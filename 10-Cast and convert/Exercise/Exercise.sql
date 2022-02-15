/********

1. Create a query that will select the 
current date in the format of “dd-mm-yyyy”

*******/

SELECT CONVERT(nvarchar, GETDATE(), 105)