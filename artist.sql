-- Add 3 new artists to the artist table. (It already exists.)
--1
-- artist
-- name VARCHAR (120)
-- artist_id INTEGER
INSERT INTO artist(name, artist_id)
VALUES ('Leonardo', 276),
('Michelangelo', 277),
('Vermeer', 278);

-- Select 10 artists in reverse alphabetical order.
--2 

SELECT name FROM artist
ORDER BY name DESC 
LIMIT 10; 

-- Select 5 artists in alphabetical order.
--3

SELECT * FROM artist 
ORDER BY name ASC
LIMIT 5; 

-- Select all artists that start with the word ‘Black’.
--4

SELECT * FROM artist
WHERE name LIKE 'black%';

-- Select all artists that contain the word ‘Black’.
--4 
SELECT * FROM artist
WHERE name LIKE '%black%';



