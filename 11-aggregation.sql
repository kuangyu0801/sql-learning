USE cinema_booking_system;

SELECT * FROM rooms;

SELECT SUM(no_seats) FROM rooms;

SHOW TABLES;

SELECT * FROM films;

DESCRIBE films;

SELECT MAX(length_min) FROM films;

SELECT COUNT(*) FROM bookings
WHERE customer_id = 10;

SELECT COUNT(*) FROM screenings s
JOIN films f ON s.film_id = f.id
WHERE f.name = 'Blade Runner 2049';

SELECT COUNT(DISTINCT(customer_id)) FROM bookings;

# columns must be groupped with aggregation
SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id;

# condition in GROUP must use HAVING
SELECT customer_id, screening_id, COUNT(id) FROM bookings
GROUP BY customer_id, screening_id
HAVING customer_id = 10;
 
 
 DESCRIBE reserved_seat;
 DESCRIBE bookings;
 
 SELECT b.customer_id, COUNT(rs.id) FROM bookings b
 JOIN reserved_seat rs ON b.id = rs.booking_id
 GROUP BY b.customer_id;
 
 SELECT f.name, f.length_min, COUNT(s.id) FROM films f
 JOIN screenings s ON f.id = s.film_id
 GROUP BY f.name, f.length_min
 HAVING f.length_min > 120;