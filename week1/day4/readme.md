# Day 4 - SQL Window Functions Practice

## 📌 Overview

Day 4 focused on advanced SQL analytical querying using Window Functions.

The practice covered ranking functions, partitioning, cumulative calculations, lead/lag analysis, moving averages, and salary analytics using SQL window functions.

This topic is important for real-world reporting, analytics, and data engineering workflows.

---

## 📂 Files Included

- `datacreation.sql` → Contains table creation and sample data for employees and orders
- `queries.sql` → Contains 20 SQL window function queries
- `outputs.md` → Contains formatted outputs for all queries
- `README.md` → Documentation for Day 4 work

---

## 🛠️ Tools Used

- DB-Fiddle
- GitHub
- SQL

---

## 📚 Topics Covered

### 🔹 Ranking Functions
Used SQL ranking functions for employee salary analysis:

- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`

Examples:
- Assign row numbers by salary
- Rank employees by salary
- Find top highest-paid employees

---

### 🔹 PARTITION BY
Used partitioning for department-wise calculations.

Examples:
- Ranking employees within departments
- Highest salary in each department
- Department average salary
- Department payroll

---

### 🔹 Aggregate Window Functions
Applied aggregate functions using OVER clause.

Functions used:
- `SUM() OVER()`
- `AVG() OVER()`
- `COUNT() OVER()`
- `MAX() OVER()`

Examples:
- Running total
- Cumulative sales
- Department payroll
- Employee contribution percentage

---

### 🔹 LAG and LEAD
Used row comparison functions.

Functions:
- `LAG()`
- `LEAD()`

Examples:
- Previous order amount
- Next order amount
- Difference between current and previous order

---

### 🔹 Moving Window Analysis
Used frame clauses for trend analysis.

Examples:
- Moving average of last 3 orders

Concept used:
```sql
ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
