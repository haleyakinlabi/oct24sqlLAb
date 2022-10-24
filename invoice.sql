-- Count how many orders were made from the USA.
--1
-- SELECT * FROM invoice
-- WHERE billing_country LIKE 'US%';

SELECT COUNT(total)
FROM invoice
WHERE billing_country LIKE 'US%';

-- Find the largest order total amount.
--2
SELECT MAX(total)
FROM invoice;

-- Find the smallest order total amount.
--3
SELECT MIN(total)
FROM invoice;

-- Find all orders bigger than $5.
--4
SELECT * FROM invoice
WHERE total > 5;

-- Count how many orders were smaller than $5.
--5
SELECT COUNT(total)
FROM invoice
WHERE total > 5; 

-- Count how many orders were in CA, TX, or AZ (use IN).
--6
SELECT COUNT(total)
FROM invoice
WHERE billing_state LIKE 'CA%' OR 'TX%' OR 'AZ%';

-- Get the average total of the orders.
--7

SELECT AVG(total)
FROM invoice;

-- Get the total sum of the orders.
--8

SELECT SUM(total)
FROM invoice;

-- Update the invoice with an invoice_id of 5 to have a total order amount of 24.
--9

UPDATE invoice
SET total = 24
WHERE invoice_id = 5;

-- Delete the invoice with an invoice_id of 1.
--10

DELETE
FROM invoice
WHERE invoice_id = 1;

