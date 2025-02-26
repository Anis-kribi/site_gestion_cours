<?php
require_once('config.php');
// Créer une nouvelle connexion PDO
try {
    $pdo = new PDO("mysql:host=".DB_HOST.";dbname=".DB_NAME.";charset=".DB_CHARSET, 
    DB_USER, DB_PASSWORD);
    
    // Activer le mode d'erreur PDO
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    
    // Activer le mode d'émulation PDO pour désactiver l'utilisation de 'prepared statements'
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
} catch(PDOException $e) {
    // En cas d'erreur de connexion à la base de données, afficher un message d'erreur et arrêter le script
    die("Erreur de connexion à la base de données: ".$e->getMessage());
}
