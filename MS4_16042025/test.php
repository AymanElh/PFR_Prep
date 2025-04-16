<?php

// Create new Agence
$agence = new Agence();

// Create new Car
$carDacia = new Car("382932", "15B38232", "Dacia", "logan", 400, true, "something", 5);
$carBMW = new Car("38932", "28E3829", "BMW", "bmw", 40000, true, "dslf", 10);

// Add car to the agence
$agence->ajouterVehicule($carDacia);
$agence->ajouterVehicule($carBMW);


// Create new client
$client1 = new Client("Ayman", "Elh", "ayman@gmail.com", "0504432032");
$client2 = new Client("Aymane", "", "uknown@gmail.com", "054839234");


// Reservation
$reservation1 = new Reservation($carDacia, $client2, new DateTime("17-04-2025"), 20);
$reservation2 = new Reservation($carBMW, $client1, new DateTime("20-04-2025"), 30);

// annuler reservation
$reservation2->annuler();
print_r($reservation2->status);
echo "\n";

// Assing Reservation
$client1->ajouterReservation($reservation2);
$client2->ajouterReservation($reservation1);
echo $reservation1->logAction("Reservation succeed") . "\n";

// Print Available cars
$agence->rechercherVehiculesDisponible("Car");

// Client getHistory
$client2->getHistory();