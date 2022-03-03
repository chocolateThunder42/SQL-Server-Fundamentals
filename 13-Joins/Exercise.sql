/********

  1. Create a query that joins the tables you created previously together e.g. Actors to Movies
     Create a few views representing sets of data contained in the newly normalised tables.

********/

SELECT m.MovieName, a.FirstName, a.LastName, a.DateOfBirth
FROM Movies AS m INNER JOIN Actors AS a
ON m.MovieID = a.MovieId;