DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10,2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5,2)
);

INSERT INTO products
(product_name, category, price, quantity, added_date, discount_rate)
VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Electronics', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-10', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-18', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-10', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


select * from products;

--AGGREGATE FUNCTIONS

select sum(quantity) as total_quantity
from products;

select sum(quantity) as quantity_of_ele
from products
where category='Electronics' and price >20000;


select count(*) as total_no_pro
from products;

select avg(price) as avg_price
from products;


select max(quantity) as max_quantity
from products;

select min(quantity) as min_quantity
from products;


--STRING FUNCTIONS

select * from products;

select upper(product_name) as product_name
from products;


select lower(product_name) as product_names
from products;



select length(product_name) as product_length
from products;

select length(product_name)
from products
where product_name='Laptop';


select concat(product_name,'-',category) as new_column
from products;

select substring(product_name,1,5)
as short_name from products;


select trim ('    Monitor    ') as trimmed_text;


select replace(product_name,'phone','device')
from products;

select * from products;

select right (category,3) as category_last
from products;
select left (category,3) as category_last
from products;


---DATE AND TIME 


select now() --current time
select current_date--todays date

select Added_date,current_date,(current_date-added_date) as day_diff
from products;

select product_name,
extract(year from added_date)as year_added
from products;

select product_name,
extract(month from added_date)as month_added
from products;

select product_name,
extract(day from added_date)as day_added
from products;

select product_name,
AGE(current_date,added_date) as age_since_added
from products;


select product_name,
	TO_CHAR(added_date,'DD-MM-YYYY') as age_since_added
from products;


SELECT PRODUCT_NAME,added_date,
	date_part('dow',added_date)as day_of_week
from products;--dow,month,year,etc....


SELECT PRODUCT_NAME,
	date_trunc('month',added_date) as month_start
from products;

SELECT PRODUCT_NAME,added_date,added_date + Interval '6days ' as new_date
from products;





