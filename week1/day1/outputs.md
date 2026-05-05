# Day 1 - SQL Outputs

---

## 1. Select all columns from the Employee table

| emp_id | name         | age | salary  | department_id | hire_date  |
|--------|--------------|-----|---------|---------------|------------|
| 1 | John Doe | 28 | 50000.00 | 1 | 2020-01-15 |
| 2 | Jane Smith | 34 | 60000.00 | 2 | 2019-07-23 |
| 3 | Bob Brown | 45 | 80000.00 | 1 | 2018-02-12 |
| 4 | Alice Blue | 25 | 45000.00 | 3 | 2021-03-22 |
| 5 | Charlie P. | 29 | 50000.00 | 2 | 2019-12-01 |
| 6 | David Green | 38 | 70000.00 | 4 | 2022-05-18 |
| 7 | Eve Black | 40 | 55000.00 | 3 | 2021-08-30 |
| 8 | Frank White | 32 | 48000.00 | NULL | 2021-07-10 |
| 9 | Grace Kelly | 27 | 65000.00 | 1 | 2018-11-13 |
| 10 | Hannah Lee | 30 | 53000.00 | 4 | 2020-02-25 |

---

## 2. Select only the name and salary columns

| name | salary |
|------|--------|
| John Doe | 50000.00 |
| Jane Smith | 60000.00 |
| Bob Brown | 80000.00 |
| Alice Blue | 45000.00 |
| Charlie P. | 50000.00 |
| David Green | 70000.00 |
| Eve Black | 55000.00 |
| Frank White | 48000.00 |
| Grace Kelly | 65000.00 |
| Hannah Lee | 53000.00 |

---

## 3. Employees older than 30

| emp_id | name | age |
|--------|------|-----|
| 2 | Jane Smith | 34 |
| 3 | Bob Brown | 45 |
| 6 | David Green | 38 |
| 7 | Eve Black | 40 |
| 8 | Frank White | 32 |

---

## 4. Department names

| name |
|------|
| IT |
| HR |
| Finance |
| Marketing |

---

## 5. Employees in IT department

| emp_id | name |
|--------|------|
| 1 | John Doe |
| 3 | Bob Brown |
| 9 | Grace Kelly |

---

## 6. Names start with 'J'

| name |
|------|
| John Doe |
| Jane Smith |

---

## 7. Names end with 'e'

| name |
|------|
| Alice Blue |

---

## 8. Names contain 'a'

| name |
|------|
| Jane Smith |
| Charlie P. |
| David Green |
| Frank White |
| Grace Kelly |
| Hannah Lee |

---

## 9. Names exactly 9 characters

| name |
|------|
| John Doe |

---

## 10. Second letter is 'o'

| name |
|------|
| John Doe |
| Bob Brown |

---

## 11. Hired in 2020

| name |
|------|
| John Doe |
| Hannah Lee |

---

## 12. Hired in January

| name |
|------|
| John Doe |

---

## 13. Hired before 2019

| name |
|------|
| Bob Brown |
| Grace Kelly |

---

## 14. Hired on or after March 1, 2021

| name |
|------|
| Alice Blue |
| David Green |
| Eve Black |
| Frank White |

---

## 15. Hired in last 2 years

There are no results to be displayed.

---

## 16. Total salary

| total_salary |
|--------------|
| 576000.00 |

---

## 17. Average salary

| avg_salary |
|------------|
| 57600.00 |

---

## 18. Minimum salary

| min_salary |
|------------|
| 45000.00 |

---

## 19. Employees per department

| department_id | employee_count |
|---------------|----------------|
| 1 | 3 |
| 2 | 2 |
| 3 | 2 |
| 4 | 2 |
| NULL | 1 |

---

## 20. Avg salary per department

| department_id | avg_salary |
|---------------|------------|
| 1 | 65000.00 |
| 2 | 55000.00 |
| 3 | 50000.00 |
| 4 | 61500.00 |
| NULL | 48000.00 |

---

## 21. Total salary per department

| department_id | total_salary |
|---------------|--------------|
| 1 | 195000.00 |
| 2 | 110000.00 |
| 3 | 100000.00 |
| 4 | 123000.00 |
| NULL | 48000.00 |

---

## 22. Avg age per department

| department_id | avg_age |
|---------------|---------|
| 1 | 33.33 |
| 2 | 31.50 |
| 3 | 32.50 |
| 4 | 34.00 |
| NULL | 32.00 |

---

## 23. Employees per year

| year | employee_count |
|------|----------------|
| 2018 | 2 |
| 2019 | 2 |
| 2020 | 2 |
| 2021 | 3 |
| 2022 | 1 |

---

## 24. Max salary per department

| department_id | max_salary |
|---------------|------------|
| 1 | 80000.00 |
| 2 | 60000.00 |
| 3 | 55000.00 |
| 4 | 70000.00 |
| NULL | 48000.00 |

---

## 25. Department with highest average salary

| department_id |
|---------------|
| 1 |

---

## 26. Departments with more than 2 employees

| department_id |
|---------------|
| 1 |

---

## 27. Departments with avg salary > 55000

| department_id |
|---------------|
| 1 |
| 4 |

---

## 28. Years with more than 1 employee

| year |
|------|
| 2018 |
| 2019 |
| 2020 |
| 2021 |

---

## 29. Departments with total salary < 100000

| department_id |
|---------------|
| NULL |

---

## 30. Departments with max salary > 75000

| department_id |
|---------------|
| 1 |
