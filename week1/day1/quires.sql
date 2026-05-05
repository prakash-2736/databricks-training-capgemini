-- BASIC

-- Q1
SELECT * FROM Employee;

-- Q2
SELECT name, salary FROM Employee;

-- Q3
SELECT * FROM Employee WHERE age > 30;

-- Q4
SELECT name FROM Department;

-- Q5
SELECT e.* 
FROM Employee e
JOIN Department d ON e.department_id = d.department_id
WHERE d.name = 'IT';

-- STRING

-- Q6
SELECT * FROM Employee WHERE name LIKE 'J%';

-- Q7
SELECT * FROM Employee WHERE name LIKE '%e';

-- Q8
SELECT * FROM Employee WHERE name LIKE '%a%';

-- Q9
SELECT * FROM Employee WHERE LENGTH(name) = 9;

-- Q10
SELECT * FROM Employee WHERE name LIKE '_o%';

-- DATE

-- Q11
SELECT * FROM Employee WHERE YEAR(hire_date) = 2020;

-- Q12
SELECT * FROM Employee WHERE MONTH(hire_date) = 1;

-- Q13
SELECT * FROM Employee WHERE hire_date < '2019-01-01';

-- Q14
SELECT * FROM Employee WHERE hire_date >= '2021-03-01';

-- Q15
SELECT * FROM Employee 
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR);

-- AGGREGATE

-- Q16
SELECT SUM(salary) FROM Employee;

-- Q17
SELECT AVG(salary) FROM Employee;

-- Q18
SELECT MIN(salary) FROM Employee;

-- Q19
SELECT department_id, COUNT(*) 
FROM Employee GROUP BY department_id;

-- Q20
SELECT department_id, AVG(salary) 
FROM Employee GROUP BY department_id;

-- GROUP BY

-- Q21
SELECT department_id, SUM(salary) 
FROM Employee GROUP BY department_id;

-- Q22
SELECT department_id, AVG(age) 
FROM Employee GROUP BY department_id;

-- Q23
SELECT YEAR(hire_date), COUNT(*) 
FROM Employee GROUP BY YEAR(hire_date);

-- Q24
SELECT department_id, MAX(salary) 
FROM Employee GROUP BY department_id;

-- Q25
SELECT department_id 
FROM Employee 
GROUP BY department_id 
ORDER BY AVG(salary) DESC LIMIT 1;

-- HAVING

-- Q26
SELECT department_id 
FROM Employee 
GROUP BY department_id HAVING COUNT(*) > 2;

-- Q27
SELECT department_id 
FROM Employee 
GROUP BY department_id HAVING AVG(salary) > 55000;

-- Q28
SELECT YEAR(hire_date) 
FROM Employee 
GROUP BY YEAR(hire_date) HAVING COUNT(*) > 1;

-- Q29
SELECT department_id 
FROM Employee 
GROUP BY department_id HAVING SUM(salary) < 100000;

-- Q30
SELECT department_id 
FROM Employee 
GROUP BY department_id HAVING MAX(salary) > 75000;


