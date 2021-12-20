<?php session_start();
date_default_timezone_set("Europe/Bucharest");

require 'Dependencies/member.php';
require 'Dependencies/functions.php';

$conn=new mysqli($_SESSION["servername"],$_SESSION["sv_username"],
                 $_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);

//new one
if(!empty($_POST)){
    $bonus=$_POST["bonusVal"];
    $action=$_POST["pressed"];
    $rol=$_SESSION["Rol"];
    if($rol=="Admin"){
        $id_member=$_POST["members"];
        $sql="SELECT Nume FROM gtfo.members WHERE id='$id_member'";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_assoc();
            $member_name=$row["Nume"];
        }
        else
            die("Failed to connect: ".$conn->error);

        $member=new Member($member_name);
        $member->AddBonus($bonus,$action);

        Lew::Update_Member_Title($member_name);

        header("Location: page1.php");
        die();
    }
    else
        $member_name=$_SESSION['Name'];

    $member=new Member($member_name);
    $member->AddBonus($bonus,$action);

    header("Location: page1.php");
}

?>












