<?php

$type='mysql';
$domen='localhost';
$db = 'vue_api_db';
$name='root';

try {
  $pdo = new PDO("$type:host=$domen;dbname=$db", "$name");
} catch (PDOException $e) {
  echo 'Ошибка подключения базы данных';
  die();
}
