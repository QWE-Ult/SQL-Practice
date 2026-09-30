-- Drop the table if it already exists
DROP TABLE IF EXISTS employees;

-- Create the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10,2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age)
VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


select * from employees;


select first_name,department from employees

update employees 
set salary=salary*1.10
where department='IT';

delete from employees
where age >34

alter table employees 
add column email varchar(100);

alter table employees
rename column department to dept_name;

select first_name from employees
where joining_date > '2021-1-1';


alter table employees
alter column salary type int;

SELECT age, salary
FROM employees
ORDER BY salary DESC;

select * from employees;

INSERT INTO employees
(first_name, last_name, dept_name, salary, joining_date, age)
VALUES
('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);

UPDATE employees
SET age = age + 1;
