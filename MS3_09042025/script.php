<?php

interface Registrable
{
    public function register(string $name);
    public function getParticipantsCount(): int;
    public function isFull(): bool;
}

abstract class AbstractSurfActivity implements Registrable
{
    protected string $id;
    protected string $name;
    protected string $instructor;
    protected int $maxParticipants;
    protected array $participants;
    protected array $equipmentNeeded;

    public function getId(): string
    {
        return $this->id;
    }

    public function setId(string $id): void
    {
        $this->id = $id;
    }

    public function getName(): string
    {
        return $this->name;
    }

    public function setName(string $name)
    {
        if(strlen($name) < 2) {
            return "Name must be has more than 2 characters";
        }
        $this->name = $name;
    }

    public function getInstructor(): string
    {
        return $this->instructor;
    }

    public function setInstructor(string $instructor): void
    {
        $this->instructor = $instructor;
    }

    public function getMaxParticipants(): int
    {
        return $this->maxParticipants;
    }

    public function setMaxParticipants(int $maxParticipants): void
    {
        $this->maxParticipants = $maxParticipants;
    }

    public function getParticipants(): array
    {
        return $this->participants;
    }

    public function setParticipants(array $participants): void
    {
        $this->participants = $participants;
    }

    public function getEquipmentNeeded(): array
    {
        return $this->equipmentNeeded;
    }

    public function setEquipmentNeeded(array $equipmentNeeded): void
    {
        $this->equipmentNeeded = $equipmentNeeded;
    }

    public function register(string $name)
    {
        $this->instructor = $name;
    }

    // calculate the length of the array
    private function length(array $arr) : int
    {
        $count = 0;
        foreach ($arr as $item) {
            $count++;
        }
        return $count;
    }

    public function getParticipantsCount(): int
    {
        return $this->length($this->participants);
    }

    public function isFull(): bool
    {
        if($this->getParticipantsCount() > $this->maxParticipants) {
            return true;
        }
        return false;
    }

    abstract function calculatePrice(float $price);
    abstract function getActivityDetails();
}


class SurfLesson extends AbstractSurfActivity
{
    protected string $skillLevel;

    function calculatePrice(float $price) : float
    {
        return $price + ($price * 0.2);
    }

    function getActivityDetails() : string
    {
        return sprintf("Activity name: %s \n Instructor name: %s \n max Participants: %d \n Skill Level: %s", $this->name, $this->instructor, $this->maxParticipants, $this->skillLevel);
    }
}

class EquipmentRental extends AbstractSurfActivity
{
    protected string $equipmentType;

    function calculatePrice(float $price): float
    {
        if($this->equipmentType == "planche") {
            return 50;
        }
        elseif ($this->equipmentType === "combinaison") {
            return 100;
        }
        else {
            return 200;
        }
    }

    function getActivityDetails() : string
    {
        return sprintf("Activity name: %s \n Instructor name: %s \n max Participants: %d \n Equipment Type: %s", $this->name, $this->instructor, $this->maxParticipants, $this->equipmentType);
    }
}

class SurfCompetition extends AbstractSurfActivity
{
    protected float $prizePool;
    function calculatePrice(float $price): float
    {
        return $price;
    }

    function getActivityDetails(): string
    {
        return sprintf("Activity name: %s \n Instructor name: %s \n max Participants: %d \n Prize Pool: %s", $this->name, $this->instructor, $this->maxParticipants, $this->prizePool);
    }
}

class SurfClubManager extends AbstractSurfActivity
{
    protected array $activities;
    function calculatePrice(float $price): float
    {
        return 0;
    }

    function getActivityDetails() : string
    {
        return sprintf("Activity name: %s \n Instructor name: %s \n max Participants: %d \n Prize Pool: %s", $this->name, $this->instructor, $this->maxParticipants, $this->prizePool);
    }

    public function displayActivitiesSummary()
    {
        foreach($this->activities as $activity) {
            echo $activity;
        }
    }

    public function calculateTotalRevenue()
    {
        echo "total revenue";
    }

    public function groupActivitiesByInstructor()
    {
        echo "";
    }

    public function getAvailableSlots()
    {
        echo "";
    }

}

$lesson = new SurfLesson;
$lesson->register("ayman");
