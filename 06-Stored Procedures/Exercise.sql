/********

1. Create 4 stored procedures that perform batches 
of tasks on the tables you created previously. e.g. 
Create stored procedures to insert, update and delete 
data in the tables you’ve created and also to query 
your tables in a unique way.

********/

CREATE PROCEDURE insertActor
@FirstName varchar(120),
@LastName varchar(120),
@DateOfBirth date,
@MovieID int = NULL
AS
  INSERT INTO Actors (FirstName, LastName, DateOfBirth, MovieID)
  VALUES (@FirstName, @LastName, @DateOfBirth, @MovieID)
GO

CREATE PROCEDURE updateActor
@ActorID int,
@FirstName varchar(120) = NULL,
@LastName varchar(120) = NULL,
@DateOfBirth date = NULL,
@MovieID int = NULL
AS
  IF @FirstName != NULL 
    UPDATE Actors SET FirstName = @FirstName WHERE ActorID = @ActorID
  IF @LastName != NULL 
    UPDATE Actors SET LastName = @LastName WHERE ActorID = @ActorID
  IF @DateOfBirth != NULL 
    UPDATE Actors SET DateOfBirth = @DateOfBirth WHERE ActorID = @ActorID
  IF @MovieID != NULL 
    UPDATE Actors SET MovieID = @MovieID WHERE ActorID = @ActorID
GO

CREATE PROCEDURE deleteActor
@ActorID int = NULL,
@FirstName varchar(120) = NULL,
@LastName varchar(120) NULL
AS
  IF @ActorID = NULL
    DELETE FROM Actors WHERE FirstName = @FirstName AND LastName = @LastName
  ELSE
    DELETE FROM Actors WHERE ActorID = @ActorID
GO

CREATE PROCEDURE getActorByName
@FirstName varchar(120) = NULL,
@LastName varchar(120) = NULL
AS
  SELECT FirstName, LastName, DateOfBirth, CountryOfBirth FROM Actors WHERE FirstName = @FirstName OR LastName = @LastName
GO