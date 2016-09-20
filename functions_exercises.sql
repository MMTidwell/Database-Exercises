-- Employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN).
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya');
-- Employees whose last name starts with 'E' — 7,330 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%';
-- Employees hired in the 90s — 135,214 rows.
SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
-- Employees born on Christmas — 842 rows.
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';
-- Employees with a 'q' in their last name — 1,873 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%';


-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
-- Now add a condition to find everybody with those names who is also male — 441 rows.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') AND gender = 'M';
-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%e';
-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';
-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%-12-25';
-- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'; 


-- Modify your first query to order by first name. The first result should be Irena Majewski and the last result should be Vidya Schaft.
SELECT * FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
AND gender = 'M' 
ORDER BY first_name;
/* SELECT * FROM employees 
WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya')
AND gender = 'M'
ORDER BY first_name; */

-- UPDATE the QUERY TO ORDER BY FIRST NAME AND THEN LAST name. The FIRST result should now be Irena Acton AND the LAST should be Vidya Zweizig.
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY first_name, last_name;

-- CHANGE the ORDER BY clause so that you ORDER BY LAST NAME BEFORE FIRST name. Your FIRST result should still be Irena Acton but now the LAST result should be Maya Zyda.
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY last_name, first_name;

-- UPDATE your queries FOR employees WITH 'E' IN their LAST NAME TO sort the results BY their employee number. Your results should NOT CHANGE!
SELECT * FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no;

-- Now reverse the sort order FOR BOTH queries.
SELECT * FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M'
ORDER BY last_name DESC; 

SELECT * FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

-- CHANGE the QUERY FOR employees hired IN the 90s AND born ON Christmas such that the FIRST result IS the oldest employee who was hired last. It should be Khun Bernini.
SELECT * FROM employees 
WHERE hire_date LIKE '199%' 
AND birth_date LIKE '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;




-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names
SELECT COUNT(*), gender FROM employees 
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
GROUP BY gender;

-- Update your queries for employees whose names start and end with 'E'. Use concat() to combine their first and last name together as a single column in your results
SELECT concat(first_name, ' ', last_name) 
FROM employees
WHERE last_name LIKE 'E%E';

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company (Hint: You will also need to use now() or curdate())
SELECT DATEDIFF(now(), hire_date) FROM employees 
WHERE hire_date LIKE '199%' 
AND birth_date LIKE '%-12-25';

-- Add a GROUP BY clause to your query for last names with 'q' and not 'qu' to find the distinct combination of first and last names. You will find there were some duplicate first and last name pairs in your previous results. Add a count() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.
SELECT COUNT(*), first_name FROM employees 
WHERE last_name LIKE '%q%' AND NOT last_name LIKE '%qu%'
GROUP BY first_name ORDER BY count(*) DESC; 





-- Return 10 employees in a result set named "full_name" in the format of "lastname, firstname" for each employee.
SELECT CONCAT(last_name, ' ', first_name) AS full_name
FROM employees
LIMIT 10;

-- Add the date of birth for each employee as "DOB" to the query.
SELECT concat(last_name, ' ', first_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;

-- Update the query to format full name to include the employee number so it is formatted as "employee number - lastname, firstname".
SELECT CONCAT(emp_no, ' - ', last_name, ' ', first_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;
















