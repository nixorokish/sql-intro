CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(55) NOT NULL,
    age INTEGER,
    height FLOAT,
    city VARCHAR(30),
    favorite_color VARCHAR(20)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('kseebug', '45', 182, 'Dallas, TX', 'red'),
('sally', '50', '164', 'Cincinnati, OH', 'blue'),
('muhammad', '34', '172', 'New York City, NY', 'aquamarine'),
('guy', '68', '169', 'Cordova, AK', 'blue'),
('jean-pierre', '42', '155', 'Lausanne, CH', 'orange')
)

-- Select all the people in the person table by height from tallest to shortest.
SELECT * FROM person
ORDER BY height DESC;

-- Select all the people in the person table by height from shortest to tallest.
SELECT * FROM person
ORDER BY height ASC;

-- Select all the people in the person table by age from oldest to youngest.
SELECT * FROM person
ORDER BY age DESC;

-- Select all the people in the person table older than age 20.
SELECT * FROM person
WHERE age > 20;

-- Select all the people in the person table that are exactly 18.
SELECT * FROM person
WHERE age = 18;

-- Select all the people in the person table that are less than 20 and older than 30.
SELECT * FROM person
WHERE age NOT BETWEEN 20 AND 30;

-- Select all the people in the person table that are not 27 (use not equals).
SELECT * FROM person
WHERE age <> 27;

-- Select all the people in the person table where their favorite color is not red.
SELECT * FROM person
WHERE favorite_color <> 'red';

-- Select all the people in the person table where their favorite color is not red and is not blue.
SELECT * FROM person
WHERE favorite_color <> 'red' AND favorite_color <> 'blue';

-- Select all the people in the person table where their favorite color is orange or green.
SELECT * FROM person
WHERE favorite_color = 'orange' OR favorite_color = 'green';

-- Select all the people in the person table where their favorite color is orange, green or blue (use IN).
SELECT * FROM person
WHERE favorite_color NOT IN ('orange', 'green', 'blue');

-- Select all the people in the person table where their favorite color is yellow or purple (use IN).
SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple')