USE coffee_store;

ALTER TABLE customers
DROP COLUMN gender;

ALTER TABLE customers
ADD COLUMN  gender ENUM('M', 'F');

DESCRIBE customers;
