# Challenges OOP en PHP
## Objectif
Le but de ces challenges est de vous familiariser avec la programmation orientée objet (POO) en PHP. Chaque challenge est conçu pour vous aider à comprendre les concepts fondamentaux de la POO, tels que l'encapsulation, l'héritage, le polymorphisme, et bien plus encore.
## Comment utiliser ces challenges
1. **Clonez le dépôt** : Utilisez `git clone` pour cloner ce dépôt sur votre machine locale.
2. **Choisissez un challenge** : Chaque challenge est dans un dossier séparé. Choisissez celui qui vous intéresse.
3. **Lisez les spécifications** : Chaque challenge a des spécifications détaillées. Lisez-les attentivement.
4. **Implémentez le code** : Créez les classes, méthodes et interfaces nécessaires pour résoudre le challenge.
5. **Testez votre code** : Assurez-vous que votre code fonctionne comme prévu. Vous pouvez créer des scripts de test ou utiliser PHPUnit pour cela.
6. **Soumettez vos solutions** : Une fois que vous avez terminé, vous pouvez soumettre vos solutions pour révision ou les partager avec d'autres.

## Challenges

### ✅ Challenge 1 — Système de Jeu de Combat Tour par Tour  
**🎯 Objectif :**  
Créer un mini système de combat entre un Guerrier et un Mage.  

**🧩 Spécifications :**  
Créer une interface `Combattant` :  
```php
public function attaquer(): int;
public function subirDegats(int $degats): void;
public function estVivant(): bool;
```

Créer une classe abstraite `Personnage` avec :  
- Attributs : `nom`, `vie`, `force`  
- Méthode : `afficherStatut()`  
- Constructeur pour initialiser  

Créer deux classes concrètes :  
- `Guerrier` : attaque brute basée sur `force`  
- `Mage` : attaque magique basée sur `force * 1.5`  

Implémenter un combat tour par tour jusqu’à ce qu’un des personnages meure.

---

### ✅ Challenge 2 — Système Bancaire Orienté Objet  
**🎯 Objectif :**  
Créer un système de comptes bancaires (courant + épargne).  

**🧩 Spécifications :**  
Créer une classe abstraite `CompteBancaire` avec :  
- Attributs : `titulaire`, `solde`  
- Méthodes :  
```php
deposer(float $montant)
retirer(float $montant)
afficherSolde()
```
- Méthode abstraite `calculerInteret(): float`  

Créer deux classes :  
- `CompteCourant` (pas d’intérêts)  
- `CompteEpargne` (intérêts 3%)  

Créer une classe `Banque` capable de :  
- Ajouter des comptes  
- Afficher les soldes  
- Appliquer les intérêts aux comptes épargne

---

### ✅ Challenge 3 — Gestion de Bibliothèque  
**🎯 Objectif :**  
Créer un mini système d’emprunt de livres.  

**🧩 Spécifications :**  
Créer une classe `Livre` avec :  
- Attributs : `titre`, `auteur`, `disponible`  
- Méthodes :  
```php
emprunter()
rendre()
afficherInfos()
```

Créer une classe `Utilisateur` avec :  
- Attributs : `nom`, `emprunts` (tableau de livres)  
- Méthodes :  
```php
emprunterLivre(Livre $livre)
rendreLivre(Livre $livre)
afficherEmprunts()
```

**Cas d’usage :**  
- Créer 3 livres, 2 utilisateurs  
- Effectuer des emprunts/rendus  
- Afficher l’historique

---

### ✅ Challenge 4 — Système de Facturation avec Logger  
**🎯 Objectif :**  
Créer un système de facturation avec journalisation.  

**🧩 Spécifications :**  
Créer une interface `Facturable` :  
```php
public function calculerTotal(): float;
```

Créer un trait `LoggerTrait` :  
```php
public function logAction(string $message)
```

Créer une classe `Produit` :  
- Attributs : `nom`, `prixUnitaire`, `quantite`  
- Implémente `Facturable`  
- Utilise `LoggerTrait` pour loguer les actions  

Créer une classe `Facture` avec :  
- Liste de produits  
- Méthodes :  
```php
ajouterProduit(Produit $p)
calculerMontantTotal()
```

---

### ✅ Challenge 5 — Système de Commande en Ligne  
**🎯 Objectif :**  
Modéliser un mini système de commande en ligne pour une boutique.  

**🧩 Spécifications Fonctionnelles**  
1. 📦 Classes à créer :  
- `User`  
- `Order`  
- `Product`  
- `Cart`  
- `Payment` (abstraite), `CreditCardPayment`, `PaypalPayment`  
- Trait `Logger`

2. 🔗 Relations :  
- Un `User` possède plusieurs `Order` et un `Cart`  
- Un `Order` contient plusieurs `Product`  
- Un `Order` est payé avec un objet `Payment`  
- `Cart` peut être transformé en `Order`

3. 🔒 Concepts OOP :  
- Encapsulation (`private`, `protected`, `public`)  
- Héritage (`Payment`)  
- Abstraction  
- Polymorphisme (`pay()` selon le type de paiement)  
- Trait `Logger`  
- Propriétés `readonly`  
- Méthodes magiques : `__toString`, `__get`, `__set`, `__clone`, `__equals()`  
- Typage strict : `declare(strict_types=1);`  
- Méthodes typées  
- Méthode `checkout()` dans `Cart`

---

### ✅ Challenge 6 — Système de Réservation de Vols  
**🎯 Objectif :**  
Modéliser un système de réservation avec gestion de places, utilisateurs et vols.  

**🧩 Spécifications :**  
- `Vol` : destination, date, nombre de places disponibles  
- `reserverPlace()` diminue le nombre de places  
- `Utilisateur` : nom, email, liste de réservations  
- `reserverVol(Vol $vol)`  
- `Reservation` : lien entre `Utilisateur` et `Vol`  
- Encapsulation, validation, exception si vol complet  
- `__toString()` pour afficher une réservation

---

### ✅ Challenge 7 — Système de Notifications Multicanal  
**🎯 Objectif :**  
Utiliser polymorphisme, interfaces, et injection de dépendances.  

**🧩 Spécifications :**  
Interface `CanSendNotification` :  
```php
public function send(string $message, string $to): void;
```

Classes concrètes :  
- `EmailNotifier`  
- `SMSNotifier`  
- `SlackNotifier`  

Classe `NotificationService` :  
- Injecte dynamiquement une stratégie (`CanSendNotification`)  
- Méthode `notify($message, $to)`

---

### ✅ Challenge 8 — Gestion de Parc Automobile  
**🎯 Objectif :**  
Appliquer l'héritage et la composition dans un système de gestion de véhicules.  

**🧩 Spécifications :**  
Classe abstraite `Vehicule` : `marque`, `modèle`, `carburant`  
Classes concrètes : `Voiture`, `Camion`, `Moto`  
Interface `Reparable` :  
```php
public function reparer(): void;
```

Classe `Garage` :  
- Contient une liste de véhicules  
- Méthodes : `ajouterVehicule()`, `afficherParType()`, `reparerTous()`  
- Utiliser `readonly` pour l’immatriculation

---

### ✅ Challenge 9 — Système de Suivi de Tâches  
**🎯 Objectif :**  
Créer un mini Trello-like avec typage strict et associations.  

**🧩 Spécifications :**  
- `Tache` : titre, statut (`à faire`, `en cours`, `terminé`)  
- `Projet` : nom, tableau de tâches  
- `Utilisateur` : peut être assigné à une tâche  

Méthodes :  
- `changerStatut()`  
- `assignerUtilisateur(Utilisateur $u)`  
- `__toString()` pour chaque entité  
- Classe `Board` pour centraliser la gestion

---

### ✅ Challenge 10 — Système de Gestion de Notes Étudiantes  
**🎯 Objectif :**  
Associer plusieurs objets avec logique métier (moyenne, validation).  

**🧩 Spécifications :**  
- `Etudiant` : nom, prénom, tableau de matières  
- `Matiere` : nom, tableau de notes (float)  

Méthodes :  
- `ajouterNote(float $note)`  
- `calculerMoyenne(): float`  
- `estValidee(): bool` (si moyenne > 10)  

- `Bulletin` : associe un étudiant à ses résultats  
- `__clone()` : duplique un bulletin avec notes réinitialisées

---

### ✅ Challenge 11 — Système de Gestion de Recettes de Cuisine  
**🎯 Objectif :**  
Structurer des objets liés avec composition et logique métier.  

**🧩 Spécifications :**  
- `Recette` : nom, liste d'ingrédients (`Ingredient[]`)  
- Méthodes :  
```php
ajouterIngredient(Ingredient $i)
afficherRecette()
```
- `Ingredient` : nom, quantité, unité  
- `__toString()` : "2 cuillères de sucre"  

- `LivreCuisine` : contient plusieurs recettes  
  - Méthodes : `ajouterRecette()`, `rechercherParNom()`  
  - Bonus : filtrer recettes végétariennes (`bool` dans `Ingredient`)

---

### ✅ Challenge 12 — Gestion de Contrats de Travail  
**🎯 Objectif :**  
Travailler avec des dates, `readonly`, polymorphisme.  

**🧩 Spécifications :**  
- `Employe` : nom, fonction  
- `Contrat` (abstraite) : employé, date début, `readonly`  
- Méthode abstraite : `calculerSalaire(): float`  
- Classes concrètes :  
  - `ContratCDI` (salaire fixe)  
  - `ContratCDD` (horaire x nb d’heures)  
  - `ContratFreelance` (par mission)  
- Bonus : `afficherContrat()` avec `__toString()`

---

### ✅ Challenge 13 — Réseau Social Minimaliste  
**🎯 Objectif :**  
Implémenter des relations entre objets, logique métier de publication.  

**🧩 Spécifications :**  
- `Utilisateur` : pseudo, liste d’amis  
- `Post` : auteur, contenu, date, likes  
- Méthodes : `liker()`, `afficherPost()`  
- `Commentaire` : auteur, contenu, lié à un `Post`  

Méthodes à implémenter :  
- `publierPost()`  
- `ajouterAmi(Utilisateur $ami)`  
- `afficherFilActualite()`  
- Bonus : logger les actions avec un trait `Logger`

---

### ✅ Challenge 14 — Système de Gestion de Musique  
**🎯 Objectif :**  
Travailler collections, méthodes magiques et relations.  

**🧩 Spécifications :**  
- `Chanson` : titre, durée, artiste  
- `__toString()` : "Titre - Artiste (durée)"  
- `Playlist` : nom, `chansons[]`  
- Méthodes :  
```php
ajouterChanson()
dureeTotale()
afficherPlaylist()
```
- Bonus :  
  - `__get()` pour accès dynamique  
  - `__clone()` pour dupliquer une playlist

---

### ✅ Challenge 15 — Gestion de Commandes de Restaurant  
**🎯 Objectif :**  
Combiner classe abstraite, polymorphisme, typage strict.  

**🧩 Spécifications :**  
- Classe abstraite `ItemMenu` : `nom`, `prix`  
  - Méthode `getPrix(): float`  
- Classes : `Plat`, `Boisson`, `Dessert` héritent de `ItemMenu`  
- `Commande` : client, tableau d’`ItemMenu`  
- Méthodes :  
```php
ajouterItem(ItemMenu $item)
calculerTotal()
afficherCommande()
```
- Bonus :  
  - Trait `TVA` pour appliquer taxes différentes  
  - Utiliser `readonly` pour la date de commande

---
