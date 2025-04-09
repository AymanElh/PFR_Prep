/*
Exercice 1 : Liste complète des commandes avec détails
Créez une requête SQL pour afficher :
La date de la commande (order_date),
Le nom d'utilisateur (username) ayant passé la commande,
Les produits commandés (name),
La quantité de chaque produit (quantity),
Le prix total pour chaque produit (calculé comme quantity * price).
*/

SELECT 
    username, 
    order_date, 
    products.name, 
    quantity, (quantity * price)
FROM products
JOIN orderdetails ON products.id = orderdetails.product_id
JOIN orders ON orders.id = orderdetails.order_id
JOIN users ON users.id = orders.user_id;

/*
Exercice 2 : Montant total dépensé par chaque utilisateur
Créez une requête SQL pour calculer le montant total dépensé par chaque utilisateur (username) sur toutes ses commandes.
*/

SELECT 
    username, 
    SUM(quantity * price) AS totalAmount
FROM users
JOIN orders ON orders.user_id = users.id
JOIN orderdetails ON orderdetails.order_id = orders.id
GROUP BY username;