-- =========================
-- WHERE CLAUSE
-- =========================

-- 1. Find employees with salary greater than 70000.
SELECT emp_name, salary
FROM Employees
WHERE salary > 70000;

-- 2. Find employees working in Hyderabad.
SELECT emp_name, city
FROM Employees
WHERE city = 'Hyderabad';

-- 3. Find employees with experience less than 4 years.
SELECT emp_name, experience
FROM Employees
WHERE experience < 4;

-- 4. Find employees from Finance department.
SELECT emp_name, department
FROM Employees
WHERE department = 'Finance';

-- 5. Find employees whose salary is equal to 52000.
SELECT emp_name, salary
FROM Employees
WHERE salary = 52000;


-- =========================
-- COMPARISON OPERATORS
-- =========================

-- 6. Find employees with salary >= 80000.
SELECT emp_name, salary
FROM Employees
WHERE salary >= 80000;

-- 7. Find employees with experience <= 3.
SELECT emp_name, experience
FROM Employees
WHERE experience <= 3;

-- 8. Find employees whose salary <> 45000.
SELECT emp_name, salary
FROM Employees
WHERE salary <> 45000;

-- 9. Find employees with salary < 50000.
SELECT emp_name, salary
FROM Employees
WHERE salary < 50000;

-- 10. Find employees with experience > 5.
SELECT emp_name, experience
FROM Employees
WHERE experience > 5;


-- =========================
-- LOGICAL OPERATORS
-- =========================

-- 11. Find employees from IT department AND salary greater than 70000.
SELECT emp_name, department, salary
FROM Employees
WHERE department = 'IT'
AND salary > 70000;

-- 12. Find employees from Hyderabad OR Bangalore.
SELECT emp_name, city
FROM Employees
WHERE city = 'Hyderabad'
OR city = 'Bangalore';

-- 13. Find employees from HR department AND experience less than 3.
SELECT emp_name, department, experience
FROM Employees
WHERE department = 'HR'
AND experience < 3;

-- 14. Find employees with salary greater than 60000 OR experience greater than 6.
SELECT emp_name, salary, experience
FROM Employees
WHERE salary > 60000
OR experience > 6;

-- 15. Find employees NOT from Sales department.
SELECT emp_name, department
FROM Employees
WHERE department <> 'Sales';


-- =========================
-- IN AND NOT IN
-- =========================

-- 16. Find employees working in Hyderabad and Mumbai.
SELECT emp_name, city
FROM Employees
WHERE city IN ('Hyderabad', 'Mumbai');

-- 17. Find employees whose department is IT or Finance.
SELECT emp_name, department
FROM Employees
WHERE department IN ('IT', 'Finance');

-- 18. Find employees whose city is not Chennai or Pune.
SELECT emp_name, city
FROM Employees
WHERE city NOT IN ('Chennai', 'Pune');

-- 19. Find employees whose salary is 45000, 75000, or 91000.
SELECT emp_name, salary
FROM Employees
WHERE salary IN (45000, 75000, 91000);

-- 20. Find employees whose department is not HR or Sales.
SELECT emp_name, department
FROM Employees
WHERE department NOT IN ('HR', 'Sales');


-- =========================
-- BETWEEN
-- =========================

-- 21. Find employees with salary between 50000 and 80000.
SELECT emp_name, salary
FROM Employees
WHERE salary BETWEEN 50000 AND 80000;

-- 22. Find employees with experience between 3 and 6.
SELECT emp_name, experience
FROM Employees
WHERE experience BETWEEN 3 AND 6;

-- 23. Find employees whose emp_id is between 105 and 112.
SELECT emp_id, emp_name
FROM Employees
WHERE emp_id BETWEEN 105 AND 112;

-- 24. Find employees with salary NOT between 40000 and 60000.
SELECT emp_name, salary
FROM Employees
WHERE salary NOT BETWEEN 40000 AND 60000;

-- 25. Find employees with experience between 2 and 4.
SELECT emp_name, experience
FROM Employees
WHERE experience BETWEEN 2 AND 4;


-- =========================
-- LIKE OPERATOR
-- =========================

-- 26. Find employees whose names start with 'R'.
SELECT emp_name
FROM Employees
WHERE emp_name LIKE 'R%';

-- 27. Find employees whose names end with 'a'.
SELECT emp_name
FROM Employees
WHERE emp_name LIKE '%a';

-- 28. Find employees whose names contain 'v'.
SELECT emp_name
FROM Employees
WHERE emp_name LIKE '%v%';

-- 29. Find employees whose city starts with 'B'.
SELECT emp_name, city
FROM Employees
WHERE city LIKE 'B%';

-- 30. Find employees whose department ends with 's'.
SELECT emp_name, department
FROM Employees
WHERE department LIKE '%s';
