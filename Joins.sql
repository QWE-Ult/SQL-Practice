CREATE TABLE Employees3 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

INSERT INTO Employees3 (first_name, last_name, department_id)
VALUES
('Rahul', 'Sharma', 101),
('Priya', 'Mehta', 102),
('Ankit', 'Verma', 103),
('Simran', 'Kaur', NULL),
('Aman', 'Singh', 101);


CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Departments (department_id, department_name)
VALUES
(101, 'Sales'),
(102, 'Marketing'),
(103, 'IT'),
(104, 'HR');


select * from Employees3
select * from Departments

--INNER JOIN= common in both 
select e.employee_id,e.first_name,e.last_name,e.department_id,
		d.department_name
	from Employees3 e
	inner join
	departments d
	on e.department_id=d.department_id;
--(no simran kaur(missing dept id) as it is only in a)

--LEFT JOIN- value in a and common in both

select e.employee_id,e.first_name,e.last_name,e.department_id,
		d.department_name
	from Employees3 e
	LEFT join
	departments d
	on e.department_id=d.department_id;
-- missing hr as dept code 104 is not in a 


--right join =value in b(right) and common in both

select e.employee_id,e.first_name,e.last_name,e.department_id,
		d.department_name
	from Employees3 e
	right join
	departments d
	on e.department_id=d.department_id;
-- missing simran as dept id is missing 


--full outer- everything in both
select e.employee_id,e.first_name,e.last_name,e.department_id,
		d.department_name
	from Employees3 e
	full outer join
	departments d
	on e.department_id=d.department_id;


--cross join- each one of b joined with a one time

select e.employee_id,e.first_name,e.last_name,e.department_id,
		d.department_name
	from Employees3 e
	cross join
	departments d
/*rahul in sales,priya in sales....
rahul in marketing,priya in marketing,,,,
rahl in it.....
rahul in hr.....*/


--self join - join table with same table
select e1.first_name as emp_name1,
e2.first_name as emp_name2,
d.department_name

from employees3  e1 join employees3 e2
on e1.department_id=e2.department_id and e1.employee_id !=e2.employee_id
join
departments d
on 
e1.department_id=d.department_id;