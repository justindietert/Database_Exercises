  SELECT COUNT(first_name) AS 'Number', gender AS 'Gender'
    FROM employees
   WHERE first_name = 'Irena'
      OR first_name = 'Vidya'
      OR first_name = 'Maya'
GROUP BY gender;

SELECT CONCAT(first_name, ' ', last_name) AS 'Full Name'
FROM employees 
 WHERE last_name 
  LIKE 'E%' 
    OR last_name 
  LIKE '%e';
 
SELECT * FROM employees 
 WHERE last_name 
  LIKE 'E%' 
   AND last_name 
  LIKE '%e';

SELECT first_name, last_name, datediff(curdate(), hire_date) 
  FROM employees
 WHERE hire_date 
  LIKE '199%'
   AND birth_date 
  LIKE '%-12-25'
  ORDER BY birth_date ASC, hire_date DESC;

SELECT first_name, last_name, count(*) AS 'Number of People with this Name'
  FROM employees 
 WHERE last_name LIKE '%q%'
   AND last_name NOT LIKE '%qu%'
   GROUP BY first_name, last_name
   ORDER BY count(*) DESC;

