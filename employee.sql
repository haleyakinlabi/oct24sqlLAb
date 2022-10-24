--List all employees first and last names only that live in Calgary.
--1

-- customer_id INTEGER
-- last_name VARCHAR (40)
-- employee_id INTEGER
-- first_name VARCHAR (20)
-- title VARCHAR (30)
-- reports_to INTEGER
-- birth_date TIMESTAMP
-- hire_date TIMESTAMP
-- address VARCHAR (70)
-- city VARCHAR (40)
-- state VARCHAR (40)
-- country VARCHAR (40)
-- postal_code VARCHAR (10)
-- phone VARCHAR (24)
-- fax VARCHAR (24)
-- email VARCHAR (60)
-- last_name VARCHAR (20

SELECT first_name,
  last_name,
  city
FROM employee
WHERE city LIKE 'Cal%';


-- Find the birthdate for the youngest employee.
--2

SELECT MIN(birth_date)
FROM employee;

-- Find the birthdate for the oldest employee.
--3
SELECT MAX(birth_date)
FROM employee;

-- Find everyone that reports to Nancy Edwards (use the ReportsTo column). * You will need to query the employee table to find the id for Nancy Edwards
--4
--employee id:2

SELECT * FROM employee
WHERE reports_to = 2;

-- Count how many people live in Lethbridge.
--5

SELECT SUM(employee_id)
WHERE city LIKE 'Leth%';


