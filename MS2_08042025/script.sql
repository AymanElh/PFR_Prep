SELECT 
    users.name, 
    AVG(price)
FROM users
JOIN orders ON orders.user_id = users.id
JOIN order_items ON order_items.order_id = orders.id
JOIN products ON products.id = order_items.product_id
GROUP BY users.name;


SELECT 
    products.name
    SUM(order_items.id)
FROM products
JOIN order_items ON order_items.product_id = products.id
GROUP BY products.id;


