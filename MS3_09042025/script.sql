-- EX 1
SELECT 
    username,
    SUM(price) AS TotalPrice
FROM users
JOIN orders ON users.id = orders.user_id
JOIN order_items ON orders.id = order_items.order_id
JOIN products ON products.id = order_items.product_id
GROUP BY users.id
HAVING price > 1000
ORDER BY TotalPrice DESC;

-- EX2
SELECT 
    products.name,
    SUM(order_items.product_id) AS NbrProducts
FROM products
JOIN order_items ON order_items.product_id = products.id
ORDER BY NbrProducts DESC
LIMIT 5;

-- EX3
SELECT 
    users.username,
    products.name,
    order_items.quantity,
    products.price,
    orders.order_date,
    (order_items.quantity * products.price) AS TotalPrice
FROM users
JOIN orders ON users.id = orders.user_id,
JOIN order_items ON order_items.order_id = orders.id
JOIN products ON order_items.product_id = products.id
ORDER BY orders.order_date DESC;
