-- CREATE TABLE person (
--   id SERIAL PRIMARY KEY, 
--   name VARCHAR(250), 
--   age INTEGER, 
--   height_in_cm INTEGER,
--   city VARCHAR(250),
--   favorite_color VARCHAR(250)
-- );

-- INSERT INTO person
-- (name, age, height_in_cm, city, favorite_color)
-- VALUES
-- ('Ryan', 32, 180, 'Thornton', 'Green'),
-- ('Elizabeth', 31, 170, 'Thornton', 'Purple'),
-- ('Kelsey', 1, 70, 'Thornton', 'Pink'),
-- ('Kody', 35, 190, 'Westminster', 'Orange'),
-- ('Karter', 3, 85, 'Frederick', 'Red');

-- SELECT * FROM person;

-- SELECT * FROM person ORDER BY height_in_cm DESC;

-- SELECT * FROM person ORDER BY height_in_cm ASC;

-- SELECT * FROM person ORDER BY age DESC;

-- SELECT * FROM person WHERE age > 20;

-- SELECT * FROM person WHERE age = 18;

-- SELECT * FROM person WHERE age < 20 OR age > 30;

-- SELECT * FROM person WHERE age != 27;