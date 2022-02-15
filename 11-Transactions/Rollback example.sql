USE master;

SELECT * FROM Actors WHERE ActorID = 3;
BEGIN TRANSACTION myTransaction;
UPDATE Actors set FirstName = 'Adam' WHERE ActorID = 3;
SELECT * FROM Actors WHERE ActorID = 3;
ROLLBACK;
SELECT * FROM Actors WHERE ActorID = 3;