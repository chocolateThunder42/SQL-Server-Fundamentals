/********

1. Create a new stored procedure that has 
a transaction for inserting data. Add error 
trapping into it and roll back the transaction 
in the catch area.

********/

CREATE PROCEDURE insertActor
@FirstName varchar(120),
@LastName varchar(120),
@DateOfBirth date,
@MovieID int = NULL
AS
BEGIN
  BEGIN TRANSACTION
    BEGIN TRY
      INSERT INTO Actors (FirstName, LastName, DateOfBirth, MovieID)
	  VALUES (@FirstName, @LastName, @DateOfBirth, @MovieID)
	END TRY
	BEGIN CATCH
	  PRINT 'Error: ' + error_message()
	  ROLLBACK TRANSACTION
	END CATCH
END;
GO