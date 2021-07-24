USE test;
-- add constraint
ALTER TABLE pets
ADD CONSTRAINT u_speccies UNIQUE (species);

DESCRIBE pets;

ALTER TABLE pets
DROP INDEX u_speccies;


