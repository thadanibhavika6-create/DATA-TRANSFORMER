# DATA-TRANSFORMER

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0f3d3b,100:2f9e94&height=200&section=header&text=SQL%20DATA%20TRANSFORMER&fontSize=40&fontColor=ffffff&animation=fadeIn&fontAlignY=38&desc=Joins%20%7C%20Subqueries%20%7C%20Date%20%26%20String%20Functions%20%7C%20Window%20Functions&descAlignY=58&descSize=18" width="100%"/>

<img src="https://readme-typing-svg.demolab.com/?lines=Customers+%E2%86%92+Orders+relational+design;17+queries+covering+core+SQL+concepts;Joins%2C+subqueries+%26+window+functions;Beginner-friendly+and+portfolio-ready&font=Fira+Code&center=true&width=650&height=45&color=2F9E94&vCenter=true&size=22&pause=1200"/>

<br/>

![SQL](https://img.shields.io/badge/SQL-PostgreSQL-336791?style=for-the-badge&logo=postgresql&logoColor=white)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen?style=for-the-badge)
![Queries](https://img.shields.io/badge/Queries-17-success?style=for-the-badge)
![Level](https://img.shields.io/badge/Level-Beginner-orange?style=for-the-badge)

**🔴 [Open the live query explorer →](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr)**
<br/><sub>Click any of the 17 queries to see its SQL and result on the sample database, all in one page.</sub>

</div>

---

## 📌 Project Overview

This project builds a small **e-commerce style database** with **Customers, Orders,** and **Employees** tables, then answers real business questions with 17 SQL queries.

It works as a practice sheet and a quick reference for **table design**, **joins**, **subqueries**, **date and string functions**, **window functions**, and **CASE logic**.

<br/>

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=rect&color=0:0f3d3b,100:2f9e94&height=3&section=header" width="100%"/>
</div>

## 🗂️ Database Schema

### 1️⃣ `Customers_New`
| Column | Type | Description |
|---|---|---|
| CustomerID | INT (PK) | Unique ID for each customer |
| FirstName | VARCHAR(50) | Customer's first name |
| LastName | VARCHAR(50) | Customer's last name |
| Email | VARCHAR(100) | Contact email |
| RegistrationDate | DATE | Date the customer registered |

### 2️⃣ `Orders_New`
| Column | Type | Description |
|---|---|---|
| OrderID | INT (PK) | Unique ID for each order |
| CustomerID | INT (FK) | References `Customers_New(CustomerID)` |
| OrderDate | DATE | Date the order was placed |
| TotalAmount | DECIMAL(10,2) | Order value |

### 3️⃣ `Employees_New`
| Column | Type | Description |
|---|---|---|
| EmployeeID | INT (PK) | Unique ID for each employee |
| FirstName | VARCHAR(50) | Employee's first name |
| LastName | VARCHAR(50) | Employee's last name |
| Department | VARCHAR(50) | Department name |
| HireDate | DATE | Date of joining |
| Salary | DECIMAL(10,2) | Salary amount |

**Relationships**
```
Customers_New 1───N Orders_New
Employees_New (standalone table)
```

<br/>

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=rect&color=0:0f3d3b,100:2f9e94&height=3&section=header" width="100%"/>
</div>

## ⚙️ Features / Operations Covered

<table>
<tr>
<td width="50%" valign="top">

**🔹 Joins**
- `INNER JOIN`: orders with customer details
- `LEFT JOIN`: all customers and their orders
- `RIGHT JOIN`: all orders and their customers
- `FULL OUTER JOIN`: everything, matched or not

</td>
<td width="50%" valign="top">

**🔹 Subqueries**
- Orders above the average order amount
- Employees above the average salary

</td>
</tr>
<tr>
<td width="50%" valign="top">

**🔹 Date Functions**
- `EXTRACT` year and month
- Days between order date and today
- `TO_CHAR` for `DD-Mon-YYYY` format

</td>
<td width="50%" valign="top">

**🔹 String Functions**
- `CONCAT` for full name
- `REPLACE` part of a string
- `UPPER` and `LOWER` case
- `TRIM` extra spaces

</td>
</tr>
<tr>
<td width="50%" valign="top">

**🔹 Window Functions**
- Running total with `SUM() OVER`
- Order ranking with `RANK()`

</td>
<td width="50%" valign="top">

**🔹 CASE Statements**
- Discount tier from order amount
- Salary category: High / Medium / Low

</td>
</tr>
</table>

<br/>

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=rect&color=0:0f3d3b,100:2f9e94&height=3&section=header" width="100%"/>
</div>

## 🔗 Query Index

| # | Query | Concept |
|:-:|---|---|
| 1 | [INNER JOIN](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q1) | Joins |
| 2 | [LEFT JOIN](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q2) | Joins |
| 3 | [RIGHT JOIN](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q3) | Joins |
| 4 | [FULL OUTER JOIN](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q4) | Joins |
| 5 | [Orders above average](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q5) | Subquery |
| 6 | [Employees above average salary](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q6) | Subquery |
| 7 | [Extract year and month](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q7) | Date |
| 8 | [Days since order](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q8) | Date |
| 9 | [Format date](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q9) | Date |
| 10 | [Full name](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q10) | String |
| 11 | [Replace text](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q11) | String |
| 12 | [Upper and lower case](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q12) | String |
| 13 | [Trim spaces](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q13) | String |
| 14 | [Running total](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q14) | Window |
| 15 | [Rank orders](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q15) | Window |
| 16 | [Discount by amount](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q16) | CASE |
| 17 | [Salary category](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr#q17) | CASE |

<br/>

## 🛠️ Tech Stack

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-336791?style=flat-square&logo=postgresql&logoColor=white)
![pgAdmin](https://img.shields.io/badge/pgAdmin-336791?style=flat-square&logo=postgresql&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL_compatible*-4479A1?style=flat-square&logo=mysql&logoColor=white)

> ⚠️ **Note:** `TO_CHAR(...)`, `EXTRACT(...)`, and `CURRENT_DATE - date` are PostgreSQL syntax.
> MySQL uses `DATE_FORMAT(...)` and `DATEDIFF(...)`, and it has no `FULL OUTER JOIN`.

<br/>

## ▶️ How to Run

```bash
1. Open your SQL client (pgAdmin / DBeaver / psql)
2. CREATE DATABASE data_transformer;
3. Run "Data Transfomer.sql" (it creates the tables, inserts data
   and runs all 17 queries)
4. Check the results in your SQL client's output panel
```

Prefer zero setup? Open the **[live query explorer](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr)** and browse every query instantly.

<br/>

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=rect&color=0:0f3d3b,100:2f9e94&height=3&section=header" width="100%"/>
</div>

## 🧠 What You Will Learn

- 🔑 Designing tables with primary and foreign keys
- 🔀 Combining data from related tables with all four join types
- 🧩 Filtering data dynamically with subqueries
- 📅 Transforming dates and text with built-in functions
- 📈 Running totals and rankings with window functions
- 🎯 Adding business rules with CASE expressions

<br/>

## 📁 File Structure

```
├── Data Transfomer.sql   # tables + sample data + 17 queries
└── README.md             # project documentation (this file)
```

## 🚀 Future Improvements

- [ ] Add more sample data for richer results
- [ ] Add `GROUP BY` and `HAVING` aggregate queries
- [ ] Add CTE (`WITH`) examples
- [ ] Add views and stored procedures
- [ ] Port date and string functions to MySQL / SQL Server

<br/>

## 🖥️ Live Preview

Open the clickable query console and try all 17 queries yourself:

**👉 [claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr](https://claude.ai/artifact/N42gAcnUyBDbDi3VDrKdNr)**

<br/>

<div align="center">

### 👤 Author

**Bhavika Thadani**
📍 Ahmedabad

Made with ❤️ to strengthen SQL fundamentals: joins, subqueries and window functions.

⭐ **If you found this project useful, consider giving it a star!**

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:2f9e94,100:0f3d3b&height=100&section=footer" width="100%"/>

</div>
