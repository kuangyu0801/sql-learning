USE cinema_booking_system;

DESCRIBE films;

SELECT * FROM films
WHERE length_min > 120;

# show the film name with most screening
SELECT f.name, COUNT(film_id) AS showings FROM screenings s
JOIN films f ON f.id = s.film_id
GROUP BY film_id
ORDER BY showings DESC
LIMIT 1;

SELECT COUNT(*) AS no_bookings FROM bookings
WHERE screening_id IN
(SELECT id FROM screenings
WHERE film_id = 5);

DESCRIBE bookings;

# top 5 customer in booking number
SELECT c.first_name, c.last_name, COUNT(b.id) AS no_bookings FROM bookings b
JOIN customers c ON c.id = b.customer_id
GROUP BY c.first_name, c.last_name
ORDER BY no_bookings DESC
LIMIT 5;


SELECT * FROM films;
SELECT * FROM rooms;
SELECT * FROM screenings;

# most shown film on room Chaplin
SELECT f.name, COUNT(r.name) AS no_screenings FROM films f
JOIN screenings s ON f.id = s.film_id
JOIN rooms r ON r.id = s.room_id
WHERE r.id = 1
GROUP BY f.name
ORDER BY no_screenings DESC
LIMIT 1;

# how many customer made a booking in Oct 2017
SELECT COUNT(DISTINCT(customer_id)) AS no_customers FROM bookings;