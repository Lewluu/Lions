<?php
session_start();

$error_msg=$_SESSION["error_msg"];
$relocate=$_SESSION["err_relocate"];

print $error_msg.'<br>';
print '<a href='.$_SESSION["err_relocate"].'>Inapoi</a>';

empty($_SESSION["error_msg"]);
empty($_SESSION["err_relocate"]);

?>