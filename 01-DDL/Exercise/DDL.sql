USE master;

/********

1. Create a table that will host the first name, last name and 
date of birth of an actor. The table requires an identity 
column that can be used as a primary key as well as a column 
that can be used to reference the movie the actor worked on. 
Call this table “Actors”.

*******/

CREATE TABLE Actors
( 
  ActorID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName varchar(120) NULL,
  LastName varchar(120) NULL,
  DateOfBirth date NULL
);
GO

/********

2. Change the Movies table and add a field that can be used to 
store a movie poster in. A movie poster must be saved in binary 
format.

*******/

ALTER TABLE Movies 
  ADD Poster binary NULL
GO

/********

3. Change the Actors table to add a field that can be used to 
store the actors image in. This image must be saved in binary 
format.

*******/

ALTER TABLE Actors
  Add [Image] binary NULL
GO

/********

4. Change the Actors table to add two additional fields that 
will contain the place of birth for an actor as well as the 
country of birth.

*******/


ALTER TABLE Actors
  Add PlaceOfBirth varchar(120) NULL, CountryOfBirth varchar(120) NULL
GO

/********

5. Create a table that will host the first name, last name, 
date of birth, place of birth, country of birth and image of 
a film director. The table requires an identity column that 
can be used as a primary key as well as a column that can be 
used to reference the movie the director worked on. 
Call this table “Directors”.

*******/

CREATE TABLE Directors
(
  DirectorID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName varchar(120) NULL,
  LastName varchar(120) NULL,
  DateOfBirth date NULL,
  PlaceOfBirth varchar(120) NULL,
  CountryOfBirth varchar(120) NULL,
  [Image] binary NULL
)
GO

/********

6. Change the Directors table to make sure that when data is 
inserted into this table, the date of birth is smaller than 
today’s date.

*******/

ALTER TABLE Directors
  ADD CONSTRAINT check_DirectorDateOfBirth CHECK(DateOfBirth < GetDate())
GO

/********

7. Create a table that will host the first name, last name, 
date of birth, age, place of birth, country of birth and image 
of a film writer. The table requires an identity column that can be 
used as a primary key as well as a column that can be used to 
reference the movie the writer worked on. Call this table “Writers”.

*******/

CREATE TABLE Writers
(
  WriterID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName varchar(120) NULL,
  LastName varchar(120) NULL,
  DateOfBirth date NULL,
  PlaceOfBirth varchar(120) NULL,
  CountryOfBirth varchar(120) NULL,
  [Image] binary NULL
)
GO

/********

8. Change the Writers table to make sure that when data is inserted 
into this table, the date of birth is smaller than today’s date.

*******/

ALTER TABLE Writers
  ADD CONSTRAINT check_WriterDateOfBirth CHECK(DateOfBirth < GetDate())
GO

/********

9. Create a table that will host the first name, last name, date of 
birth, age, place of birth, country of birth and image of a film 
producer. The table requires an identity column that can be used 
as a primary key as well as a column that can be used to reference 
the movie the producer produced. Call this table “Producers”.

*******/

CREATE TABLE Producers
(
  ProducerID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName varchar(120) NULL,
  LastName varchar(120) NULL,
  DateOfBirth date NULL,
  PlaceOfBirth varchar(120) NULL,
  CountryOfBirth varchar(120) NULL,
  [Image] binary NULL
)
GO

/********

10. Change the Producers table to make sure that when data is inserted 
into this table, the date of birth is smaller than today’s date.

*******/

ALTER TABLE Writers
  ADD CONSTRAINT check_ProducerDateOfBirth CHECK(DateOfBirth < GetDate())
GO

/********

11. Delete the age column from the Writers tables.

*******/

ALTER TABLE Writers
  DROP COLUMN Age
GO

/********

12. Drop the Producers table and recreate it without the age column

*******/

DROP TABLE Producers
Go
CREATE TABLE Producers
(
  ProducerID int IDENTITY(1,1) PRIMARY KEY NOT NULL,
  FirstName varchar(120) NULL,
  LastName varchar(120) NULL,
  Age int NULL,
  DateOfBirth date NULL,
  PlaceOfBirth varchar(120) NULL,
  CountryOfBirth varchar(120) NULL,
  [Image] binary NULL
)
GO

/********

13. Drop the database (Do not save this in your script file)

*******/

