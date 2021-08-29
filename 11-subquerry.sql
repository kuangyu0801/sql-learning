USE cinema_booking_system;

# non-correlated subquerry
SELECT id, start_time FROM screenings
WHERE film_id IN
	(SELECT id FROM films
	 WHERE length_min > 120);

SELECT first_name, last_name, email FROM customers
WHERE id IN (SELECT customer_id FROM bookings
WHERE screening_id = 1);

# query from a derived table
SELECT MAX(no_seats) FROM
(SELECT booking_id, COUNT(seat_id) AS no_seats FROM reserved_seat
GROUP BY booking_id) b;

# correlstated subquerry
# inner query is run with every query of cols in outer query
SELECT screening_id, customer_id,
(SELECT COUNT(seat_id)
FROM reserved_seat WHERE booking_id = b.id)
FROM booking b
ORDER BY screening_id;

# Exercise
SELECT name, length_min FROM films
WHERE length_min > (SELECT AVG(length_min) FROM films);

SELECT MAX(cnt), MIN(cnt) FROM
(SELECT film_id, COUNT(id) AS cnt FROM screenings
GROUP BY film_id) a;

SELECT name,
(SELECT COUNT(id) FROM screenings
WHERE film_id = f.id)
FROM films f;
