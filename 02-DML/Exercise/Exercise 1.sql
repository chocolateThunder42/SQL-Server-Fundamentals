USE master;

/********

Create an insert statement that will insert the 
following data into the Actors table

Movie id 	First name 	Last name 	Date of birth
1 	Bill 	Murray 	1950-09-21
1 	Dan 	Aykroyd 	1952-07-01
1 	Sigourney 	Weaver 	1949-10-08
1 	Harold 	Ramis 	1944-11-21
1 	Rick 	Moranis 	1953-04-18
1 	Ernie 	Hudson 	1945-12-17
2 	Kevin 	Costner 	1955-01-18
2 	Mary 	McDonnell 	1952-04-28
3 	Sigourney 	Weaver 	1949-10-08
3 	Michael 	Biehn 	1956-07-31
3 	Paul 	Reiser 	1957-03-30
3 	Lance 	Henriksen 	1940-05-05
3 	Bill 	Paxton 	1955-05-17
4 	Harrison 	Ford 	1942-07-13
4 	Rutger 	Hauer 	1944-01-23
4 	Sean 	Young 	1959-11-20
4 	Daryl 	Hannah 	1960-12-03
5 	Noomi 	Rapace 	1979-12-28
5 	Michael 	Fassbender 	1977-04-02
5 	Charlize 	Theron 	1975-08-07
5 	Idris 	Elba 	1972-09-06
5 	Guy 	Pearce 	1967-10-05
6 	Tom 	Skerritt 	1933-08-25
6 	Sigourney 	Weaver 	1949-10-08
6 	Veronica 	Cartwright 	1949-04-20
6 	John 	Hurt 	1940-01-22
6 	Ian 	Holm 	1931-09-12
6 	Yaphet 	Kotto 	1939-11-15
7 	Bill 	Murray 	1950-09-21
7 	Andie 	MacDowell 	1958-04-21
7 	Chris 	Elliott 	1960-05-31
7 	Stephen 	Tobolowsky 	1951-05-30
7 	Harold 	Ramis 	1944-11-21
8 	Keanu 	Reeves 	1964-09-02
8 	Laurence 	Fishburne 	1961-07-30
8 	Carrie-Anne 	Moss 	1967-08-21
8 	Hugo 	Weaving 	1960-04-04
8 	Joe 	Pantoliano 	1951-09-12
8 	Matt 	Doran 	1976-03-30

*******/


INSERT INTO Actors (MovieID, FirstName, LastName, DateOfBirth)
VALUES
(1, 'Bill', 'Murray', '1950-09-21'),
(1, 'Dan', 'Aykroyd', '1952-07-01'),
(1, 'Sigourney', 'Weaver', '1949-10-08'),
(1, 'Harold', 'Ramis', '1944-11-21'),
(1, 'Rick', 'Moranis', '1953-04-18'),
(1, 'Ernie', 'Hudson', '1945-12-17'),
(2, 'Kevin', 'Costner', '1955-01-18'),
(2, 'Mary', 'McDonnell', '1952-04-28'),
(3, 'Sigourney', 'Weaver', '1949-10-08'),
(3, 'Michael', 'Biehn', '1956-07-31'),
(3, 'Paul', 'Reiser', '1957-03-30'),
(3, 'Lance', 'Henriksen', '1940-05-05'),
(3, 'Bill', 'Paxton', '1955-05-17'),
(4, 'Harrison', 'Ford', '1942-07-13'),
(4, 'Rutger', 'Hauer', '1944-01-23'),
(4, 'Sean', 'Young', '1959-11-20'),
(4, 'Daryl', 'Hannah', '1960-12-03'),
(5, 'Noomi', 'Rapace', '1979-12-28'),
(5, 'Michael', 'Fassbender', '1977-04-02'),
(5, 'Charlize', 'Theron', '1975-08-07'),
(5, 'Idris', 'Elba', '1972-09-06'),
(5, 'Guy', 'Pearce', '1967-10-05'),
(6, 'Tom', 'Skerritt', '1933-08-25'),
(6, 'Sigourney', 'Weaver', '1949-10-08'),
(6, 'Veronica', 'Cartwright', '1949-04-20'),
(6, 'John', 'Hurt', '1940-01-22'),
(6, 'Ian', 'Holm', '1931-09-12'),
(6, 'Yaphet', 'Kotto', '1939-11-15'),
(7, 'Bill', 'Murray', '1950-09-21'),
(7, 'Andie', 'MacDowell', '1958-04-21'),
(7, 'Chris', 'Elliott', '1960-05-31'),
(7, 'Stephen', 'Tobolowsky', '1951-05-30'),
(7, 'Harold', 'Ramis', '1944-11-21'),
(8, 'Keanu', 'Reeves', '1964-09-02'),
(8, 'Laurence', 'Fishburne', '1961-07-30'),
(8, 'Carrie-Anne', 'Moss', '1967-08-21'),
(8, 'Hugo', 'Weaving', '1960-04-04'),
(8, 'Joe', 'Pantoliano', '1951-09-12'),
(8, 'Matt', 'Doran', '1976-03-30')