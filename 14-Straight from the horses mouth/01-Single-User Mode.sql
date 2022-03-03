USE master;
GO

ALTER DATABASE MovieDB
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;

/**************

  The above statement will prevent other users
  (except the user currently executing this script) 
  from updating the DB. It's commonly used for 
  maintenance.

  https://docs.microsoft.com/en-us/sql/relational-databases/databases/set-a-database-to-single-user-mode?view=sql-server-ver15
  https://blog.sqlauthority.com/2010/02/11/sql-server-alter-database-dbname-set-single_user-with-rollback-immediate/

***************/

UPDATE Actors SET DateOfBirth = '1864-09-02' WHERE FirstName = 'Keanu' AND LastName = 'Reeves';
GO

SELECT FirstName, LastName, DateOfBirth FROM Actors WHERE FirstName = 'Keanu' AND LastName = 'Reeves';
GO