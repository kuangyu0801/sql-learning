USE test;

DESCRIBE addresses;

ALTER TABLE addresses
CHANGE `city` `city_name` VARCHAR(30);

ALTER TABLE addresses
ADD COLUMN street VARCHAR(30);