<?php

interface ReservableInterface
{
    public function Book(Client $client, Datetime $startDate, int $nbrDays);
}

abstract class Vehicule
{
    public int $id;
    public string $immatriculation;
    public string $marque;
    public string $model;
    public float $dayPrice;
    public bool $isAvailable;

    /**
     * @param int $id
     * @param string $immatriculation
     * @param string $marque
     * @param string $model
     * @param float $dayPrice
     * @param bool $isAvailable
     */
    public function __construct(int $id, string $immatriculation, string $marque, string $model, float $dayPrice, bool $isAvailable)
    {
        $this->id = $id;
        $this->immatriculation = $immatriculation;
        $this->marque = $marque;
        $this->model = $model;
        $this->dayPrice = $dayPrice;
        $this->isAvailable = $isAvailable;
    }


    public function afficherDetails(): string
    {
        return sprintf("Vehicule Details: Vehicule Type: %s \n id: %d \n Matricule: %s \n Marque: %s \n Model: %s \n Price Per Day: %f \n Is Available: %s",
            $this->getType(),
            $this->id,
            $this->immatriculation,
            $this->marque,
            $this->model,
            $this->dayPrice,
            $this->isAvailable
        );
    }

    public function calculatePrice(int $days): float
    {
        return $days * $this->dayPrice;
    }

    public function isAvailable(): bool
    {
        return $this->isAvailable;
    }

    abstract function getType();
}


class Car extends Vehicule implements ReservableInterface
{
    public int $nbrPorts;


    public string $tansmission;

    /**
     * @param string $tansmission
     * @param int $nbrPorts
     */
    public function __construct(int $id, string $immatriculation, string $marque, string $model, float $dayPrice, bool $isAvailable, string $tansmission, int $nbrPorts)
    {
        parent::__construct($id, $immatriculation, $marque, $model, $dayPrice, $isAvailable);
        $this->tansmission = $tansmission;
        $this->nbrPorts = $nbrPorts;
    }

    public function getType(): string
    {
        return "Car";
    }

    public function Book(Client $client, Datetime $startDate, int $nbrDays)
    {
        // TODO: Implement Book() method.
        $reservation = new Reservation($this, $client, $startDate, $nbrDays);
        return $reservation;
    }
}

class Moto extends Vehicule implements ReservableInterface
{
    protected string $cylindree;

    /**
     * @param string $cylindree
     */
    public function __construct(int $id, string $immatriculation, string $marque, string $model, float $dayPrice, bool $isAvailable, string $cylindree)
    {
        parent::__construct($id, $immatriculation, $marque, $model, $dayPrice, $dayPrice);
        $this->cylindree = $cylindree;
    }


    public function getType(): string
    {
        // TODO: Implement getType() method.
        return "Moto";
    }

    public function Book(Client $client, Datetime $startDate, int $nbrDays): Reservation
    {
        // TODO: Implement Book() method.
        $reservation = new Reservation($this, $client, $startDate, $nbrDays);
        return $reservation;
    }

}

class Cammion extends Vehicule implements ReservableInterface
{
    protected string $capaciteTonnage;

    /**
     * @param string $capaciteTonnage
     */
    public function __construct(int $id, string $immatriculation, string $marque, string $model, float $dayPrice, bool $isAvailable, string $capaciteTonnage)
    {
        parent::__construct($id, $immatriculation, $marque, $model, $dayPrice, $isAvailable);
        $this->capaciteTonnage = $capaciteTonnage;
    }


    public function getType(): string
    {
        // TODO: Implement getType() method.
        return "Cammion";
    }

    public function Book(Client $client, Datetime $startDate, int $nbrDays)
    {
        // TODO: Implement Book() method.
        $reservation = new Reservation($this, $client, $startDate, $nbrDays);
        return $reservation;
    }
}


abstract class Person
{
    protected string $nom;
    protected string $prenom;
    protected string $email;

    /**
     * @param string $nom
     * @param string $prenom
     * @param string $email
     */
    public function __construct(string $nom, string $prenom, string $email)
    {
        $this->nom = $nom;
        $this->prenom = $prenom;
        $this->email = $email;
    }

    abstract function afficherProfile();
}


class Client extends Person
{
    protected string $clientNumber;
    public array $reservations = [];

    /**
     * @param string $clientNumber
     * @param array $reservations
     */
    public function __construct(string $nom, string $prenom, string $email, string $clientNumber, array $reservations = [])
    {
        parent::__construct($nom, $prenom, $email);
        $this->clientNumber = $clientNumber;
        $this->reservations = $reservations;
    }

    public function ajouterReservation(Reservation $r)
    {
        $this->reservations[] = $r;
    }

    public function getHistory()
    {
        for ($i = 0; $i < count($this->reservations); $i++) {
            printf("Reservation %d: \n Client: %s \n Vehicule: %s \n Date debut: %s \n Nbr of days %d",
                $i + 1,
                $this->reservations[$i]->client->nom,
                $this->reservations[$i]->vehicule->immatriculation,
                ($this->reservations[$i]->dateDebut)->format("d-m-Y"),
                $this->reservations[$i]->nbrJours
            );
        }
    }

    public function afficherProfile(): string
    {
        // TODO: Implement afficherProfile() method.
        return sprintf("Profile Details: \n Nom: %s \n Prenom %s \n Email: %s \n Client Number: %s \n Reservations: %d",
            $this->nom,
            $this->prenom,
            $this->email,
            $this->clientNumber,
            $this->reservations
        );
    }


}


class Agence
{
    use LoggerTrait;

    protected string $name;
    protected string $city;
    public array $vehicules = [];
    protected array $clients;

    public function ajouterVehicule(Vehicule $v)
    {
        $this->vehicules[] = $v;
    }

    public function rechercherVehiculesDisponible(string $type)
    {
        foreach ($this->vehicules as $vehicule) {
            if ($vehicule->getType() === $type && $vehicule->isAvailable) {
                print_r($vehicule);
            }
        }
    }

    public function registerClient(Client $c)
    {
        $this->clients[] = $c;
    }

    public function makeReservation(Client $client, Vehicule $v, DateTime $dateDebut, int $nbrJours)
    {
        return new Reservation($v, $client, $dateDebut, $nbrJours);
    }
}


class Reservation
{
    use LoggerTrait;

    public Vehicule $vehicule;
    public Client $client;
    public DateTime $dateDebut;
    public int $nbrJours;
    public string $status = 'confirmed';

    /**
     * @param Vehicule $vehicule
     * @param Client $client
     * @param DateTime $dateDebut
     * @param int $nbrJours
     */
    public function __construct(Vehicule $vehicule, Client $client, DateTime $dateDebut, int $nbrJours)
    {
        $this->vehicule = $vehicule;
        $this->client = $client;
        $this->dateDebut = $dateDebut;
        $this->nbrJours = $nbrJours;
    }


    public function calculerMontant()
    {
        // echo "Nbr of days:" .  $this->nbrJours . "\nDayPrice: " . $this->vehicule->dayPrice;
        return $this->nbrJours * $this->vehicule->dayPrice;
    }

    public function confirmer()
    {
        $this->status = "confirmed";
    }

    public function annuler()
    {
        $this->status = "canceled";
    }
}


trait LoggerTrait
{
    public function logAction(string $message)
    {
        return "[Log " . date("Y-m-d") . "]: $message";
    }
}


