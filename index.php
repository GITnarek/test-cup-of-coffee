<?php
require('config.php');

require('Classes/Loader.php');
require('Classes/Controller.php');
require('Classes/Model.php');

require('Controller/HomeController.php');
require('Controller/FormController.php');

require('Model/home.php');

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_GET['action']) && $_GET['action'] === 'submitForm') {
    $formController = new Form();
    $formController->processForm($_POST);
    return;
}

$loader = new Loader($_GET);
$controller = $loader->createController();

if($controller){
    $controller->executeAction();
}