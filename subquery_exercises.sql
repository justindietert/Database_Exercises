SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
);

SELECT title
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
);

SELECT emp_no
FROM dept_manager
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE gender = 'F'
);

SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'
	)
);

-- Perform above queries to only return current 

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
) AND emp_no IN (
	SELECT emp_no
	FROM salaries
	WHERE to_date >= now()
);

SELECT title
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod' 
	AND to_date >= now()
);

SELECT emp_no
FROM dept_manager
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE gender = 'F' 
	AND to_date >= now()
);

SELECT dept_name
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F' 
		AND to_date >= now()
	)
);

-- use both joins and sub-queries --
-- -------------------------------------------------------------------------------
-- Compare average salary per female employee vs average salary per male employee 
--      for company history AND current

SELECT AVG(s.salary) AS 'Average Salary', e.gender AS 'Gender'
FROM salaries AS s
JOIN employees AS e ON e.emp_no = s.emp_no
GROUP BY gender;

SELECT AVG(s.salary) AS 'Average Salary', e.gender AS 'Gender'
FROM salaries AS s
JOIN employees AS e ON e.emp_no = s.emp_no
WHERE s.to_date >= now()
GROUP BY gender;

SELECT AVG(s.salary) AS 'Average Salary', e.gender AS 'Gender'
FROM salaries AS s
JOIN employees AS e ON e.emp_no = s.emp_no
WHERE s.emp_no IN (
	SELECT emp_no
	FROM dept_manager
)
GROUP BY gender;

