<?php

interface Payable
{
    public function calculateTotal(): float;
    public function isPaid(): bool;
}

abstract class AbstractInvoice implements Payable
{
    protected string $number;
    protected string $clientName;
    protected float $amount;
    protected bool $paid;

    
}