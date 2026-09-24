# DATA-TRANSFORMER

<div align="center">

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=26&duration=3000&pause=1000&color=36BCF7&center=true&vCenter=true&width=700&lines=SQL+Data+Transformer+%F0%9F%97%84%EF%B8%8F;17+Queries+%7C+3+Tables+%7C+1+Database;Joins+%E2%80%A2+Subqueries+%E2%80%A2+Window+Functions;Learn+SQL+by+doing+%F0%9F%9A%80" alt="Typing SVG" />

![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=postgresql&logoColor=white)
![Database](https://img.shields.io/badge/Database-PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Queries](https://img.shields.io/badge/Queries-17-success?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner-orange?style=for-the-badge)

</div>

---

## 📖 About

A beginner-friendly SQL project with a small e-commerce style database (**Customers**, **Orders**, **Employees**) and **17 queries** covering joins, subqueries, date and string functions, window functions and CASE logic.

📂 Full script: [`Data Transfomer.sql`](./Data%20Transfomer.sql)

---

## 🧱 Tables Used

| Table | Purpose |
|-------|---------|
| 👥 `Customers_New` | Customer name, email and registration date |
| 🛒 `Orders_New` | Orders linked to customers (Foreign Key) |
| 💼 `Employees_New` | Employee department, hire date and salary |

---

## 🔗 Query Index

> 👆 Click any query to jump straight to it.

### 🔀 Joins
- [1️⃣ INNER JOIN](#1-inner-join)
- [2️⃣ LEFT JOIN](#2-left-join)
- [3️⃣ RIGHT JOIN](#3-right-join)
- [4️⃣ FULL OUTER JOIN](#4-full-outer-join)

### 🧩 Subqueries
- [5️⃣ Orders above average amount](#5-orders-above-average-amount)
- [6️⃣ Employees above average salary](#6-employees-above-average-salary)

### 📅 Date Functions
- [7️⃣ Extract year and month](#7-extract-year-and-month)
- [8️⃣ Days difference from today](#8-days-difference-from-today)
- [9️⃣ Format date (DD-Mon-YYYY)](#9-format-date)

### 🔤 String Functions
- [🔟 Concatenate full name](#10-concatenate-full-name)
- [1️⃣1️⃣ Replace text](#11-replace-text)
- [1️⃣2️⃣ Upper and lower case](#12-upper-and-lower-case)
- [1️⃣3️⃣ Trim spaces](#13-trim-spaces)

### 📈 Window Functions
- [1️⃣4️⃣ Running total](#14-running-total)
- [1️⃣5️⃣ Rank orders](#15-rank-orders)

### 🎯 CASE Statements
- [1️⃣6️⃣ Discount based on amount](#16-discount-based-on-amount)
- [1️⃣7️⃣ Salary category](#17-salary-category)

---

## 🔀 Joins

### 1. INNER JOIN
Shows all orders along with the details of the customers who placed them. Only matching records appear. &nbsp; [⬆ Back to index](#-query-index)

### 2. LEFT JOIN
Shows every customer and their orders, if any. Customers without orders still appear. &nbsp; [⬆ Back to index](#-query-index)

### 3. RIGHT JOIN
Shows every order and its customer, if any. Orders without a matching customer still appear. &nbsp; [⬆ Back to index](#-query-index)

### 4. FULL OUTER JOIN
Shows all customers and all orders, whether they match or not. &nbsp; [⬆ Back to index](#-query-index)

---

## 🧩 Subqueries

### 5. Orders above average amount
Finds customers whose order value is higher than the average order amount. &nbsp; [⬆ Back to index](#-query-index)

### 6. Employees above average salary
Lists employees who earn more than the average salary. &nbsp; [⬆ Back to index](#-query-index)

---

## 📅 Date Functions

### 7. Extract year and month
Pulls the year and month out of `OrderDate` using `EXTRACT`. &nbsp; [⬆ Back to index](#-query-index)

### 8. Days difference from today
Calculates how many days have passed since each order date. &nbsp; [⬆ Back to index](#-query-index)

### 9. Format date
Converts the order date into a readable `DD-Mon-YYYY` format using `TO_CHAR`. &nbsp; [⬆ Back to index](#-query-index)

---

## 🔤 String Functions

### 10. Concatenate full name
Joins first name and last name into one `FullName` column. &nbsp; [⬆ Back to index](#-query-index)

### 11. Replace text
Replaces `John` with `Jonathan` using `REPLACE`. &nbsp; [⬆ Back to index](#-query-index)

### 12. Upper and lower case
Shows first name in UPPERCASE and last name in lowercase. &nbsp; [⬆ Back to index](#-query-index)

### 13. Trim spaces
Removes extra spaces from the email field with `TRIM`. &nbsp; [⬆ Back to index](#-query-index)

---

## 📈 Window Functions

### 14. Running total
Calculates a cumulative total of order amounts, ordered by date. &nbsp; [⬆ Back to index](#-query-index)

### 15. Rank orders
Ranks orders from highest to lowest amount using `RANK()`. &nbsp; [⬆ Back to index](#-query-index)

---

## 🎯 CASE Statements

### 16. Discount based on amount
Assigns a discount tier: above 1000 gets 10% off, above 500 gets 5% off. &nbsp; [⬆ Back to index](#-query-index)

### 17. Salary category
Labels each employee's salary as High, Medium or Low. &nbsp; [⬆ Back to index](#-query-index)

---

## 🚀 How to Run

1. Install **PostgreSQL** and open any SQL client (pgAdmin, DBeaver or psql).
2. Create a new database.
3. Open `Data Transfomer.sql` and run it.

> 💡 Queries use PostgreSQL syntax. For MySQL, some date functions and `FULL OUTER JOIN` need changes.

---

## 👤 Author

**Your Name** &nbsp;|&nbsp; 📧 your.email@example.com &nbsp;|&nbsp; [GitHub](https://github.com/your-username) &nbsp;|&nbsp; [LinkedIn](https://linkedin.com/in/your-profile)

<div align="center">

⭐ **Like this project? Give it a star!** ⭐

</div>
