<?php
session_start();

$error_msg=$_SESSION["error_msg"];

print $error_msg;
print "<a href='page1.php'>Inapoi</a>";

empty($_SESSION["error_msg"]);

?>