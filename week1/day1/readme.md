# Day 1 - SQL Basics Practice

## 📌 Overview

On Day 1, I focused on learning and practicing fundamental SQL concepts using structured queries. The goal was to understand how to retrieve, filter, and analyze data from relational tables.

---

## 📂 Files Included

* `datacreation.sql` → Contains table creation and data insertion for:

  * Employee
  * Department
  * Project

* `queries.sql` → Contains 30 SQL queries covering basic to intermediate concepts

* `outputs.md` → Contains formatted outputs for all queries

---

## 🛠️ Tools Used

* DB-Fiddle (for executing SQL queries)
* GitHub (for maintaining structured repository)

---

## 📚 Topics Covered

### 🔹 1. Basic Queries

* SELECT statements
* Retrieving all columns using `*`
* Selecting specific columns

### 🔹 2. Filtering Data

* WHERE clause
* Conditions using operators (`>`, `<`, `=`)

### 🔹 3. String Operations

* LIKE operator
* Pattern matching:

  * Starts with (`'J%'`)
  * Ends with (`'%e'`)
  * Contains (`'%a%'`)
  * Specific position (`'_o%'`)

### 🔹 4. Date Functions

* YEAR()
* MONTH()
* Date comparisons
* Filtering based on hire date

### 🔹 5. Aggregate Functions

* SUM()
* AVG()
* MIN()

### 🔹 6. GROUP BY

* Grouping records by department
* Aggregating grouped data

### 🔹 7. HAVING Clause

* Filtering grouped results
* Applying conditions on aggregates

---

## 📊 Work Done

* Created database schema using `datacreation.sql`
* Inserted sample data including edge cases (NULL department)
* Practiced 30 SQL queries step-by-step
* Verified results using DB-Fiddle
* Documented outputs in a structured table format

---

## 📘 Key Learnings

* Difference between selecting all columns and specific columns
* How filtering works using WHERE clause
* Importance of pattern matching in string queries
* Usage of aggregate functions for data analysis
* Understanding GROUP BY vs HAVING
* Writing clean and readable SQL queries using aliases

---

## 🚀 Conclusion

Day 1 helped in building a strong foundation in SQL. The concepts learned here are essential for advanced topics like joins, subqueries, and data analysis in upcoming days.
