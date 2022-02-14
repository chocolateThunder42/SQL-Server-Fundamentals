/********

1. Add Error Handling to your stored 
procedures that you have created.

*******/

CREATE PROCEDURE insertActor
@FirstName varchar(120),
@LastName varchar(120),
@DateOfBirth date,
@MovieID int = NULL
AS
  BEGIN TRY
    INSERT INTO Actors (FirstName, LastName, DateOfBirth, MovieID)
    VALUES (@FirstName, @LastName, @DateOfBirth, @MovieID)
  END TRY
  BEGIN CATCH
    PRINT 'ERROR: ' + error_message()
  END CATCH
GO