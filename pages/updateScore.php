<?php
session_start();
date_default_timezone_set("Europe/Bucharest");
/*
this is on lewluu branch
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
    $member=$table=$task=$task_score=$current_score=$new_score=$category=
        $current_category_score=$new_category_score="";

    switch($id_category){
        case 1:
            $table="gtfo.department";
            $category="Departament";
            break;
        case 2:
            $table="gtfo.extern";
            $category="Extern";
            break;
        case 3:
            $table="gtfo.frteams";
            $category="EchipeFR";
            break;
        case 4:
            $table="gtfo.grants";
            $category="Granturi";
            break;
        case 5:
            $table="gtfo.international";
            $category="International";
            break;
    }

    if($rol=="Admin"){
        $status="Checked";
        $id_member=$_POST["members"];
        $sql="SELECT Nume FROM gtfo.members WHERE id='$id_member'";
        $result=$conn->query($sql);
        if($result->num_rows>0){
            $row=$result->fetch_assoc()();
            $member=$row['Nume'];
        }
    }
    else{
        $status="Unchecked";
        $member=$_SESSION['Name'];
    }

    $sql="SELECT Score, $category FROM gtfo.members WHERE Nume='$member'";
    $result=$conn->query($sql);
    if(!$result)
        die("Failed to connect :".$conn->error);
    if($result->num_rows>0){
        $row=$result->fetch_assoc();
        $current_score=$row["Score"];
        $current_category_score=$row[$category];
    }

    $sql="SELECT Score, Name FROM $table WHERE id='$id_task'";
    $result=$conn->query($sql);
    if($result->num_rows>0){
        $row=$result->fetch_assoc();
        $task=$row["Name"];
        $task_score=$row["Score"];
    }
    //adding to simple "scores" table
    for($i=0;$i<$it_val;$i++){
        if($_POST["pressed"]=="Adaugare"){
            $new_score=$current_score+$task_score;
            $new_category_score=$current_category_score+$task_score;
        }
        else{
            $new_score=$current_score-$task_score;
            $new_category_score=$current_category_score-$task_score;
        }
        if($new_score<0 || $new_category_score<0){
            echo "Noul score e mai mic decat 0!";
            die();
        }
        //here adding score
        if($rol=="Admin"){
            $sql="UPDATE gtfo.members SET Score='$new_score', $category='$new_category_score' WHERE Nume='$member'";
            if(!($conn->query($sql))==true)
                die("Failed to connect: ".$conn->error);
        }
        //pana aici
        $action=strval($_POST["pressed"]);
        $date=strval(date("d.m.Y"));
        $time=strval(date("h:i:sa"));
        $sql="SELECT MAX(id) FROM gtfo.scores";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_array();
            $id=$row[0]+1;
        }
        else
            die("Failed to connect: ".$conn->error);
        $sql="INSERT INTO gtfo.scores(id,Member,Category,Task,Score,Date,Time,Action,Status,AddedBy)
            VALUES('$id','$member','$category','$task','$task_score','$date','$time','$action','$status','$rol')";
        if(!($conn->query($sql))==true)
            die("Failed to connect: ".$conn->error);
    }
    //old way
    if($_SESSION['Rol']=="Admin"){
        for($i=0;$i<$it_val;$i++){
            if($_POST["pressed"]=="Adaugare"){
                $new_score=$current_score+$task_score;
                $new_category_score=$current_category_score+$task_score;
            }
            else{
                $new_score=$current_score-$task_score;
                $new_category_score=$current_category_score-$task_score;
            }
            if($new_score<0 || $new_category_score<0){
                echo "Noul scor e mai mic decat 0!";
                die();
            }
            $sql="UPDATE gtfo.members SET Score='$new_score',
            $category='$new_category_score' WHERE Nume='$member'";
            if($conn->query($sql)){
                $sql="SELECT MAX(id) FROM gtfo.scores_admin";
                $result=$conn->query($sql);
                if($result){
                    $row=$result->fetch_array();
                    $id=$row[0]+1;
                }
                else
                    echo $conn->error;
                $action=strval($_POST["pressed"]);
                $date1=strval(date("d.m.Y"));
                $date2=strval(date("h:i:sa"));
                $sql="INSERT INTO gtfo.scores_admin(id,Member,Task,Score,Date1,Date2,Action,Status)
                    VALUES('$id','$member','$task','$task_score','$date1','$date2','$action','Unchecked')";
                if(!$conn->query($sql)==true)
                    die("Failed to connect :".$conn->connect_error);
            }
            else
                die("Failed adding score!");

            $sql="SELECT Score, $category FROM gtfo.members WHERE id='$id_member'";
            $result=$conn->query($sql);
            if($result->num_rows>0){
                $row=$result->fetch_assoc();
                $current_score=$row["Score"];
                $current_category_score=$row[$category];
            }
            else{
                die("Failed query: ".$conn->error);
            }
        }
        header("Location: page1.php");
    }
    else{
        for($i=0;$i<$it_val;$i++){
            $sql="SELECT MAX(id) FROM gtfo.scores_user";
            $result=$conn->query($sql);
            if($result){
                $row=$result->fetch_array();
                $id=$row[0]+1;
            }
            else
                echo $conn->error;

            $action=strval($_POST["pressed"]);
            $date1=strval(date("d.m.Y"));
            $date2=strval(date("h:i:sa"));
            $sql="INSERT INTO gtfo.scores_user(id,Member,Task,Score,Date1,Date2,Action,Status)
            VALUES('$id','$member','$task','$task_score','$date1','$date2','$action','Unchecked')";
            if(!$conn->query($sql)==true)
                die("Failed to connect :".$conn->connect_error);
        }
        header("Location: page1.php");
        die();
    }
}
?>