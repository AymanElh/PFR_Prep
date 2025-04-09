<?php

/*
Créer un programme en PHP qui modélise un système de gestion des véhicules en utilisant les principes OOP.
**Instructions :**
1. Créer une classe abstraite Vehicle :
- Propriétés : brand, model, year, price.
- Méthodes :
 - Une méthode abstraite getDescription() : retourne une description spécifique du véhicule.
 - Implémentez des getters et setters pour toutes les propriétés.
2. Créer une classe Car qui hérite de Vehicle :
- Propriétés supplémentaires : fuelType (essence, diesel, électrique).
- Méthode :
 - Implémentation de getDescription(), retourne une chaîne comprenant toutes les informations du véhicule.
3. Créer une classe Motorcycle qui hérite de Vehicle :
- Propriétés supplémentaires : type (sport, cruiser, off-road).
- Méthode :
 - Implémentation de getDescription(), retourne une chaîne comprenant toutes les informations du véhicule.
4. Créer une interface Discountable :
- Méthodes : calculateDiscount($percentage) : calcule une remise sur le prix du véhicule.
5. Implémenter l'interface Discountable dans Car et Motorcycle :
- Ajoutez la logique pour réduire le prix du véhicule selon un pourcentage donné.
6. Créer une classe statique VehicleUtils :
- Méthodes statiques :
 - comparePrices($vehicle1, $vehicle2): Compare les prix de deux véhicules et retourne le plus abordable.
*/

abstract class Vehicle 
{
    protected string $brand;
    protected string $model;
    protected int $year;
    protected float $price;

    // Setters
    public function setBrand(string $brand) {
        $this->brand = $brand;
    }
    public function setModel(string $model) {
        $this->model = $model;
    }
    public function setYear(int $year) {
        $this->year = $year;
    }
    public function setPrice(float $price) {
        $this->price = $price;
    }

    // Getters
    public function getBrand() {
        return $this->brand;
    }
    public function getModel() {
        return $this->model;
    }
    public function getYear() {
        return $this->year;
    }
    public function getPrice() {
        return $this->price;
    }

    abstract public function getDescription() : string
}

class Car extends Vehicle implements Discountable
{
    protected fuelType;

    public function getDescription() {
        return sprintf("Brand: %s \n Model: %s \n Year: %d \n Price: %f \n Fuel Type: %s", $this->brand, $this->model, $this->year, $this->price, $this->fuelType);
    }

    public function calculateDiscount($precentage) {
        return $this->price - ($this->price * $percentage)
    }
}

class MotorCycle extends Vehicle
{
    protected $type;

    public function getDescription() {
        return sprintf("Brand: %s \n Model: %s \n Year: %d \n Price: %f \n Fuel Type: %s", $this->brand, $this->model, $this->year, $this->price, $this->type);
    }
}

interface Discountable
{
    public function calculateDiscount($precentage) : float;
}

class VehicleUtils 
{
    public static function comparePrices($vehicle1, $vehicle2) {
        return $vehicle1->getPrice() > $vehicle2->getPrice() ? $vehicle1 . "is Expensive than " . $vehicle2 : $vehicle2 . "is Expensive than " . $vehicle1
    }
}

