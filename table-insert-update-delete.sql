USE coffee_store;

SELECT * FROM products;

ALTER TABLE products
ADD COLUMN coffee_origin VARCHAR(30);

DESCRIBE products;

INSERT INTO products (name, price, coffee_origin)
VALUES('Espresso', 2.50, 'Brazil');

INSERT INTO products (name, price, coffee_origin)
VALUES('Macchiato', 3.0, 'Brazil'), ('Cappucino', 3.5, 'Costa Rica');

INSERT INTO products (name, price, coffee_origin)
VALUES('Latte', 3.5, 'Indonesia'), ('Americano', 3.0, 'Brazil'),
('Flat White', 3.5, 'Indonesia'), ('Filter', 3.0, 'India');

UPDATE products
SET coffee_origin = 'Sri Lanka'
WHERE id = 7;
-- where clause no longer need to be primary key
SET SQL_SAFE_UPDATES = 0;

UPDATE products
SET price = 3.25, coffee_origin = 'Ethiopia'
WHERE name = 'Americano';

UPDATE products
SET coffee_origin = 'Columbia'
WHERE coffee_origin = 'Brazil';

DELETE FROM products
WHERE name = 'Americano';

-- delete everything
DELETE FROM products;

DROP TABLE products;
DROP TABLE orders;