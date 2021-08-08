USE coffee_store;

# IS NULL
SELECT * FROM customers
WHERE phone_number IS NULL;

# IS NOT NULL
SELECT * FROM customers
WHERE phone_number IS NOT NULL;

SELECT first_name, phone_number FROM customers
WHERE gender = 'F' AND last_name = 'Bluth';

SELECT name from products
WHERE price > 3.00
OR coffee_origin = 'Sri Lanka';

SELECT COUNT(*) FROM customers
WHERE gender = 'M'
AND phone_number IS NOT NULL;

SELECT * FROM customers
WHERE last_name IN ('Taylor', 'Bluth' ,'Armstrong');

SELECT * FROM customers
WHERE first_name IN ('Katie', 'John' ,'George');

SELECT * FROM orders
WHERE order_time BETWEEN '2017-01-01' AND '2017-03-31';

-- %: wildcard
SELECT * FROM customers
WHERE last_name LIKE 'W%';


SELECT * FROM customers
WHERE last_name LIKE '%o%';

SELECT * FROM customers
WHERE first_name LIKE '_o_';

SELECT * FROM products
ORDER BY price ASC;

SELECT * FROM products
ORDER BY price DESC;

SELECT * FROM customers
ORDER BY last_name ASC;

SELECT DISTINCT coffee_origin from products;

SELECT DISTINCT customer_id FROM orders;

# LIMIT
SELECT * FROM customers
LIMIT 5 OFFSET 5;

# ALIAS
SELECT name AS coffee, coffee_origin AS country FROM products;

SELECT DISTINCT last_name FROM customers
ORDER BY last_name;

SELECT * FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'
AND customer_id = 1
ORDER BY order_time ASC
LIMIT 3;