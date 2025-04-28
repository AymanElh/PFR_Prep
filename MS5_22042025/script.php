<?php

class User 
{
    public int $id;
    public string $name;
    public string $email;
    public array $activities = [];
}


abstract class Activity 
{
    public int $id;
    public string $name;

    public function __construct(int $id, string $name) 
    {
        $this->id = $id;
        $this->name = $name;
    }
    
    abstract public function createActivity();
    abstract public function getActivityDetails();
}

class Exercise extends Activity
{
    public string $objective;

    public function __construct(int $id, string $name, string $objective) 
    {
        parent::__construct($id, $name);
        $this->objective = $objective;
    }

    public function createActivity()
    {
        return $this;
    }

    public function getActivityDetails()
    {
        return sprintf("Id: %d \n Name: %s \n Objective: %s", $this->id, $this->name, $this->objective);
    }
}


class Meal extends Activity
{
    public float $calories;

    public function __construct(int $id, string $name, string $calories)
    {
        parent::__construct($id, $name);
        $this->calories = $calories;
    }

    public function createActivity()
    {
        return $this;
    }
    
    public function getActivityDetails()
    {
        return sprintf("Id: %d \n Name: %s \n Calories: %f", $this->id, $this->name, $this->calories);
    }
}

$exercise = new Exercise("2", "ayman", "gain weigth");
echo $exercise->getActivityDetails();