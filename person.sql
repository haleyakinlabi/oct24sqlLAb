-- Create a table called person that records a person’s id, name, age, height (in cm , city, favorite_color. id should be an auto-incrementing id/primary key (use type: SERIAL)
-- 1

CREATE TABLE persons(
    id SERIAL PRIMARY KEY, -- this will never be null because it's serialized
    name VARCHAR(40) NOT NULL,
    age INTEGER,
    height INTEGER,
    favorite_color VARCHAR(20),
    city VARCHAR(30)
);

-- Add 5 different people into the person database. Remember to not include the person_id because it should auto-increment.
-- 2 

INSERT INTO persons (name, age, height, favorite_color, city)
VALUES ('Nate', 51, 184,'blue', 'SaltLake' ),
('Page', 49, 165, 'red', 'SaltLake'),
('Emma', 23, 157, 'pink', 'Heber'),
('Haley', 22, 165, 'yellow', 'Heber'),
('Lee', 17, 172, 'black', 'Heber');

--Select all the people in the person table by height from tallest to shortest.
-- 3
SELECT * FROM persons
ORDER BY height DESC;

-- Select all the people in the person table by height from shortest to tallest.
-- 4 
SELECT * FROM persons
ORDER BY height ASC;

-- Select all the people in the person table by age from oldest to youngest.
--5
SELECT * FROM persons
ORDER BY age DESC;

-- Select all the people in the person table older than age 20.
--6
SELECT * FROM persons
WHERE age > 20; 

-- Select all the people in the person table that are exactly 18.
--7
SELECT * FROM persons 
WHERE age = 18; 

-- Select all the people in the person table that are less than 20 and older than 30.
--8
SELECT * FROM persons 
WHERE age >= 20 AND age <= 30;

-- Select all the people in the person table that are not 27 (use not equals).
--9 
SELECT * FROM persons
WHERE age != 27;

-- Select all the people in the person table where their favorite color is not red.
--10
SELECT * FROM persons
WHERE favorite_color != 'red'; 

-- Select all the people in the person table where their favorite color is not red and is not blue.
--11
SELECT * FROM persons
WHERE favorite_color != 'red' AND favorite_color != 'blue';

-- Select all the people in the person table where their favorite color is orange or green.
--12
SELECT * FROM persons
WHERE favorite_color = 'orange' OR favorite_color = 'green'; 

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
--13
SELECT * FROM persons
WHERE favorite_color = 'orange' OR favorite_color = 'green' OR favorite_color = 'blue'; 

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
--14
SELECT * FROM persons
WHERE favorite_color = 'yellow' OR favorite_color = 'purple'