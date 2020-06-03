CREATE TABLE users(
    user_id SERIAL PRIMARY KEY,
    first_name TEXT,
    age INT,
    email TEXT
);

CREATE TABLE product(
    product_id SERIAL PRIMARY KEY,
    name TEXT,
    type TEXT,
    price INT
);

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    product_id INT REFERENCES product(product_id),
    total INT
);

--Create 3 users 
INSERT INTO users(email, first_name, age)
VALUES ('dj@test.com', 'DJ', 23),
       ('mollie@test.com', 'Mollie', 23),
       ('winslow@test.com', 'Winslow', 14);

--Create 3 Products
INSERT INTO product (type, name, price)
VALUES ('dessert', 'cookie', 1),
	   ('vegetable', 'potato', 1),
       ('fruit', 'avocado', 2);

--Create 3 orders
INSERT INTO orders(product_id, user_id, total)
VALUES (1, 2, 4),
	   (2, 3, 6),
       (3, 1, 3);

--All products from first order
SELECT product_id FROM orders
WHERE order_id=1;

--Get all orders
SELECT * FROM orders;

--Get the total from an order
SELECT total FROM orders
WHERE order_id = $1;

--get all orders from a user
SELECT order_id FROM orders
JOIN users ON users.user_id = orders.user_id;

--Get total of orders for one user
SELECT order_id FROM orders
JOIN users ON users.user_id = orders.user_id
WHERE order_id=$1;

