CREATE DATABASE example;

USE example;

CREATE TABLE test (
	id INT auto_increment PRIMARY KEY,
    name VARCHAR(30),
    age INT
);

SELECT * FROM test;
SHOW TABLES;
-- delete everything in the table
TRUNCATE TABLE test;

DROP TABLE test;

DROP DATABASE example;