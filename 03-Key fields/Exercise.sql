/********

1. Specify primary keys for each of the 
tables created for the MovieDB

********/

ALTER TABLE Actors
  ADD CONSTRAINT ActorID PRIMARY KEY;
GO
ALTER TABLE Directors
  ADD CONSTRAINT DirectorID PRIMARY KEY;
GO
ALTER TABLE Movies
  ADD CONSTRAINT MovieID PRIMARY KEY;
GO
ALTER TABLE Producers
  ADD CONSTRAINT ProducerID PRIMARY KEY;
GO
ALTER TABLE Writers
  ADD CONSTRAINT WriterID PRIMARY KEY;
GO

/********

2. Specify foreign key constraints for each of the 
table relationships created for the MovieDB

*********/

ALTER TABLE Actors
  ADD CONSTRAINT MovieID FOREIGN KEY REFERENCES Movies(MovieID);
GO
ALTER TABLE Directors
  ADD CONSTRAINT MovieID FOREIGN KEY REFERENCES Movies(MovieID);
GO
ALTER TABLE Producers
  ADD CONSTRAINT MovieID FOREIGN KEY REFERENCES Movies(MovieID);
GO
ALTER TABLE Writers
  ADD CONSTRAINT MovieID FOREIGN KEY REFERENCES Movies(MovieID);
GO