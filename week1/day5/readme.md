# Day 5 - SQL CTE and Advanced Analytical Queries

## 📌 Overview

Day 5 focused on advanced SQL concepts including Common Table Expressions (CTEs), Recursive CTEs, and combining window functions with analytical query patterns.

This practice helped in understanding modular query writing, reusable query blocks, hierarchical querying, ranking logic, and business analytics reporting.

---

## 📂 Files Included

- `datacreation.sql` → Contains table creation and sample data for employees and orders
- `queries.sql` → Contains advanced SQL analytical queries (21–30)
- `outputs.md` → Contains formatted outputs for all queries
- `README.md` → Documentation for Day 5 work

---

## 🛠️ Tools Used

- DB-Fiddle
- GitHub
- SQL

---

## 📚 Topics Covered

### 🔹 Common Table Expressions (CTE)

Used CTEs to improve readability and modularize complex SQL logic.

Examples:
- Total sales per employee
- Employees exceeding company average sales
- Customer total spending analysis
- Orders above average amount

Concept:
```sql
WITH cte_name AS (
    SELECT ...
)
SELECT * FROM cte_name;
