<?php session_start();

date_default_timezone_set("Europe/Bucharest");

$conn=new mysqli($_SESSION["servername"],$_SESSION["sv_username"],
                 $_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);
if(!empty($_POST)){
    $bon_score=$_POST["bonusVal"];
    $action=$_POST["pressed"];
    $member=$current_score=$final_score=$id="";
    if($_SESSION['Rol']=="Admin"){
        $id_member=$_POST["members"];
        $sql="SELECT Score, Nume FROM gtfo.members WHERE id='$id_member'";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_assoc();
            $current_score=$row["Score"];
            $member=$row["Nume"];
        }
        else{
            echo $conn->error;
            die();
        }
        if($action=="Adaugare")
            $final_score=$current_score+$bon_score;
        else
            $final_score=$current_score-$bon_score;
        if($final_score<0){
            echo "Noul scor e mai mic decat 0!";
            die();
        }
        $sql="UPDATE gtfo.members SET Score='$final_score' WHERE Nume='$member'";
        $result=$conn->query($sql);
        if(!$result){
            echo $conn->error();
            die();
        }
        $action=strval($_POST["pressed"]);
        $date1=strval(date("d.m.Y"));
        $date2=strval(date("h:i:sa"));
        $sql="SELECT MAX(id) FROM gtfo.scores_admin";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_array();
            $id=$row[0]+1;
        }
        else{
            echo $conn->error();
            die();
        }
        $sql="INSERT INTO gtfo.scores_admin(id,Member,Task,Score,Date1,Date2,Action,
        Status) VALUES('$id','$member','Bonus','$bon_score','$date1','$date2','$action','Checked')";
        if(!$conn->query($sql)==true)
            die("Failed to connect :".$conn->connect_error);
        header("Location: page1.php");
        die();
    }
    else{
        $member=$_SESSION['Name'];
        $action=strval($_POST["pressed"]);
        $date1=strval(date("d.m.Y"));
        $date2=strval(date("h:i:sa"));
        $sql="SELECT MAX(id) FROM gtfo.scores_user";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_array();
            $id=$row[0]+1;
        }
        else{
            echo $conn->error;
            die();
        }
        $sql="INSERT INTO gtfo.scores_user(id,Member,Task,Score,Date1,Date2,Action,
        Status) VALUES('$id','$member','Bonus','$bon_score','$date1','$date2','$action','Checked')";
        if(!$conn->query($sql)==true)
            die("Failed to connect :".$conn->connect_error);
        header("Location: page1.php");
        die();
    }
}

?>












