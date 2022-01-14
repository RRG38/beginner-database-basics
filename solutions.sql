CREATE TABLE person (
  id SERIAL PRIMARY KEY,
  name VARCHAR(250),
  age INTEGER,
  height_in_cm INTEGER,
  city VARCHAR(250),
  favorite_color VARCHAR(250)
);

INSERT INTO person
(name, age, height_in_cm, city, favorite_color)
VALUES
('Ryan', 32, 180, 'Thornton', 'Green'),
('Elizabeth', 31, 170, 'Thornton', 'Purple'),
('Kelsey', 1, 70, 'Thornton', 'Pink'),
('Kody', 35, 190, 'Westminster', 'Orange'),
('Karter', 3, 85, 'Frederick', 'Red');

SELECT * FROM person;

SELECT * FROM person ORDER BY height_in_cm DESC;

SELECT * FROM person ORDER BY height_in_cm ASC;

SELECT * FROM person ORDER BY age DESC;

SELECT * FROM person WHERE age > 20;

SELECT * FROM person WHERE age = 18;

SELECT * FROM person WHERE age < 20 OR age > 30;

SELECT * FROM person WHERE age != 27;

SELECT * FROM person
WHERE favorite_color != 'red';

SELECT * FROM person
WHERE favorite_color != 'red' AND favorite_color != 'blue';

SELECT * FROM person
WHERE favorite_color = 'green' OR favorite_color = 'orange';

SELECT * FROM person
WHERE favorite_color IN ('orange', 'green', 'blue');

SELECT * FROM person
WHERE favorite_color IN ('yellow', 'purple');

CREATE TABLE orders(
    order_id SERIAL PRIMARY KEY,
	person_id INT REFERENCES person(id),
    product_name VARCHAR(100),
    product_price FLOAT,
    quantity INTEGER
);

INSERT INTO orders
(person_id, product_name, product_price, quantity)
VALUES
(1, 'golf ball', 2.00, 2),
(2, 'Uncle Bens Rice', 2.25, 4),
(3, 'chapstick', 1.25, 3),
(4, 'gloves', 11.99, 1),
(5, 'scarf', 22.50, 2);

SELECT * FROM orders;

SELECT sum(quantity) FROM orders;

SELECT sum(product_price*quantity) FROM orders;

SELECT person_id, sum(product_price*quantity) FROM orders
GROUP BY person_id;

INSERT INTO artist
(name, artist_id)
VALUES
('O.A.R.', 276),
('Beatles', 277),
('Nancy Sinatra', 278);

SELECT * FROM artist
ORDER BY name DESC LIMIT 10;

SELECT * FROM artist
ORDER BY name ASC LIMIT 5;

SELECT * FROM artist
WHERE name ILIKE 'black%';

SELECT * FROM artist
WHERE name ILIKE '%black%';

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
ORDER BY birth_date DESC LIMIT 1;

SELECT * FROM employee
ORDER BY birth_date ASC LIMIT 1;

SELECT * FROM employee
WHERE reports_to = 2;

SELECT count(*) FROM employee
WHERE city = 'Lethbridge';

SELECT count(*) FROM invoice
WHERE billing_country = 'USA';

SELECT max(total) FROM invoice;

SELECT min(total) FROM invoice;

SELECT * FROM invoice
WHERE total > 5;

SELECT count(*) FROM invoice
WHERE total < 5;

SELECT count(*) FROM invoice
WHERE billing_state IN ('CA', 'TX', 'AZ');

SELECT avg(total) FROM invoice;

SELECT sum(total) FROM invoice;