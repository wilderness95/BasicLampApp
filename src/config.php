<?php
// Basic connection settings
$databaseHost = $_ENV['MYSQL_HOST'] ?? 'dummy';
$databaseUsername = $_ENV['MYSQL_USER'] ?? 'dummy';
$databasePassword = $_ENV['MYSQL_PASSWORD'] ?? 'dummy';
$databaseName = $_ENV['MYSQL_DATABASE'] ?? 'dummy';

// Connect to the database
$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
?>