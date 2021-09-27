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
            <div id="scores_list">
                <h3>Admin added score</h3>
                <?php
                $sql="SELECT id, Date1, Date2, Member, Task, Score, Action FROM gtfo.scores_admin";
                if($result=$conn->query($sql)){
                    while($row=$result->fetch_assoc()){
                        echo $row["id"].". ".$row["Date1"]." ".$row["Date2"]." ".$row["Member"]." ".$row["Task"]." ".$row["Score"]." ".$row["Action"]."<br>";
                    }
                }
                ?>
            </div>
            <div id="scores_list">
                <h3>User added score</h3>
                <?php
                $sql="SELECT id, Date1, Date2, Member, Task, Score, Action FROM gtfo.scores_user";
                if($result=$conn->query($sql)){
                    while($row=$result->fetch_assoc()){
                        echo $row["id"].". ".$row["Date1"]." ".$row["Date2"]." ".$row["Member"]." ".$row["Task"]." ".$row["Score"]." ".$row["Action"]."<br>";
                    }
                }
                ?>
            </div>
        </div>
        <button id="button_history" onclick="location.href='page1.php'">
            Back
        </button>
        <button id="button_history" onclick="popupCheckBoxResetHistory();">
            Reset history!
        </button>
    </body>
</html>

