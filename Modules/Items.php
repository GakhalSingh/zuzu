<?php
function getItems()
{
    global $pdo;
    $query = $pdo->prepare("SELECT * FROM items");
    $query->execute();
    $result = $query->fetchAll(PDO::FETCH_CLASS,"Item");
    return $result;
}