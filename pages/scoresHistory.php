<?php session_start();
$conn=new mysqli($_SESSION["servername"],$_SESSION["sv_username"],$_SESSION["password"]);
?>
<!DOCTYPE html>
<html>
    <head>
        <style><?php include 'style/style.css'?></style>
        <style>
            body{
                background-color: #8B4513;
                background-size: cover;
                background-position: center;
                background-attachment: fixed;
                color: white;
            }
        </style>
        <script src="js/scripts.js"></script>
    </head>
    <body>
        <div class="logged_user">
            <p>Logged in as <?php echo $_SESSION['Name']?> |
            <a href="../index.php">Log Out</a></p>
        </div>
        <div id="scores_box">
            <table>
                <tr>
                <th>No.</th>
                <th>Nume</th>
                <th>Categorie</th>
                <th>Task</th>
                <th>Scor</th>
                <th>Data</th>
                <th>Ora</th>
                <th>Actiune realizata</th>
                <th>Adaugat de:</th>
                <th>Optiune?</th>
                </tr>
                <?php

                $sql="SELECT * FROM gtfo.scores";
                $result=$conn->query($sql);
                $cbit=0;
                while($row=$result->fetch_assoc()){
                    if($row['Status']=="Checked"){
                        $option[$cbit]="option".$cbit;
                        echo '<tr>';
                        echo '<td>'.$row['id'].'</td>';
                        echo '<td>'.$row['Member'].'</td>';
                        echo '<td>'.$row['Category'].'</td>';
                        echo '<td>'.$row['Task'].'</td>';
                        echo '<td>'.$row['Score'].'</td>';
                        echo '<td>'.$row['Date'].'</td>';
                        echo '<td>'.$row['Time'].'</td>';
                        echo '<td>'.$row['Action'].'</td>';
                        echo '<td>'.$row['AddedBy'].'</td>';
                        if($row['Action']=="Adaugare"){
                            echo "<td> Stergere
                            <input type='checkbox' name='".$option[$cbit++]."' value='S'>
                                    </td>";
                        }
                        else{
                            echo "<td> Readaugare
                            <input type='checkbox' name='".$option[$cbit++]."' value='R'>
                                    </td>";
                        }
                        //echo '<td>stergere/readaugare</td>';
                        echo '</tr>';
                    }
                }

                ?>
            </table>
        </div>
        <button id="button_history" onclick="location.href='page1.php'">
            Back
        </button>
        <button id="button_history" onclick="popupCheckBoxResetHistory();">
            Reset history!
        </button>
        <button id="button_history" onclick="">
            Submit Changes!
        </button>
    </body>
</html>

