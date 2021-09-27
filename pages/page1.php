<?php session_start();
if(empty($_SESSION['login'])){
    header("Location: ../index.php");
    die();
}
$username=$_SESSION['username'];

$conn = new mysqli($_SESSION["servername"],
                   $_SESSION["sv_username"],$_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);
$sql="SELECT Rol FROM gtfo.users WHERE username='$username'";
$result=$conn->query($sql);
if($result->num_rows>0){
    $row=$result->fetch_assoc();
    $_SESSION['Rol']=$row["Rol"];
}
$sql="SELECT Nume FROM gtfo.users WHERE username='$username'";
$result=$conn->query($sql);
if($result->num_rows>0){
    $row=$result->fetch_assoc();
    $_SESSION['Name']=$row['Nume'];
}

include 'functions.php';

?>
<!DOCTYPE html>
<html>
    <head>
        <style>
            <?php include 'style/style.css'?>
            body{
                background-image: url(https://wallpaperaccess.com/full/898644.jpg);
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
            }
        </style>
        <script src="js/scripts.js"></script>
    </head>
    <body>
        <div class="content">
            <h1  >HELLO!</h1> <h1 >HELLO!</h1>
        </div>
        <?php

        $name=$result->fetch_assoc();
        echo
            '<div class="logged_user">
                <p>Logged in as '.$_SESSION['Name'].' |
                <a href="../index.php">Log Out</a></p>
            </div>';
        ?>
        <div id="interface">
            <div id="dashboard">
                <?php
                    $members[]="";
                    $sql="SELECT id FROM gtfo.members";
                    $result=$conn->query($sql);
                    $nRows=mysqli_num_rows($result);
                ?>
                <div id="description">
                    <div id="des_content"><p>Titlu Leut</p></div>
                    <div id="des_content"><p>Scor</p></div>
                    <div id="des_content"><p>Membri</p></div>
                </div>
                <div id="participant">
                    <div id="part_cont">
                        <p>FOSSIL LION</p>
                    </div>
                    <div id="part_cont">
                        <p>1250+</p>
                    </div>
                    <div id="part_cont">
                    <?php

                    $sql="SELECT Nume FROM gtfo.members
                    WHERE(Score>1250)";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $i=0;
                        while($row=$result->fetch_assoc()){
                            echo $row["Nume"];
                            $i++;
                            if($i<=$result->num_rows-1)
                                echo ", ";
                        }
                    }
                    ?>
                    </div>
                </div>
                <div id="participant">
                    <div id="part_cont">
                        <p>MAMA LION</p>
                    </div>
                    <div id="part_cont">
                        <p>851 - 1250</p>
                    </div>
                    <div id="part_cont">
                    <?php

                    $sql="SELECT Nume FROM gtfo.members
                    WHERE(Score>=851 AND Score<=1250 AND
                    Gender='female')";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $i=0;
                        while($row=$result->fetch_assoc()){
                            echo $row["Nume"];
                            $i++;
                            if($i<=$result->num_rows-1)
                                echo ", ";
                        }
                    }
                    ?>
                    </div>
                </div>
                <div id="participant">
                    <div id="part_cont">
                        <p>PAPA LION</p>
                    </div>
                    <div id="part_cont">
                        <p>851 - 1250</p>
                    </div>
                    <div id="part_cont">
                    <?php

                    $sql="SELECT Nume FROM gtfo.members
                    WHERE(Score>=851 AND Score<=1250 AND
                    Gender='male')";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $i=0;
                        while($row=$result->fetch_assoc()){
                            echo $row["Nume"];
                            $i++;
                            if($i<=$result->num_rows-1)
                                echo ", ";
                        }
                    }
                    ?>
                    </div>
                </div>
                <div id="participant">
                    <div id="part_cont">
                        <p>YOUNG LION</p>
                    </div>
                    <div id="part_cont">
                        <p>551 - 850</p>
                    </div>
                    <div id="part_cont">
                    <?php

                    $sql="SELECT Nume FROM gtfo.members
                    WHERE(Score>=551 AND Score<=850)";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $i=0;
                        while($row=$result->fetch_assoc()){
                            echo $row["Nume"];
                            $i++;
                            if($i<=$result->num_rows-1)
                                echo ", ";
                        }
                    }
                    ?>
                    </div>
                </div>
                <div id="participant">
                    <div id="part_cont">
                        <p>TEEN LION</p>
                    </div>
                    <div id="part_cont">
                        <p>251 - 550</p>
                    </div>
                    <div id="part_cont">
                    <?php

                    $sql="SELECT Nume FROM
                    gtfo.members WHERE(Score>=251 AND Score<=550)";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $i=0;
                        while($row=$result->fetch_assoc()){
                            echo $row["Nume"];
                            $i++;
                            if($i<=$result->num_rows-1)
                                echo ", ";
                        }
                    }
                    ?>
                    </div>
                </div>
                <div id="participant">
                    <div id="part_cont">
                        <p>BABY LION</p>
                    </div>
                    <div id="part_cont">
                        <p>0 - 250</p>
                    </div>
                    <div id="part_cont">
                        <div id="part_member">
                    <?php

                    $sql="SELECT Nume FROM gtfo.members
                    WHERE(Score>=0 AND Score<=250)";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $i=0;
                        while($row=$result->fetch_assoc()){
                            echo $row["Nume"];
                            $i++;
                            if($i<=$result->num_rows-1)
                                echo ", ";
                        }
                    }
                    ?>
                        </div>
                    </div>
                </div>
            </div>
            <div id="rules_new">
        <table>
            <tr>
                <th>Categorie</th>
                <th>Denumire task</th>
                <th>Puncte per task</th>
            </tr>
            <tr>
                <td>Departament</td>
                <td id="td_name">
                    <?php

                    $sql="SELECT Name FROM gtfo.department";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Name"].'</p>';
                        }
                    }
                    ?>
                <td id="td_score">
                    <?php

                    $sql="SELECT Score FROM gtfo.department";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Score"].'</p>';
                        }
                    }

                    ?>
            </tr>
            <tr>
                <td>Extern</td>
                <td id="td_name">
                    <?php

                    $sql="SELECT Name FROM gtfo.extern";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Name"].'</p>';
                        }
                    }
                    ?>
                <td id="td_score">
                    <?php

                    $sql="SELECT Score FROM gtfo.extern";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Score"].'</p>';
                        }
                    }
                    ?>
            </tr>
            <tr>
                <td>Echipe de FR</td>
                <td id="td_name">
                    <?php

                    $sql="SELECT Name FROM gtfo.frteams";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Name"].'</p>';
                        }
                    }
                    ?>
                </td>
                <td id="td_score">
                     <?php

                    $sql="SELECT Score FROM gtfo.frteams";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Score"].'</p>';
                        }
                    }

                    ?>
                </td>
            </tr>
            <tr>
                <td>Granturi</td>
                <td id="td_name">
                    <?php

                    $sql="SELECT Name FROM gtfo.grants";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Name"].'</p>';
                        }
                    }

                    ?>
                </td>
                <td id="td_score">
                    <?php

                    $sql="SELECT Score FROM gtfo.grants";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Score"].'</p>';
                        }
                    }

                    ?>
                </td>
            </tr>
            <tr>
                <td>International</td>
                <td id="td_name">
                    <?php

                    $sql="SELECT Name FROM gtfo.international";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Name"].'</p>';
                        }
                    }
                    ?>
                </td>
                <td id="td_score">
                     <?php

                    $sql="SELECT Score FROM gtfo.international";
                    $result=$conn->query($sql);
                    if($result){
                        while($row=$result->fetch_assoc()){
                            echo
                                '<p>'.$row["Score"].'</p>';
                        }
                    }

                    ?>
                </td>
            </tr>
            <tr>
            </tr>
        </table>
        </div>
        </div>
        <div class="box" id="adding_section">
            <div id="adding_score">
                <p>Adaugare scor:</p>
                <form method="post" action="updateScore.php">
            <?php

                if($_SESSION['Rol']=="Admin"){
                    echo
                    '<select name="members"
                    onchange="showTables(this.value,1)" class="optiune">
                        <option value="0">
                        Selectare persoana
                        </option>';
                    $sql="SELECT Nume FROM gtfo.members";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $counter=1;
                        while($row=$result->fetch_array()){
                        echo
                            '<option value="'.$counter++.'">
                            '.$row[0].'
                            </option>';
                        }
                    }
                    echo '</select>';
                }
                else{
                    $sql='SELECT id FROM gtfo.members WHERE Nume="'.$_SESSION["Name"].'"';
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $row=$result->fetch_assoc();
                        $id=$row["id"];
                        echo
                            '<script>showTables("'.$id.'",1)</script>';
                }
            }
            ?>
                <div id="tablesHint"></div>
                <div id="tasksHint"></div>
                <div id="iterationHint"></div>
                <div id="buttonHint"></div>
            </form>
            <?php

            if($_SESSION['Rol']=="Admin"){
                echo
                    '<button class="optiune" onclick="popupCheckBoxResetScore();">
                        Reset all scores!
                    </button>';
                echo
                    '<form method="post" action="requestsHistory.php">
                        <input type="submit" class="optiune" value="Istoric Request-uri">
                    </form>
                    ';
                echo
                    '<form method="post" action="scoresHistory.php">
                        <input type="submit" class="optiune" value="Istoric Scoruri">
                    </form>';
            }
            ?>
            </div>
            <div id="adding_bonus">
                <p>Adaugare bonus:</p>
                <form method="post" action="bonusScore.php">
                <?php

                if($_SESSION['Rol']=="Admin"){
                    echo
                    '<select class="optiune" name="members"
                    onchange="showTables(this.value,2);showBonusButton(this.value)">
                        <option value="0">
                        Selectare persoana
                        </option>';
                    $sql="SELECT Nume FROM gtfo.members";
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $counter=1;
                        while($row=$result->fetch_array()){
                        echo
                            '<option value="'.$counter++.'">
                            '.$row[0].'
                            </option>';
                        }
                    }
                    echo '</select><br>';
                }
                else{
                    $sql='SELECT id FROM gtfo.members WHERE Nume="'.$_SESSION["Name"].'"';
                    $result=$conn->query($sql);
                    if($result->num_rows>0){
                        $row=$result->fetch_assoc();
                        $id=$row["id"];
                        echo
                            '<script>showTables("'.$id.'",2)</script>';
                        echo
                            '<script>showBonusButton(1)</script>';
                    }
                }
                ?>
                    <div id="bonusHint"></div>
                    <div id="bonusButtonHint"></div>
                </form>
            </div>
        </div>
    </body>
</html>













