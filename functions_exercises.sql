  SELECT COUNT(first_name), gender 
    FROM employees
   WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya'
GROUP BY gender;

SELECT * FROM employees 
 WHERE last_name 
  LIKE 'E%' 
    OR last_name 
  LIKE '%e'
  ORDER BY emp_no DESC;
 
SELECT * FROM employees 
 WHERE last_name 
  LIKE 'E%' 
   AND last_name 
  LIKE '%e';

SELECT * FROM employees 
 WHERE hire_date 
  LIKE '199%'
   AND birth_date 
  LIKE '%-12-25'
  ORDER BY birth_date ASC, hire_date DESC;

SELECT * FROM employees 
 WHERE last_name LIKE '%q%'
   AND last_name NOT LIKE '%qu%';

