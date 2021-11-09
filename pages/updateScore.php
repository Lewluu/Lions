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
    $action=strval($_POST["pressed"]);

    switch($id_category){                                       //getting the right category table
        case 1:
            $table="gtfo_category.department";
            $category="Departament";
            break;
        case 2:
            $table="gtfo_category.extern";
            $category="Extern";
            break;
        case 3:
            $table="gtfo_category.frteams";
            $category="EchipeFR";
            break;
        case 4:
            $table="gtfo_category.grants";
            $category="Granturi";
            break;
        case 5:
            $table="gtfo_category.international";
            $category="International";
            break;
    }

    //getting the task
    $sql="SELECT Name FROM $table WHERE id='$id_task'";
    $result=$conn->query($sql);
    if(!$result)
        die("Failed to connect: ".$conn->error);
    else{
        $row=$result->fetch_assoc();
        $task=$row["Name"];
    }
    //adding to history and updating score
    if($rol=="Admin")
        $id_member=$_POST["members"];
        

    die();
}
?>