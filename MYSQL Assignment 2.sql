USE employee;
SHOW TABLES;
 
 SELECT * FROM employees;
 -- Question 1
 SELECT DISTINCT salary FROM employees;
 
 -- Question 2
 SELECT age AS Employee_Age,
 salary AS Employee_Salary FROM employees;
 
 -- Question 3
 SELECT * FROM employees WHERE salary > 50000
 AND hire_date < '2016-01-01';
 
 -- Q3B
 SELECT * FROM employees WHERE designation IS NULL;
 
 UPDATE employees SET designation = 'Data Scientist'
 WHERE designation IS NULL;
 SELECT * FROM employees WHERE designation = 'Data Scientist';
 
 SELECT * FROM employees ORDER BY department_id ASC, salary DESC;
 
 SELECT * FROM employees WHERE YEAR(hire_date) = 2018
 ORDER BY hire_data ASC LIMIT 5;
 
 SELECT SUM(e.salary) AS Total_Salary 
 FROM employees e 
 JOIN departments
 ON e.department_id 
 WHERE d.department_name = 'FINANCE';
 
 SELECT MIN(age) AS Minimum_Age
 FROM employees;
 
 SELECT 
    l.location,
    MAX(e.salary) AS Maximum_Salary
FROM employees e
JOIN location l
ON e.location_id = l.location_id
GROUP BY l.location;

SELECT 
    designation,
    AVG(salary) AS Average_Salary
FROM employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;

SELECT 
    d.department_name,
    COUNT(e.employee_id) AS Employee_Count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name
HAVING COUNT(e.employee_id) < 3;

SELECT 
    l.location,
    AVG(e.age) AS Average_Age
FROM location l
JOIN employees e
ON l.location_id = e.location_id
WHERE e.gender = 'F'
GROUP BY l.location_id, l.location
HAVING AVG(e.age) < 30;

SELECT 
    e.employee_name,
    e.designation,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

SELECT 
    d.department_name,
    COUNT(e.employee_id) AS Employee_Count
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

SELECT 
    l.location,
    e.employee_name
FROM employees e
RIGHT JOIN location l
ON e.location_id = l.location_id;

  
 
 
 
 