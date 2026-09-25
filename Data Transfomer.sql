--CREATE CUSTOMER TABLE

CREATE TABLE Customers_New(
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    RegistrationDate DATE
);

--INSERT RECORD

INSERT INTO Customers_New
(CustomerID, FirstName, LastName, Email, RegistrationDate)
VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '2022-03-15'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '2021-11-02');

--CREATE ORDER TABLE
CREATE TABLE Orders_New (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),

    FOREIGN KEY (CustomerID)
    REFERENCES Customers_New(CustomerID)
);

--INSERT RECORD
INSERT INTO Orders_New
(OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
(101, 1, '2023-07-01', 150.50),
(102, 2, '2023-07-03', 200.75);

--CREATE EMPLOYEES TABLE
CREATE TABLE Employees_New (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10,2)
);
--INSERT RECORD
INSERT INTO Employees_New
(EmployeeID, FirstName, LastName, Department, HireDate, Salary)
VALUES
(1, 'Mark', 'Johnson', 'Sales', '2020-01-15', 50000.00),
(2, 'Susan', 'Lee', 'HR', '2021-03-20', 55000.00);

-- 1. INNER JOIN:
-- Retrieve all orders and customer details where orders exist.

SELECT
    o.OrderID,
    o.CustomerID,
    c.FirstName,
    c.LastName,
    c.Email,
    o.OrderDate,
    o.TotalAmount
FROM Customers_New c
INNER JOIN Orders_New o
ON c.CustomerID = o.CustomerID;

-- 2. LEFT JOIN:
-- Retrieve all customers and their corresponding orders (if any).

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers_New c
LEFT JOIN Orders_New o
ON c.CustomerID = o.CustomerID;

-- 3. RIGHT JOIN:
-- Retrieve all orders and their corresponding customers (if any).

SELECT
    o.OrderID,
    o.CustomerID,
    o.OrderDate,
    o.TotalAmount,
    c.FirstName,
    c.LastName,
    c.Email
FROM Customers_New c
RIGHT JOIN Orders_New o
ON c.CustomerID = o.CustomerID;

-- 4. FULL OUTER JOIN:
-- Retrieve all customers and all orders, regardless of matching.

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.OrderDate,
    o.TotalAmount
FROM Customers_New AS c
FULL OUTER JOIN Orders_New AS o
ON c.CustomerID = o.CustomerID;

-- 5. Subquery:
-- Find customers who have placed orders worth more than
-- the average order amount.

SELECT
    c.CustomerID,
    c.FirstName,
    c.LastName,
    o.OrderID,
    o.TotalAmount
FROM Customers_New c
INNER JOIN Orders_New o
ON c.CustomerID = o.CustomerID
WHERE o.TotalAmount > (
    SELECT AVG(TotalAmount)
    FROM Orders_New
);

-- 6. Subquery:
-- Find employees with salaries above the average salary.

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Department,
    Salary
FROM Employees_New
WHERE Salary > (
    SELECT AVG(Salary)
    FROM Employees_New
);

-- 7. Extract the year and month from the OrderDate.

SELECT
    OrderID,
    OrderDate,
    EXTRACT(YEAR FROM OrderDate) AS OrderYear,
    EXTRACT(MONTH FROM OrderDate) AS OrderMonth
FROM Orders_New;

-- 8. Calculate the difference in days between
-- OrderDate and current date.

SELECT
    OrderID,
    OrderDate,
    CURRENT_DATE - OrderDate AS DifferenceInDays
FROM Orders_New;

-- 9. Format the OrderDate to a more readable format
-- DD-MMM-YYYY.

SELECT
    OrderID,
    TO_CHAR(OrderDate, 'DD-Mon-YYYY') AS FormattedOrderDate
FROM Orders_New

-- 10. Concatenate FirstName and LastName to form a full name.

SELECT
    CustomerID,
    CONCAT(FirstName, ' ', LastName) AS FullName
FROM Customers_New;

-- 11. Replace part of a string
-- Replace 'John' with 'Jonathan'.

SELECT
    CustomerID,
    REPLACE(FirstName, 'John', 'Jonathan') AS UpdatedFirstName
FROM Customers_New;

-- 12. Convert FirstName to uppercase
-- and LastName to lowercase.

SELECT
    EmployeeID,
    UPPER(FirstName) AS FirstName_Upper,
    LOWER(LastName) AS LastName_Lower
FROM Employees_New;

-- 13. Trim extra spaces from the Email field.

SELECT
    CustomerID,
    TRIM(Email) AS TrimmedEmail
FROM Customers_New;

-- 14. Calculate the running total of TotalAmount for each order.

SELECT
    OrderID,
    OrderDate,
    TotalAmount,
    SUM(TotalAmount) OVER (
        ORDER BY OrderDate
        ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS RunningTotal
FROM Orders_New;

-- 15. Rank orders based on TotalAmount using RANK().

SELECT
    OrderID,
    TotalAmount,
    RANK() OVER (
        ORDER BY TotalAmount DESC
    ) AS OrderRank
FROM Orders_New;

-- 16. Assign a discount based on TotalAmount.
-- > 1000 = 10% discount
-- > 500  = 5% discount

SELECT
    OrderID,
    TotalAmount,
    CASE
        WHEN TotalAmount > 1000 THEN '10% Off'
        WHEN TotalAmount > 500 THEN '5% Off'
        ELSE 'No Discount'
    END AS Discount
FROM Orders_New;

-- 17. Categorize employees' salaries as High, Medium, or Low.

SELECT
    EmployeeID,
    FirstName,
    LastName,
    Salary,
    CASE
        WHEN Salary >= 55000 THEN 'High'
        WHEN Salary >= 40000 THEN 'Medium'
        ELSE 'Low'
    END AS SalaryCategory
FROM Employees_New;