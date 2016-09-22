-- write a query that shows each department along with the name of the current manager for that department.
SELECT d.dept_name AS Dept, concat(e.first_name, ' ', e.last_name) AS DM, e.gender AS Gender
FROM departments AS d
JOIN dept_manager AS dm
	ON dm.dept_no = d.dept_no
JOIN employees AS e
	ON e.emp_no = dm.emp_no
-- Find the name of all departments currently managed by women.
WHERE dm.to_date LIKE '9999%' AND e.gender = 'F';

-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title, count(t.title)
FROM employees AS e
JOIN dept_emp AS de 
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON de.dept_no = d.dept_no
JOIN titles AS t
	ON e.emp_no = t.emp_no
WHERE d.dept_name = 'Customer Service'
	AND de.to_date LIKE "9999%"
	AND t.to_date LIKE "9999%"
GROUP BY t.title;

-- Find the current salary of all current managers.
SELECT d.dept_name AS Dept, concat(e.first_name, ' ', e.last_name) AS DM, s.salary AS Salary
FROM departments AS d
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS e
	ON e.emp_no = dm.emp_no
JOIN salaries AS s
	ON e.emp_no = s.emp_no
WHERE dm.to_date LIKE '9999%'
	AND s.to_date LIKE '9999%';

-- Bonus Find the names of all current employees, their department name, and their current manager's name.
SELECT concat(e.first_name, ' ', e.last_name) AS 'Emp NAME', d.dept_name AS 'Dept Name', concat(dme.first_name, ' ', dme.last_name) AS 'Manager'
FROM employees AS e
JOIN dept_emp AS de
	ON e.emp_no = de.emp_no
JOIN departments AS d
	ON de.dept_no = d.dept_no
JOIN dept_manager AS dm
	ON d.dept_no = dm.dept_no
JOIN employees AS dme
	ON dme.emp_no = dm.emp_no
WHERE dm.to_date LIKE '9999%'
	AND de.to_date LIKE '9999%';









