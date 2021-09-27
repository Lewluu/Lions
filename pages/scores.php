<?php session_start() ?>
<!DOCTYPE html>
<html>
    <head>
        <style><?php include 'style/style.css'?></style>
    </head>
    <body>
        <div id="logged_user">
            <p>Logged in as <?php echo $_SESSION['Name']?> | 
            <a href="../index.php">Log Out</a></p>
        </div>
        <div id="scores_box">
            <div id="scores_list">
                <h3>Admin added score</h3>
                <?php
                $file=fopen("scoreAdmin.txt","r");
                if($file){
                    while(($line=fgets($file))!=false)
                        echo '<p>'.$line.'</p>';
                }
                fclose($file);
                ?>
            </div>
            <div id="scores_list">
                <h3>User added score</h3>
                <?php
                $file=fopen("scoreUser.txt","r");
                if($file){
                    while(($line=fgets($file))!=false)
                        echo '<p>'.$line.'</p>';
                }
                fclose($file);
                ?>
            </div>
        </div>
        <form method="post" action="page1.php">
            <input type="submit" value="Back">
        </form>
    </body>
</html>