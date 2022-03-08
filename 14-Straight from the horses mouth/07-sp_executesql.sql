USE master;
GO

/**************

  Executes a Transact-SQL statement or batch 
  that can be reused many times, or one that 
  has been built dynamically.

***************/

sp_executesql
  N'SELECT MovieName, Genre FROM Movies WHERE MovieName = @MovieTitle',
  N'@MovieTitle VARCHAR(10)',
  @MovieTitle = 'The Matrix'