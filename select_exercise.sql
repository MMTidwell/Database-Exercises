USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- The year Michael Jackson's Thriller was released
SELECT release_date FROM albums WHERE name = 'Thriller';

-- The genre for ACDC
SELECT genre FROM albums WHERE artist = 'ACDC';

-- Which albums were released in the 1970s
SELECT name FROM albums WHERE release_date BETWEEN 1970 AND 1979;

-- Which albums had less than 30 million certified sales
SELECT name FROM albums WHERE sales < 30.0;

-- All the albums in the Hard Rock genre. Is this all the rock albums in the table?
SELECT name FROM albums WHERE genre = 'Hard Rock';


-- +----+-----------------+---------------------+--------------+-------+------------------+
-- | id | artist          | name                | release_date | sales | genre            |
-- +----+-----------------+---------------------+--------------+-------+------------------+
-- |  1 | Michael Jackson | Thriller            |         1982 |  46.0 | Pop              |
-- |  2 | ACDC            | Back in Black       |         1980 |  26.1 | Hard Rock        |
-- |  3 | Pink Floyd      | Dark Side           |         1973 |  24.2 | Progressive Rock |
-- |  4 | W. Houston      | The Bodyguard       |         1992 |  27.4 | Soundtrack       |
-- |  5 | Meat Loaf       | Bat Out Of Hell     |         1977 |  20.6 | Hard Rock        |
-- |  6 | Eagles          | Their Greatest Hits |         1976 |  32.2 | Rock             |
-- |  7 | Bee Gees        | Sat Night Fever     |         1977 |  20.6 | Disco            |
-- |  8 | Fleetwood Mac   | Rumours             |         1977 |  27.9 | Soft Rock        |
-- +----+-----------------+---------------------+--------------+-------+------------------+