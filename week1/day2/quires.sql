
-- ORDER BY


-- 31. Display employees ordered by salary in ascending order.
SELECT emp_id, name, salary
FROM Employee
ORDER BY salary ASC;

-- 32. Display employees ordered by age in descending order.
SELECT emp_id, name, age
FROM Employee
ORDER BY age DESC;

-- 33. Display employees ordered by hire date.
SELECT emp_id, name, hire_date
FROM Employee
ORDER BY hire_date ASC;

-- 34. Display employees ordered by department_id and salary.
SELECT emp_id, name, department_id, salary
FROM Employee
ORDER BY department_id, salary;

-- 35. Display departments ordered by total salary expense.
SELECT department_id, SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;


-- JOINS

-- 36. Display employee names with their department names.
SELECT e.name AS employee_name, d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

-- 37. Display project names with department names.
SELECT p.name AS project_name, d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- 38. Display employees and projects belonging to the same department.
SELECT e.name AS employee_name, p.name AS project_name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

-- 39. Display all employees with department names using LEFT JOIN.
SELECT e.emp_id, e.name, d.name AS department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- 40. Display all departments with employee names using LEFT JOIN.
SELECT d.department_id, d.name AS department_name, e.name AS employee_name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;


-- SUBQUERIES

-- 41. Find employees who do not belong to any department.
SELECT emp_id, name
FROM Employee
WHERE department_id IS NULL;

-- 42. Find departments that have projects assigned.
SELECT DISTINCT department_id
FROM Project
WHERE department_id IS NOT NULL;

-- 43. Find departments without employees.
SELECT department_id, name
FROM Department
WHERE department_id NOT IN (
    SELECT DISTINCT department_id
    FROM Employee
    WHERE department_id IS NOT NULL
);

-- 44. Find employees who belong to the same department as John Doe.
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    WHERE name = 'John Doe'
);

-- 45. Find department having highest average salary.
SELECT d.name AS department_name
FROM Department d
JOIN Employee e
ON d.department_id = e.department_id
GROUP BY d.name
ORDER BY AVG(e.salary) DESC
LIMIT 1;


-- NESTED QUERIES

-- 46. Find employees earning more than average salary.
SELECT emp_id, name, salary
FROM Employee
WHERE salary > (
    SELECT AVG(salary)
    FROM Employee
);

-- 47. Find employees working in departments with more than 2 employees.
SELECT name
FROM Employee
WHERE department_id IN (
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    HAVING COUNT(*) > 2
);

-- 48. Find employees working in the department with highest salary.
SELECT name
FROM Employee
WHERE department_id = (
    SELECT department_id
    FROM Employee
    GROUP BY department_id
    ORDER BY MAX(salary) DESC
    LIMIT 1
);

-- 49. Find projects handled by IT department.
SELECT name
FROM Project
WHERE department_id = (
    SELECT department_id
    FROM Department
    WHERE name = 'IT'
);

-- 50. Find employees hired before average hire date.
SELECT name
FROM Employee
WHERE hire_date < (
    SELECT AVG(hire_date)
    FROM Employee
);


-- EXISTS / NOT EXISTS

-- 51. Find departments that have employees.
SELECT name
FROM Department d
WHERE EXISTS (
    SELECT 1
    FROM Employee e
    WHERE d.department_id = e.department_id
);

-- 52. Find departments without projects.
SELECT name
FROM Department d
WHERE NOT EXISTS (
    SELECT 1
    FROM Project p
    WHERE d.department_id = p.department_id
);

-- 53. Find employees belonging to departments with projects.
SELECT name
FROM Employee e
WHERE EXISTS (
    SELECT 1
    FROM Project p
    WHERE e.department_id = p.department_id
);

-- 54. Find projects assigned to departments having employees.
SELECT name
FROM Project p
WHERE EXISTS (
    SELECT 1
    FROM Employee e
    WHERE p.department_id = e.department_id
);

-- 55. Find employees without projects in their department.
SELECT name
FROM Employee e
WHERE NOT EXISTS (
    SELECT 1
    FROM Project p
    WHERE e.department_id = p.department_id
);


-- LIMIT / TOP

-- 56. Display top 3 highest paid employees.
SELECT emp_id, name, salary
FROM Employee
ORDER BY salary DESC
LIMIT 3;

-- 57. Display youngest employee.
SELECT emp_id, name, age
FROM Employee
ORDER BY age ASC
LIMIT 1;

-- 58. Display oldest employee.
SELECT emp_id, name, age
FROM Employee
ORDER BY age DESC
LIMIT 1;

-- 59. Display latest hired employee.
SELECT emp_id, name, hire_date
FROM Employee
ORDER BY hire_date DESC
LIMIT 1;

-- 60. Display first 5 employees ordered by emp_id.
SELECT *
FROM Employee
ORDER BY emp_id
LIMIT 5;


-- DISTINCT

-- 61. Display distinct department IDs from Employee table.
SELECT DISTINCT department_id
FROM Employee;

-- 62. Display distinct hire years.
SELECT DISTINCT YEAR(hire_date) AS hire_year
FROM Employee;

-- 63. Display distinct salaries.
SELECT DISTINCT salary
FROM Employee;

-- 64. Display distinct employee ages.
SELECT DISTINCT age
FROM Employee;

-- 65. Display distinct department names from Project table.
SELECT DISTINCT d.name
FROM Department d
JOIN Project p
ON d.department_id = p.department_id;
