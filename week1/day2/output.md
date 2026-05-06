# Day 2 - SQL Outputs

---

## 31. Employees ordered by salary ascending

| emp_id | name        | salary   |
| ------ | ----------- | -------- |
| 4      | Alice Blue  | 45000.00 |
| 8      | Frank White | 48000.00 |
| 1      | John Doe    | 50000.00 |
| 5      | Charlie P.  | 50000.00 |
| 10     | Hannah Lee  | 53000.00 |
| 7      | Eve Black   | 55000.00 |
| 2      | Jane Smith  | 60000.00 |
| 9      | Grace Kelly | 65000.00 |
| 6      | David Green | 70000.00 |
| 3      | Bob Brown   | 80000.00 |

---

## 32. Employees ordered by age descending

| emp_id | name        | age |
| ------ | ----------- | --- |
| 3      | Bob Brown   | 45  |
| 7      | Eve Black   | 40  |
| 6      | David Green | 38  |
| 2      | Jane Smith  | 34  |
| 8      | Frank White | 32  |
| 10     | Hannah Lee  | 30  |
| 5      | Charlie P.  | 29  |
| 1      | John Doe    | 28  |
| 9      | Grace Kelly | 27  |
| 4      | Alice Blue  | 25  |

---

## 33. Employees ordered by hire date

| emp_id | name        | hire_date  |
| ------ | ----------- | ---------- |
| 3      | Bob Brown   | 2018-02-12 |
| 9      | Grace Kelly | 2018-11-13 |
| 2      | Jane Smith  | 2019-07-23 |
| 5      | Charlie P.  | 2019-12-01 |
| 1      | John Doe    | 2020-01-15 |
| 10     | Hannah Lee  | 2020-02-25 |
| 4      | Alice Blue  | 2021-03-22 |
| 8      | Frank White | 2021-07-10 |
| 7      | Eve Black   | 2021-08-30 |
| 6      | David Green | 2022-05-18 |

---

## 34. Employees ordered by department_id and salary

| emp_id | name        | department_id | salary   |
| ------ | ----------- | ------------- | -------- |
| 8      | Frank White | NULL          | 48000.00 |
| 1      | John Doe    | 1             | 50000.00 |
| 9      | Grace Kelly | 1             | 65000.00 |
| 3      | Bob Brown   | 1             | 80000.00 |
| 5      | Charlie P.  | 2             | 50000.00 |
| 2      | Jane Smith  | 2             | 60000.00 |
| 4      | Alice Blue  | 3             | 45000.00 |
| 7      | Eve Black   | 3             | 55000.00 |
| 10     | Hannah Lee  | 4             | 53000.00 |
| 6      | David Green | 4             | 70000.00 |

---

## 35. Departments ordered by total salary expense

| department_id | total_salary |
| ------------- | ------------ |
| 1             | 195000.00    |
| 4             | 123000.00    |
| 2             | 110000.00    |
| 3             | 100000.00    |
| NULL          | 48000.00     |

---

## 36. Employee names with department names

| employee_name | department_name |
| ------------- | --------------- |
| John Doe      | IT              |
| Jane Smith    | HR              |
| Bob Brown     | IT              |
| Alice Blue    | Finance         |
| Charlie P.    | HR              |
| David Green   | Marketing       |
| Eve Black     | Finance         |
| Grace Kelly   | IT              |
| Hannah Lee    | Marketing       |

---

## 37. Project names with department names

| project_name    | department_name |
| --------------- | --------------- |
| Project Alpha   | IT              |
| Project Beta    | HR              |
| Project Gamma   | IT              |
| Project Delta   | Finance         |
| Project Epsilon | Marketing       |
| Project Zeta    | Marketing       |
| Project Eta     | Finance         |
| Project Theta   | IT              |

---

## 38. Employees and projects belonging to same department

| employee_name | project_name  |
| ------------- | ------------- |
| John Doe      | Project Alpha |
| John Doe      | Project Gamma |
| John Doe      | Project Theta |
| Bob Brown     | Project Alpha |
| Bob Brown     | Project Gamma |
| Bob Brown     | Project Theta |
| Grace Kelly   | Project Alpha |
| Grace Kelly   | Project Gamma |
| Grace Kelly   | Project Theta |

---

## 39. All employees with department names

| emp_id | name        | department_name |
| ------ | ----------- | --------------- |
| 1      | John Doe    | IT              |
| 2      | Jane Smith  | HR              |
| 3      | Bob Brown   | IT              |
| 4      | Alice Blue  | Finance         |
| 5      | Charlie P.  | HR              |
| 6      | David Green | Marketing       |
| 7      | Eve Black   | Finance         |
| 8      | Frank White | NULL            |
| 9      | Grace Kelly | IT              |
| 10     | Hannah Lee  | Marketing       |

---

## 40. All departments with employee names

| department_id | department_name | employee_name |
| ------------- | --------------- | ------------- |
| 1             | IT              | John Doe      |
| 1             | IT              | Bob Brown     |
| 1             | IT              | Grace Kelly   |
| 2             | HR              | Jane Smith    |
| 2             | HR              | Charlie P.    |
| 3             | Finance         | Alice Blue    |
| 3             | Finance         | Eve Black     |
| 4             | Marketing       | David Green   |
| 4             | Marketing       | Hannah Lee    |

---

## 41. Employees without department

| emp_id | name        |
| ------ | ----------- |
| 8      | Frank White |

---

## 42. Departments having projects

| department_id |
| ------------- |
| 1             |
| 2             |
| 3             |
| 4             |

---

## 43. Departments without employees

No rows returned.

---

## 44. Employees in same department as John Doe

| name        |
| ----------- |
| John Doe    |
| Bob Brown   |
| Grace Kelly |

---

## 45. Department with highest average salary

| department_name |
| --------------- |
| IT              |

---

## 46. Employees earning more than average salary

| emp_id | name        | salary   |
| ------ | ----------- | -------- |
| 2      | Jane Smith  | 60000.00 |
| 3      | Bob Brown   | 80000.00 |
| 6      | David Green | 70000.00 |
| 9      | Grace Kelly | 65000.00 |

---

## 47. Employees in departments with more than 2 employees

| name        |
| ----------- |
| John Doe    |
| Bob Brown   |
| Grace Kelly |

---

## 48. Employees in department with highest salary

| name        |
| ----------- |
| John Doe    |
| Bob Brown   |
| Grace Kelly |

---

## 49. Projects handled by IT department

| name          |
| ------------- |
| Project Alpha |
| Project Gamma |
| Project Theta |

---

## 50. Employees hired before average hire date

[Unverified] Result depends on SQL engine AVG(date) handling.

---

## 51. Departments having employees

| name      |
| --------- |
| IT        |
| HR        |
| Finance   |
| Marketing |

---

## 52. Departments without projects

No rows returned.

---

## 53. Employees belonging to departments with projects

| name        |
| ----------- |
| John Doe    |
| Jane Smith  |
| Bob Brown   |
| Alice Blue  |
| Charlie P.  |
| David Green |
| Eve Black   |
| Grace Kelly |
| Hannah Lee  |

---

## 54. Projects assigned to departments having employees

| name            |
| --------------- |
| Project Alpha   |
| Project Beta    |
| Project Gamma   |
| Project Delta   |
| Project Epsilon |
| Project Zeta    |
| Project Eta     |
| Project Theta   |

---

## 55. Employees without projects in their department

| name        |
| ----------- |
| Frank White |

---

## 56. Top 3 highest paid employees

| emp_id | name        | salary   |
| ------ | ----------- | -------- |
| 3      | Bob Brown   | 80000.00 |
| 6      | David Green | 70000.00 |
| 9      | Grace Kelly | 65000.00 |

---

## 57. Youngest employee

| emp_id | name       | age |
| ------ | ---------- | --- |
| 4      | Alice Blue | 25  |

---

## 58. Oldest employee

| emp_id | name      | age |
| ------ | --------- | --- |
| 3      | Bob Brown | 45  |

---

## 59. Latest hired employee

| emp_id | name        | hire_date  |
| ------ | ----------- | ---------- |
| 6      | David Green | 2022-05-18 |

---

## 60. First 5 employees ordered by emp_id

| emp_id | name       | age | salary   | department_id | hire_date  |
| ------ | ---------- | --- | -------- | ------------- | ---------- |
| 1      | John Doe   | 28  | 50000.00 | 1             | 2020-01-15 |
| 2      | Jane Smith | 34  | 60000.00 | 2             | 2019-07-23 |
| 3      | Bob Brown  | 45  | 80000.00 | 1             | 2018-02-12 |
| 4      | Alice Blue | 25  | 45000.00 | 3             | 2021-03-22 |
| 5      | Charlie P. | 29  | 50000.00 | 2             | 2019-12-01 |

---

## 61. Distinct department IDs

| department_id |
| ------------- |
| 1             |
| 2             |
| 3             |
| 4             |
| NULL          |

---

## 62. Distinct hire years

| hire_year |
| --------- |
| 2018      |
| 2019      |
| 2020      |
| 2021      |
| 2022      |

---

## 63. Distinct salaries

| salary   |
| -------- |
| 50000.00 |
| 60000.00 |
| 80000.00 |
| 45000.00 |
| 70000.00 |
| 55000.00 |
| 48000.00 |
| 65000.00 |
| 53000.00 |

---

## 64. Distinct employee ages

| age |
| --- |
| 28  |
| 34  |
| 45  |
| 25  |
| 29  |
| 38  |
| 40  |
| 32  |
| 27  |
| 30  |

---

## 65. Distinct department names from Project table

| name      |
| --------- |
| IT        |
| HR        |
| Finance   |
| Marketing |

```
```
