<?php
class Item
{
    public $id;
    public $name;
    public $image;
    public $description;
    
    public function __construct()
    {
        settype($this->id, 'integer');
        settype($this->name, 'string');
        settype($this->image, 'string');
        settype($this->description, 'string');
    }
}

