USE master;  
GO

/**************

  Reports information about a specified 
  database or all databases.

***************/

-- Returning information about all databases
sp_helpdb;
GO

-- Returning information about a single database
sp_helpdb tempdb;