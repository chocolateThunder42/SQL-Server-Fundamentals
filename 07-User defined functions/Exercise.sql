/********

1. UDF to get the Birth Date for an actor 
in a full format i.e. 10 January, 1980

********/

CREATE FUNCTION birthDateOActor (@ActorID int)
RETURNS nvarchar AS BEGIN
  DECLARE @Age nvarchar

  SELECT @Age = FORMAT(DateOfBirth, 'dd MMMM, yyyy') FROM Actors WHERE ActorID = @ActorID

  RETURN @Age
END
GO

-- SELECT * FROM birthDateOfActor(3)

/********

2. UDF to display the total number of crew 
members based on type for a MovieID

********/

CREATE FUNCTION totalMovieCrewCount(@MovieID int)
RETURNS int AS BEGIN
  DECLARE @Count int

  SELECT @Count = COUNT(ActorID) FROM Actors WHERE MovieID = @MovieID 
  SELECT @Count += COUNT(DirectorID) FROM Directors WHERE MovieID = @MovieID
  SELECT @Count += COUNT(WriterID) FROM Writers WHERE MovieID = @MovieID
  SELECT @Count += COUNT(ProducerID) FROM Producers WHERE MovieID = @MovieID

  RETURN @Count
END
GO

/********

3. UDF to bring back a table that shows all 
the Actors for a Movie based on MovieID

********/

CREATE FUNCTION selectActorsInMovie(@MovieID int)
RETURNS TABLE AS
  RETURN SELECT ActorID, FirstName, LastName, DateOfBirth, MovieID FROM Actors WHERE MovieID = @MovieID
GO