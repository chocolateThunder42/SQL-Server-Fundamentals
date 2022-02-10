USE master;

/********

1. Update the Actors table and set the birth 
place of each record to �Sydney� and the country 
of birth of each record to �Australia�

*******/

UPDATE Actors
SET PlaceOfBirth='Sydney', CountryOfBirth='Australia'
GO

/********

2. Change the Actors table to make the place 
and country of birth required.

*******/

ALTER TABLE Actors
  ALTER COLUMN PlaceOfBirth varchar(120) NOT NULL;
ALTER TABLE Actors
  ALTER COLUMN CountryOfBirth varchar(120) NOT NULL;
GO

/********

3. Create a new table with the Name of ActorUpdates 
with the following columns, MovieID, FirstName, 
LastName, BirthDate, BirthPlace and CountryOfBirth

*******/

/*CREATE TABLE ActorUpdates
(
  MovieID int FOREIGN KEY(MovieID) REFERENCES Movies(MovieID),
  FirstName varchar(120) NULL,
  LastName varchar(120) NULL,
  BirthDate date NULL,
  BirthPlace varchar(120) NULL,
  CountryOfBirth varchar(120) NOT NULL
);
GO*/

/********

4. Create an insert statement that will add the 
following values to the ActorsUpdates table

Movie id 	First name 	Last name 	Date of birth 	Place of birth 	Country of birth
1 	Bill 	Murray 	1950-09-21 	Chicago 	USA
1 	Dan 	Aykroyd 	1952-07-01 	Ontario 	Canada
1 	Sigourney 	Weaver 	1949-10-08 	New York 	USA
1 	Harold 	Ramis 	1944-11-21 	Chicago 	USA
1 	Rick 	Moranis 	1953-04-18 	Ontario 	Canada
1 	Ernie 	Hudson 	1945-12-17 	Michigan 	USA
2 	Kevin 	Costner 	1955-01-18 	California 	USA
2 	Mary 	McDonnell 	1952-04-28 	Pennsylvania 	USA
3 	Sigourney 	Weaver 	1949-10-08 	New York 	USA
3 	Michael 	Biehn 	1956-07-31 	Alabama 	USA
3 	Paul 	Reiser 	1957-03-30 	New York 	USA
3 	Lance 	Henriksen 	1940-05-05 	New York 	USA
3 	Bill 	Paxton 	1955-05-17 	Texas 	USA
4 	Harrison 	Ford 	1942-07-13 	Chicago 	USA
4 	Rutger 	Hauer 	1944-01-23 	Utrecht 	Netherlands
4 	Sean 	Young 	1959-11-20 	Kentucky 	USA
4 	Daryl 	Hannah 	1960-12-03 	Chicago 	USA
5 	Noomi 	Rapace 	1979-12-28 	Hudiksvall 	Sweden
5 	Michael 	Fassbender 	1977-04-02 	Heidelberg 	West Germany
5 	Charlize 	Theron 	1975-08-07 	Benoni 	South Africa
5 	Idris 	Elba 	1972-09-06 	London 	UK
5 	Guy 	Pearce 	1967-10-05 	Cambridgeshire 	UK
6 	Tom 	Skerritt 	1933-08-25 	Michigan 	USA
6 	Sigourney 	Weaver 	1949-10-08 	New York 	USA
6 	Veronica 	Cartwright 	1949-04-20 	Bristol 	UK
6 	John 	Hurt 	1940-01-22 	Derbyshire 	UK
6 	Ian 	Holm 	1931-09-12 	Essex 	UK
6 	Yaphet 	Kotto 	1939-11-15 	New York 	USA
7 	Bill 	Murray 	1950-09-21 	Chicago 	USA
7 	Andie 	MacDowell 	1958-04-21 	South Carolina 	USA
7 	Chris 	Elliott 	1960-05-31 	New York 	USA
7 	Stephen 	Tobolowsky 	1951-05-30 	Dallas 	USA
7 	Harold 	Ramis 	1944-11-21 	Chicago 	USA
8 	Keanu 	Reeves 	1964-09-02 	Beirut 	Lebanon
8 	Laurence 	Fishburne 	1961-07-30 	Georgia 	USA
8 	Carrie-Anne 	Moss 	1967-08-21 	Vancouver 	Canada
8 	Hugo 	Weaving 	1960-04-04 	Ibadan 	Nigeria
8 	Joe 	Pantoliano 	1951-09-12 	New Jersey 	USA
8 	Matt 	Doran 	1976-03-30 	Sidney 	Australia

*******/

INSERT INTO ActorUpdates (MovieID, FirstName, LastName, BirthDate, BirthPlace, CountryOfBirth)
VALUES 
(1,	'Bill', 'Murray', '1950-09-21', 'Chicago', 'USA'),
(1,	'Dan', 'Aykroyd', '1952-07-01', 'Ontario', 'Canada'),
(1,	'Sigourney', 'Weaver', '1949-10-08', 'New York', 'USA'),
(1,	'Harold', 'Ramis', '1944-11-21', 'Chicago', 'USA'),
(1,	'Rick', 'Moranis', '1953-04-18', 'Ontario', 'Canada'),
(1,	'Ernie', 'Hudson', '1945-12-17', 'Michigan', 'USA'),
(2,	'Kevin', 'Costner', '1955-01-18', 'California', 'USA'),
(2,	'Mary', 'McDonnell', '1952-04-28', 'Pennsylvania', 'USA'),
(3,	'Sigourney', 'Weaver', '1949-10-08', 'New York', 'USA'),
(3,	'Michael', 'Biehn', '1956-07-31', 'Alabama', 'USA'),
(3,	'Paul', 'Reiser', '1957-03-30', 'New York', 'USA'),
(3,	'Lance', 'Henriksen', '1940-05-05', 'New York', 'USA'),
(3,	'Bill', 'Paxton', '1955-05-17', 'Texas', 'USA'),
(4,	'Harrison', 'Ford', '1942-07-13', 'Chicago', 'USA'),
(4,	'Rutger', 'Hauer', '1944-01-23', 'Utrecht', 'Netherlands'),
(4,	'Sean', 'Young', '1959-11-20', 'Kentucky', 'USA'),
(4,	'Daryl', 'Hannah', '1960-12-03', 'Chicago', 'USA'),
(5,	'Noomi', 'Rapace', '1979-12-28', 'Hudiksvall', 'Sweden'),
(5,	'Michael', 'Fassbender', '1977-04-02', 'Heidelberg', 'West Germany'),
(5,	'Charlize', 'Theron', '1975-08-07', 'Benoni', 'South Africa'),
(5,	'Idris', 'Elba', '1972-09-06', 'London', 'UK'),
(5,	'Guy', 'Pearce', '1967-10-05', 'Cambridgeshire', 'UK'),
(6,	'Tom', 'Skerritt', '1933-08-25', 'Michigan', 'USA'),
(6,	'Sigourney', 'Weaver', '1949-10-08', 'New York', 'USA'),
(6,	'Veronica', 'Cartwright', '1949-04-20', 'Bristol', 'UK'),
(6,	'John', 'Hurt', '1940-01-22', 'Derbyshire', 'UK'),
(6,	'Ian', 'Holm', '1931-09-12', 'Essex', 'UK'),
(6,	'Yaphet', 'Kotto', '1939-11-15', 'New York', 'USA'),
(7,	'Bill', 'Murray', '1950-09-21', 'Chicago', 'USA'),
(7,	'Andie', 'MacDowell', '1958-04-21', 'South Carolina', 'USA'),
(7,	'Chris', 'Elliott', '1960-05-31', 'New York', 'USA'),
(7,	'Stephen', 'Tobolowsky', '1951-05-30', 'Dallas', 'USA'),
(7,	'Harold', 'Ramis', '1944-11-21', 'Chicago', 'USA'),
(8,	'Keanu', 'Reeves', '1964-09-02', 'Beirut', 'Lebanon'),
(8,	'Laurence', 'Fishburne', '1961-07-30', 'Georgia', 'USA'),
(8,	'Carrie-Anne', 'Moss', '1967-08-21', 'Vancouver', 'Canada'),
(8,	'Hugo', 'Weaving', '1960-04-04', 'Ibadan', 'Nigeria'), /* GTFO */
(8,	'Joe', 'Pantoliano', '1951-09-12', 'New Jersey', 'USA'),
(8,	'Matt', 'Doran', '1976-03-30', 'Sidney', 'Australia')