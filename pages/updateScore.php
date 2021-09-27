<?php
session_start();
date_default_timezone_set("Europe/Bucharest");
/*
this is on lewluu branch
this is on main branch
*/

$conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],
                   $_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);
if(!empty($_POST)){
    $id_category=$_POST["category"];
    $id_task=$_POST["task"];
    $it_val=$_POST["itVal"];
    $rol=$_SESSION["Rol"];

    die();
}
?>