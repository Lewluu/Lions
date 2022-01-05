<?php session_start();

if(empty($_SESSION['login'])){
    header("Location: ../index.php");
    die();
}

require "Dependencies/member.php";
require "Dependencies/functions.php";

$conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],$_SESSION["password"]);
if($conn->connect_error){
    die("Failed to connect: ".$conn->connect_error);
}
?>
<!DOCTYPE html>
<html>
    <head>
        <style><?php include 'style/style.css'?></style>
        <style>
            body{
                background-image: url(img/lion1.jpg);
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="logged_user">
            <p>Logged in as <?php echo $_SESSION['Name']?> |
            <a href="../index.php">Log Out</a></p>
        </div>
        <div id="requestsContent">
            <table>
                <tr>
                    <th>No.</th>
                    <th>Email</th>
                    <th>Aprobare?</th>
                </tr>
            <?php
            if(isset($_POST["exeReq"])){
                echo "<meta http-equiv='refresh' content='0'>";
            }
            $sql="SELECT id, Email, Approved FROM $_SESSION[dbname].requests";
            $result=$conn->query($sql);
            if($result){
                echo
                '
                <form name="requestsForm" method="post" action="requestsHistory.php">
                ';
                $i=0;
                while($row=$result->fetch_assoc()){
                    if($row["Approved"]=="NO"){
                        $id=$row["id"];
                        $aprobare[$i]="aprobare".$i;
                        $email[$i]=$row["Email"];

                        echo "<tr>";
                        echo "<td>".$id."</td>";
                        echo "<td>".$email[$i]."</td>";
                        echo "<td>
                            DA <input type='radio' name='".$aprobare[$i]."' value='YES'>
                            NU <input type='radio' name='".$aprobare[$i++]."' value='NO'>
                        </td>";
                    }
                }
                echo
                '
                    <tr>
                        <td><input name="exeReq" type="submit" value="Executa!"></td>
                    </tr>
                </form>
                ';
                for($j=0;$j<$i;$j++){
                    if(!empty($_POST[$aprobare[$j]])){
                        if($_POST[$aprobare[$j]]=="YES"){
                            $sql="UPDATE $_SESSION[dbname].requests SET Approved='YES' WHERE Email='$email[$j]'";
                            if(!$result=$conn->query($sql))
                                die("Failed to query: ".$conn->error);
                        }
                        else{
                            $sql="DELETE FROM $_SESSION[dbname].requests WHERE Email='$email[$j]'";
                            if(!$result=$conn->query($sql))
                                die("Failed to query: ".$conn->error);
                        }
                        Lew::Reiterate_Table_IDs("$_SESSION[dbname].requests");
                    }
                }
            }
            else
                die("Failed to connect:".$conn->error);
            ?>
            </table>
            <table>
                <tr>
                    <th>No.</th>
                    <th>Nume</th>
                    <th>Categorie</th>
                    <th>Task</th>
                    <th>Dată</th>
                    <th>Oră</th>
                    <th>Scor</th>
                    <th>Acţiune</th>
                    <th>Confirm?</th>
                </tr>
                <form name="scoresForm" method="POST" action="requestsHistory.php">
                <?php
                $sql="SELECT id, Date, Time, Member, Category, Category_Table, Task, Score, Action FROM $_SESSION[dbname].scores WHERE Status='Unchecked'";
                if($result=$conn->query($sql)){
                    $k=0;
                    $id=0;
                    while($row=$result->fetch_assoc()){
                        //need to get category from database "gtfo.category_..."
                        $APROBARE[$k]="APROBARE".$k;
                        echo "<tr>";
                        echo "<td>".++$id."</td>";
                        echo "<td>".$row["Member"]."</td>";
                        echo "<td>".$row["Category"]."</td>";
                        echo "<td>".$row["Task"]."</td>";
                        echo "<td>".$row["Date"]."</td>";
                        echo "<td>".$row["Time"]."</td>";
                        echo "<td>".$row["Score"]."</td>";
                        echo "<td>".$row["Action"]."</td>";
                        //creating a member with this data
                        $member[$k]=new Member($row["Member"]);
                        $member[$k]->AddData($row["Category"],$row["Category_Table"],$row["Task"],$row["Action"],$row["Score"]);              //here is the problem
                        $member[$k]->setScoreID($row["id"]);
                        echo
                        "<td>
                            DA <input type='radio' name=".$APROBARE[$k]." value='YES'>
                            NU <input type='radio' name=".$APROBARE[$k++]." value='NO'>
                        </td>";
                        echo "</tr>";
                    }
                }
                else
                    die("Failed to connect :".$conn->error);
                ?>
                <tr>
                    <td><input name="exeReq" type="submit" value="Executa!"></td>
                </tr>
                </form>
                <?php

                for($l=0;$l<$k;$l++){
                    if(!empty($_POST[$APROBARE[$l]])){
                        if($_POST[$APROBARE[$l]]=="YES"){
                            //clar va trebui facuta o functie aici de updateScore
                            $member[$l]->UpdateScore();
                        }
                        else{
                            $id_m=$member[$l]->getID();
                            $sql="DELETE FROM $_SESSION[dbname].scores WHERE id='$id_m'";
                            $result=$conn->query($sql);
                            if(!$result){
                                die("Failed to connect: ".$conn->error);
                            }
                        }
                    }
                    Lew::Update_Member_Title($member[$l]->getName());
                }
                Lew::Reiterate_Table_IDs("$_SESSION[dbname].scores");

                ?>
            </table>
        </div>
        <form method="post" action="page1.php">
            <input type="submit" value="Back">
        </form>
    </body>
</html>