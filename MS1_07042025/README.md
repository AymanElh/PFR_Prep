# MS 1 in JS, PHP (OOP), SQL

## MS JavaScript

### Exercice : Trouver les nombres manquants
Écrivez une fonction qui reçoit un tableau trié de nombres entiers. La fonction doit retourner un tableau contenant tous les nombres manquants entre le plus petit et le plus grand nombre du tableau.

**Exemple :**
```javascript
Input: [1, 2, 4, 7] 
Output: [3, 5, 6]
```

---

## MS SQL

### Exercice 1 : Liste complète des commandes avec détails
Créez une requête SQL pour afficher :
- La date de la commande (`order_date`),
- Le nom d'utilisateur (`username`) ayant passé la commande,
- Les produits commandés (`name`),
- La quantité de chaque produit (`quantity`),
- Le prix total pour chaque produit (calculé comme `quantity * price`).

### Exercice 2 : Montant total dépensé par chaque utilisateur
Créez une requête SQL pour calculer le montant total dépensé par chaque utilisateur (`username`) sur toutes ses commandes.

---

## MS PHP (OOP)

### Instructions

1. **Créer une classe abstraite `Vehicle` :**
    - **Propriétés :** `brand`, `model`, `year`, `price`.
    - **Méthodes :**
      - Une méthode abstraite `getDescription()` : retourne une description spécifique du véhicule.
      - Implémentez des getters et setters pour toutes les propriétés.

2. **Créer une classe `Car` qui hérite de `Vehicle` :**
    - **Propriétés supplémentaires :** `fuelType` (essence, diesel, électrique).
    - **Méthode :**
      - Implémentation de `getDescription()` : retourne une chaîne comprenant toutes les informations du véhicule.

3. **Créer une classe `Motorcycle` qui hérite de `Vehicle` :**
    - **Propriétés supplémentaires :** `type` (sport, cruiser, off-road).
    - **Méthode :**
      - Implémentation de `getDescription()` : retourne une chaîne comprenant toutes les informations du véhicule.

4. **Créer une interface `Discountable` :**
    - **Méthodes :** `calculateDiscount($percentage)` : calcule une remise sur le prix du véhicule.

5. **Implémenter l'interface `Discountable` dans `Car` et `Motorcycle` :**
    - Ajoutez la logique pour réduire le prix du véhicule selon un pourcentage donné.

6. **Créer une classe statique `VehicleUtils` :**
    - **Méthodes statiques :**
      - `comparePrices($vehicle1, $vehicle2)` : Compare les prix de deux véhicules et retourne le plus abordable.