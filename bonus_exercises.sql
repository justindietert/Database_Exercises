-- Find the name of all departments currently managed by women.
-- Find the current titles of employees currently working in the Customer Service department.
-- Find the current salary of all current managers.
-- Find the names of all current employees, their department name, and their manager's name.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Full Name', e.gender AS 'Gender'
FROM   departments AS d
JOIN   dept_manager AS dm
ON     d.dept_no = dm.dept_no
JOIN   employees AS e
ON     e.emp_no = dm.emp_no
WHERE  dm.to_date >= now() AND e.gender = 'F';

SELECT title, count(*)
FROM   titles AS t
JOIN   dept_emp AS de
ON     t.emp_no = de.emp_no
JOIN   departments AS d
ON     de.dept_no = d.dept_no
WHERE  t.to_date >= now() AND de.to_date >= now() AND d.dept_no = 'd009'
GROUP BY title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Current Manager', s.salary AS 'Salary'
FROM   salaries AS s
JOIN   dept_manager AS dm
ON     s.emp_no = dm.emp_no
JOIN   employees AS e
ON     e.emp_no = dm.emp_no
JOIN   departments AS d
ON     d.dept_no = dm.dept_no
WHERE  s.to_date >= now() 
AND    dm.to_date >= now();

SELECT e.first_name, e.last_name, d.dept_name, m.first_name, m.last_name
FROM   employees AS e
JOIN   dept_emp AS de ON e.emp_no = de.emp_no
JOIN   departments AS d ON de.dept_no = d.dept_no
JOIN   dept_manager AS dm ON dm.dept_no = d.dept_no
JOIN   employees AS m ON m.emp_no = dm.emp_no
WHERE  de.to_date >= now() AND dm.to_date >= now()
ORDER BY dept_name, e.last_name
;

