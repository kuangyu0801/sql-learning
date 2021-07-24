USE test;

ALTER TABLE addresses
ADD PRIMARY KEY (id);

DESCRIBE addresses;

ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id) REFERENCES addresses (id);

DESCRIBE people;

ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress;

DESCRIBE people;