<?php
session_start();

$conn=new mysqli($_SESSION["servername"],$_SESSION["sv_username"],$_SESSION["password"]);
if($conn->connect_error)
	die("Failed to connect :".$conn->connect_error);
$sql="DELETE FROM $_SESSION[dbname].scores";
if(!$conn->query($sql)==true)
	die("Failed to connect: ".$conn->error);
header("Location: scoresHistory.php");
?>