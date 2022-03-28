-- Add 3 new artists to the artist table. (It already exists.)
INSERT INTO artist (name)
VALUES ('Panda Bear'),
('Explosions in the Sky')
('Mogwai')
('Peach Pit')
('Julian Casablancas')

-- Select 10 artists in reverse alphabetical order.
SELECT * FROM artist
ORDER BY name DESC
LIMIT 10;

-- Select 5 artists in alphabetical order.
SELECT * FROM artist
ORDER BY name ASC
OFFSET 205
LIMIT 5;

-- Select all artists that start with the word ‘Black’.
SELECT * FROM artist
WHERE name LIKE 'Black%'

-- Select all artists that contain the word ‘Black’.
SELECT * FROM artist
WHERE LOWER(name) LIKE '%black%'