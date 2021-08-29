USE cinema_booking_system;

# parsing only date
SELECT DATE('2018-05-06 07:45:32');

SELECT start_time FROM screenings;

SELECT DATE(start_time) FROM screenings;

SELECT * FROM screenings
WHERE DATE(start_time) = '2017-10-03';

SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-03' AND '2017-11-03';

# parsing only month
SELECT MONTH('2018-05-06 07:45:32');

SELECT * FROM screenings
WHERE MONTH(start_time) = 10;

# parsing only year
SELECT YEAR('2018-05-06 07:45:32');

SELECT * FROM screenings
WHERE YEAR(start_time) = 2017;

# exercise
SELECT film_id, start_time FROM screenings
WHERE DATE(start_time) = '2017-10-20';

SELECT * FROM screenings
WHERE DATE(start_time) BETWEEN '2017-10-20' AND '2017-10-31';