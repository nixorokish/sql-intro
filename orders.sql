CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER NOT NULL,
    product_name VARCHAR(40) NOT NULL,
    product_price FLOAT NOT NULL,
    quantity INTEGER NOT NULL
)

INSERT INTO orders (person_id, product_name, product_price, quantity)
VALUES (0001, 'Fries', 2.99, 2),
(0002, 'Double double', 4.99, 1),
(0003, 'Burger', 3.99, 2),
(0004, 'Arnold Palmer', 1.49, 1),
(0005, 'Vanilla Milkshake', 2.99, 3)

-- Select all the records from the orders table.
SELECT * FROM orders;

-- Calculate the total number of products ordered
SELECT SUM(quantity) FROM orders;

-- Calculate the total order price.
SELECT order_id,
product_price*quantity AS total_price
FROM orders;

-- Calculate the total order price by a single person_id
SELECT order_id,
product_price * quantity AS total_price
FROM orders
WHERE person_id = 2