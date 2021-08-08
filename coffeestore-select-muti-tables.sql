USE coffee_store;

# inner join 交集
SELECT products.name, orders.order_time FROM orders
INNER JOIN products ON orders.product_id = products.id;

# shorthand
SELECT p.name, p.price, o.order_time FROM orders o
INNER JOIN products p ON o.product_id = p.id
ORDER BY o.order_time;


# left join
# 讓其中一筆訂單查不到id
UPDATE orders
SET customer_id = NULL
WHERE id = 1;

# 結果是會返回所有訂單資訊，查找不到就是null
# 選取order去對customer查找
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM orders o
LEFT JOIN customers c ON o.customer_id = c.id
ORDER BY o.order_time
LIMIT 10;

# 選取customer去對orders查找
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
LEFT JOIN orders o ON o.customer_id = c.id
ORDER BY o.order_time
LIMIT 10;

# right join
SELECT o.id, c.phone_number, c.last_name, o.order_time FROM customers c
RIGHT JOIN orders o ON o.customer_id = c.id
ORDER BY o.order_time
LIMIT 10;

# 復原訂單id
UPDATE orders
SET customer_id = 1
WHERE id = 1;
