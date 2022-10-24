-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.
--1 
CREATE TABLE orders(
    order_id SERIAL, 
    person_id INTEGER,
    product_name VARCHAR(40),
    product_price INTEGER,
    quantity INTEGER
);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.
--2

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (1, 'toothpaste', 5, 1),
(1, 'toothbrush', 10, 2),
(2, 'floss', 1, 5),
(2, 'water bottle', 3, 1),
(2, 'gum', 4, 2);

-- Select all the records from the orders table.
--3
SELECT * FROM orders

-- Calculate the total number of products ordered.
--4
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
--5
SELECT SUM(product_price) FROM orders;

-- Calculate the total order price by a single person_id.
--6
SELECT SUM(product_price) FROM orders
WHERE person_id = 1;
