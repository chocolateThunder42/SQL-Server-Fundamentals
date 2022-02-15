USE master;

SELECT FirstName FROM Actors WHERE ActorID = 3;
BEGIN TRANSACTION myTransaction;
UPDATE Actors set FirstName = 'Adam' WHERE ActorID = 3;
SELECT FirstName FROM Actors WHERE ActorID = 3;
COMMIT;
SELECT FirstName FROM Actors WHERE ActorID = 3;