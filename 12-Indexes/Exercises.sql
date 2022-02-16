/********

1. Add indexes to your tables, but only 
add indexes to the columns that are used 
in your WHERE clauses.

********/

CREATE INDEX actorIndex ON Actors (FirstName, LastName, DateOfBirth);
CREATE INDEX directorIndex ON Directors (FirstName, LastName, DateOfBirth, PlaceOfBirth, CountryOfBirth);
CREATE INDEX writerIndex ON Writers (FirstName, LastName, DateOfBirth, PlaceOfBirth, CountryOfBirth);
CREATE INDEX producerIndex ON Producers (FirstName, LastName, DateOfBirth, PlaceOfBirth, CountryOfBirth);