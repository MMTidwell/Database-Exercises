USE codeup_test_db;

-- The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = 'Pink Floyd';

-- The year Michael Jackson's Thriller was released
SELECT release_date FROM albums WHERE name = 'Thriller';

-- The genre for ACDC
SELECT genre FROM albums WHERE artist = 'AC/DC';

-- Which albums were released in the 1970s
SELECT name FROM albums WHERE release_date BETWEEN 1970 AND 1979;

-- Which albums had less than 30 million certified sales
SELECT name FROM albums WHERE sales < 30.0;

-- All the albums in the Hard Rock genre. Is this all the rock albums in the table?
SELECT name FROM albums WHERE genre = 'Hard Rock';


-- The name of all albums by Pink Floyd.
SELECT * FROM albums WHERE artist = "Pink FLoyd";

-- The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = "Sgt. Peppers Lonely Hearts Club Band";

-- The genre for Nevermind
SELECT genre FROM albums WHERE name = "Nevermind";

-- Which albums were released in the 1990s
SELECT name FROM albums WHERE release_date > 1990;

-- Which albums had less than 20 million certified sales
SELECT name FROM albums WHERE sales < 20;

-- All the albums in the rock genre. Is this all the rock albums in the table?
SELECT name FROM albums WHERE genre LIKE "%Rock";
