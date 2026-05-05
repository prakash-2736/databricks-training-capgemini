
-- BASIC

-- 1. Select all columns from the Employee table.
SELECT * FROM Employee;

-- 2. Select only the name and salary columns from the Employee table.
SELECT name, salary FROM Employee;

-- 3. Select employees who are older than 30.
SELECT emp_id, name, age 
FROM Employee 
WHERE age > 30;

-- 4. Select the names of all departments.
SELECT name FROM Department;

-- 5. Select employees who work in the IT department.
SELECT e.emp_id, e.name
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
WHERE d.name = 'IT';


-- STRING OPERATIONS

-- 6. Select employees whose names start with 'J'.
SELECT name FROM Employee WHERE name LIKE 'J%';

-- 7. Select employees whose names end with 'e'.
SELECT name FROM Employee WHERE name LIKE '%e';

-- 8. Select employees whose names contain 'a'.
SELECT name FROM Employee WHERE name LIKE '%a%';

-- 9. Select employees whose names are exactly 9 characters long.
SELECT name FROM Employee WHERE LENGTH(name) = 9;

-- 10. Select employees whose names have 'o' as the second character.
SELECT name FROM Employee WHERE name LIKE '_o%';


-- DATE FUNCTIONS

-- 11. Select employees hired in the year 2020.
SELECT name FROM Employee WHERE YEAR(hire_date) = 2020;

-- 12. Select employees hired in January of any year.
SELECT name FROM Employee WHERE MONTH(hire_date) = 1;

-- 13. Select employees hired before 2019.
SELECT name FROM Employee WHERE hire_date < '2019-01-01';

-- 14. Select employees hired on or after March 1, 2021.
SELECT name FROM Employee WHERE hire_date >= '2021-03-01';

-- 15. Select employees hired in the last 2 years.
SELECT * FROM Employee 
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);


-- AGGREGATE 

-- 16. Select the total salary of all employees.
SELECT SUM(salary) AS total_salary FROM Employee;

-- 17. Select the average salary of employees.
SELECT AVG(salary) AS avg_salary FROM Employee;

-- 18. Select the minimum salary in the Employee table.
SELECT MIN(salary) AS min_salary FROM Employee;

-- 19. Select the number of employees in each department.
SELECT department_id, COUNT(*) AS employee_count 
FROM Employee 
GROUP BY department_id;

-- 20. Select the average salary of employees in each department.
SELECT department_id, AVG(salary) AS avg_salary 
FROM Employee 
GROUP BY department_id;


-- GROUP BY

-- 21. Select the total salary for each department.
SELECT department_id, SUM(salary) AS total_salary 
FROM Employee 
GROUP BY department_id;

-- 22. Select the average age of employees in each department.
SELECT department_id, AVG(age) AS avg_age 
FROM Employee 
GROUP BY department_id;

-- 23. Select the number of employees hired in each year.
SELECT YEAR(hire_date) AS year, COUNT(*) AS employee_count 
FROM Employee 
GROUP BY YEAR(hire_date);

-- 24. Select the highest salary in each department.
SELECT department_id, MAX(salary) AS max_salary 
FROM Employee 
GROUP BY department_id;

-- 25. Select the department with the highest average salary.
SELECT department_id 
FROM Employee 
GROUP BY department_id 
ORDER BY AVG(salary) DESC 
LIMIT 1;


-- HAVING CLAUSE

-- 26. Select departments with more than 2 employees.
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING COUNT(*) > 2;

-- 27. Select departments with an average salary greater than 55000.
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING AVG(salary) > 55000;

-- 28. Select years with more than 1 employee hired.
SELECT YEAR(hire_date) AS year
FROM Employee 
GROUP BY YEAR(hire_date) 
HAVING COUNT(*) > 1;

-- 29. Select departments with a total salary expense less than 100000.
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING SUM(salary) < 100000;

-- 30. Select departments with the maximum salary above 75000.
SELECT department_id 
FROM Employee 
GROUP BY department_id 
HAVING MAX(salary) > 75000;
