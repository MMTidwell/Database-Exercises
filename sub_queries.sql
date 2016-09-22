/* 
SELECT column_a, column_b, column_c
FROM table_a
WHERE column_a IN (
	SELECT column_a
	FROM table_b
	WHERE column_b = TRUE
); 
*/
  
-- Find all the employees with the same hire date as employee 101010 using a sub-query.
SELECT concat(first_name, ' ', last_name) AS 'Name', hire_date, emp_no
FROM employees
WHERE hire_date = (
	SELECT hire_date
	FROM employees
	WHERE emp_no = '101010'
);

-- Find ALL the titles held BY ALL employees WITH the FIRST NAME Aamod.
SELECT title 
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
);

-- Find ALL the department managers that are female.
SELECT concat(first_name, ' ', last_name) AS 'Name', gender
FROM employees
WHERE gender = 'f'
AND emp_no IN (
	SELECT emp_no
	FROM dept_manager
	WHERE to_date LIKE '9999%'
)
AND gender = 'f';

-- BONUS 
-- Find ALL the department NAMES that have female managers.
SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'f'
	)
	AND to_date LIKE '9999%'
);

-- what is the most common birthday in the comp
SELECT birth_date, count(birth_date)
FROM employees
GROUP BY birth_date desc
LIMIT 1;

-- what is the least common birthday in te comp
-- how many emp currently work in each dept
-- what is the avg salary for each dept
-- what is the avg salary in the 80's 
-- what is the ave salary in the 80's by department
-- how many times on avg do emp switch titles
-- how many times on avg do emp get a raise















