-- DESCRIBE each table and inspect the keys and see which columns have indexes and keys.
-- Field | Type | Null | Key | Default | Extra
DESCRIBE departments;
-- dept_no (PRI) | dept_name (UNI)
DESCRIBE dept_emp;
-- emp_no (PRI) | dept_no (PRI) | from_date | to_date
DESCRIBE dept_manager;
-- dept_no (PRI) | emp_no (PRI) | from_date | to_date
DESCRIBE employees;
-- emp_no (PRI) | birth_date | first_name | last_name | gender | hire_date
DESCRIBE salaries;
-- emp_no (PRI) | salary | from_date (PRI) | to_date
DESCRIBE titles;
-- emp_no (PRI) | title (PRI) | from_date (PRI) | to_date

-- USE your codeup_test_db database.
DESCRIBE albums;

-- Add an index to make sure all album names combined with the artist are unique. Try to add duplicates to test the constraint.
-- find out what is in table
DESCRIBE albums;
-- alters TABLE AND combines artist WITH name
ALTER TABLE albums
ADD UNIQUE (artist, NAME);
-- testing table 
INSERT INTO albums (artist, NAME, release_date, genre)
VALUES('Mitt', 'Thriller', '1999', 'Rock');





