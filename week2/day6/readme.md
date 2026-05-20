# Week 2 - Day 6: SQL Regular Expressions (Regex) Practice

## 📌 Overview

Week 2 Day 6 focused on practicing SQL Regular Expressions (Regex) for pattern matching, validation, extraction, and data cleaning.

Regular expressions are extremely useful in real-world data engineering tasks for validating structured inputs, cleaning messy data, extracting meaningful information, and implementing data quality checks.

This assignment emphasized practical regex-based SQL transformations and validation logic.

---

## 📂 Files Included

- `queries.sql` → Contains regex practice queries and assignments
- `README.md` → Documentation for Week 2 Day 6 work

---

## 🛠️ Tools Used

- DB-Fiddle
- SQL
- GitHub

---

## 📚 Topics Covered

### 🔹 Pattern Matching with RLIKE

Used regex pattern matching for validation.

Functions / operators:
- `RLIKE`

Applications:
- Username validation
- Email validation
- URL validation
- Product code validation
- Phone number validation
- Password strength checks

Examples:
- Letters followed by numbers
- HTTP / HTTPS URL checks
- Structured code validation

---

### 🔹 Data Extraction using REGEXP_EXTRACT

Used regex extraction functions for retrieving structured values.

Functions:
- `REGEXP_EXTRACT()`
- `REGEXP_EXTRACT_ALL()`

Applications:
- Extract phone number digits
- Extract email username
- Extract email domain
- Extract version numbers

Examples:
- Pulling data from semi-structured text
- Text parsing logic

---

### 🔹 Data Cleaning using REGEXP_REPLACE

Used regex replacement for cleaning and transformation.

Functions:
- `REGEXP_REPLACE()`

Applications:
- Remove special characters
- Replace digits
- Clean identifiers
- Standardize text values

Examples:
- SSN cleanup
- Product string cleaning
- Removing unwanted symbols

---

### 🔹 Validation Logic

Practical validation scenarios implemented:

- Email format validation
- Phone number format validation
- Product code validation
- Password policy checks
- URL validation
- Alphabet-only checks

These mimic real production data quality checks.

---

### 🔹 Advanced Regex Patterns

Patterns practiced:

```sql
^[a-z]+[0-9]+$
