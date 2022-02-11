/********

1. Create views selecting specific fields 
for all the other tables in the MoviesDB database.

*******/

CREATE VIEW vActors
AS SELECT FirstName, LastName, DateOfBirth FROM Actors
GO
