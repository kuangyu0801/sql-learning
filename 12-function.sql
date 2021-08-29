USE cinema_booking_system;

SELECT * FROM customers;

# string concatenation
SELECT CONCAT(first_name, last_name) AS full_name FROM customers;
SELECT CONCAT(first_name," ", last_name) AS full_name FROM customers;

# substring (string, start, length), 1-indexed
SELECT SUBSTRING("Example", 3, 3) AS sub;

SELECT SUBSTRING(name, 1, 3) AS short_name FROM films;

# to upper/lower
SELECT UPPER(first_name) AS all_cap_full_name FROM customers;

# exercise
SELECT CONCAT(name,": ",length_min, "min") AS film_info FROM films;

SELECT SUBSTRING(email, 5) AS short_email FROM customers;

SELECT CONCAT(SUBSTRING(first_name,1,3), " ", SUBSTRING(last_name, 1, 3)) AS short_name FROM customers;