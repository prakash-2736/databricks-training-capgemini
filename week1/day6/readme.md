# Day 6 - College Management System SQL Advanced Practice

## 📌 Overview

Day 6 focused on solving advanced SQL queries using a realistic College Management System database.

This practice involved working with multiple related tables, joins, aggregations, subqueries, Common Table Expressions (CTEs), and advanced window functions to solve business-style analytical problems.

The database simulated a real academic environment with students, departments, staff, subjects, and examination marks.

---

## 📂 Files Included

- `datacreation.sql` → Complete College Management System schema and sample data
- `queries.sql` → 50 advanced SQL practice questions and solutions
- `outputs.md` → Query outputs with formatted results
- `README.md` → Documentation for Day 6 work

---

## 🛠️ Tools Used

- DB-Fiddle
- GitHub
- SQL (MySQL / PostgreSQL compatible concepts)

---

## 🗄️ Database Schema

This project uses the following tables:

### Department
Stores department information:
- department_id
- department_name
- department_block_number
- yearly_budget

### Staff
Stores faculty/staff details:
- staff_id
- staff_name
- designation
- salary
- hire_date
- department_id

### Student
Stores student details:
- student_id
- student_name
- gender
- city
- admission_year
- department_id
- cgpa

### Subject
Stores academic subject details:
- subject_id
- subject_name
- subject_code
- semester
- credits
- staff_id

### Mark
Stores examination performance:
- student_id
- subject_id
- exam_type
- marks
- exam_date

---

## 📚 Topics Covered

### 🔹 Joins
Worked extensively with:
- INNER JOIN
- LEFT JOIN
- Multi-table joins

Examples:
- Students with department names
- Staff with department details
- Students with marks and subjects
- Subjects with assigned faculty

---

### 🔹 Aggregate Functions
Used:
- SUM()
- AVG()
- MAX()
- MIN()
- COUNT()

Examples:
- Department salary expenditure
- Average CGPA by department
- Subject-wise marks analysis
- Student performance summaries

---

### 🔹 GROUP BY and HAVING
Performed grouped reporting analysis.

Examples:
- Departments with more than 2 staff
- Departments with salary expenditure above threshold
- Subject performance filtering
- Student admission statistics

---

### 🔹 Subqueries
Implemented analytical filtering using nested SQL queries.

Examples:
- Students above average CGPA
- Staff earning above department average
- Highest scoring students
- Third highest marks

---

### 🔹 Common Table Expressions (CTEs)
Used modular SQL logic for cleaner complex queries.

Examples:
- Department average salary calculations
- Maximum marks analysis
- Student ranking preparation
- Reporting summaries

---

### 🔹 Window Functions
Advanced analytical SQL functions used:

- `ROW_NUMBER()`
- `RANK()`
- `DENSE_RANK()`
- `NTILE()`
- `LAG()`
- `LEAD()`
- `SUM() OVER()`
- `AVG() OVER()`
- `MAX() OVER()`

Examples:
- Student ranking by CGPA
- Salary rankings
- Running totals
- Cumulative averages
- Quartile segmentation
- Previous/next exam comparison

---

### 🔹 Business Analytics Queries
Real-world reporting scenarios:

- Top performing students
- Department benchmarking
- Salary analysis
- Above-average performers
- Department-wise performance comparison
- Comprehensive academic reporting

---

## 📊 Work Done

- Designed and populated a realistic college relational database
- Solved 50 advanced SQL analytical queries
- Applied joins across multiple related tables
- Built reusable CTE-based analytical queries
- Practiced ranking, partitioning, and cumulative reporting
- Simulated real-world reporting use cases

---

## 📘 Key Learnings

- Handling relational schema with multiple foreign keys
- Writing complex join queries efficiently
- Using subqueries for dynamic filtering
- Building modular logic with CTEs
- Applying advanced window functions
- Generating analytical reports using SQL
- Working with NULL values in practical scenarios
- Combining business logic with database querying

---

## 🚀 Conclusion

Day 6 significantly strengthened advanced SQL and analytical problem-solving skills.

This project closely simulates real-world database querying scenarios used in data engineering, reporting systems, academic management platforms, and analytics workflows.
