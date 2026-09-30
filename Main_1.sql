CREATE TABLE Employee(
    Emp_Id SERIAL PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Position VARCHAR(50),
    Department VARCHAR(50),
    Hire_Date DATE,
    Salary NUMERIC(10,2)
);

SELECT * FROM Employee;

INSERT INTO Employee(name, position, department, hiring_date, salary)
VALUES
('Rahul Mehta', 'Data Analyst', 'IT', '2023-01-15', 58000),
('Priya Patel', 'Software Engineer', 'IT', '2022-08-20', 72000),
('Aman Verma', 'Business Analyst', 'Finance', '2023-03-10', 62000),
('Neha Shah', 'Data Scientist', 'IT', '2021-11-05', 85000),
('Rohan Gupta', 'Financial Analyst', 'Finance', '2022-06-18', 68000),
('Sneha Joshi', 'HR Executive', 'HR', '2023-02-25', 52000);

ALTER TABLE Employee
RENAME COLUMN hire_date TO hiring_date;

TRUNCATE TABLE Employee;
TRUNCATE TABLE Employee RESTART IDENTITY;