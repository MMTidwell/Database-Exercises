USE employees;

-- prints selected columns
SELECT d.dept_name, e.gender, AVG(s.salary) AS avg_salary
FROM employees AS e
-- joins starting TABLE TO another
JOIN salaries AS s
	-- joins when they have the same column 	
	ON e.emp_no = s.emp_no
JOIN dept_emp AS de
	ON de.emp_no = e.emp_no
JOIN departments8ij  AS d
	ON de.dept_no = d.dept_no 
-- pulls only current emp
-- WHERE s.to_date LIKE "9999%";
WHERE s.to_date > curtime()
	AND de.to_date > curtime()
-- allows us to aggrate just the stuff we are getting
GROUP BY e.gender, d.dept_name
ORDER BY d.dept_name, e.gender;
