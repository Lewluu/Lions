<?php

session_start();
require "Dependencies/functions.php";

if(empty($_SESSION['login'])){
    header("Location: ../index.php");
    die();
}

$conn = new mysqli($_SESSION["servername"],
                   $_SESSION["sv_username"],$_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);

Lew::Reiterate_Table_IDs("$_SESSION[dbname].scores");

?>