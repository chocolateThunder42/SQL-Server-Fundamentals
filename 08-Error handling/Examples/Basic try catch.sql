BEGIN TRY
  DECLARE @x int
  SELECT @x = 1/0
  PRINT 'Not reached'
END TRY
BEGIN CATCH
  PRINT 'This is the error: ' + error_message() + ' pspspsps'
END CATCH