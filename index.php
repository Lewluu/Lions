<?php session_start();
unset($_SESSION['login']);
unset($_SESSION['username']);
unset($_SESSION['Rol']);
unset($_SESSION['Name']);
$_SESSION["servername"]="localhost";
$_SESSION["sv_username"]="root";
$_SESSION["password"]="";

?>
<!DOCTYPE html>
<html>
    <head>
        <style>
            <?php include 'style.css'?>
        </style>
    </head>
    <body>
        <video autoplay loop class="video-background" muted plays-inline>
            <source src="background_video.mp4" type="video/mp4">
        </video>
        
        <div class="formular">
            <div class="form-box">
                <div class="button-box">
                    <div id="btn"></div>
                        <button type="button" class="toggle-btn" onclick="login()">Log in/Cerere</button>
                        <button type="button" class="toggle-btn" onclick="register()">Inregistrare</button>
                </div>
                <form action="login.php" method="post" id="login" class="input-group">
                    <input type="text" class="input-field" name="username" placeholder="username" ><br>
                    <input type="password" class="input-field" name="password" placeholder="password" ><br>
                    <button type="submit" class="submit-btn">Log in</button>
                    <?php
                        if(!empty($_GET)){
                            $err=$_GET["err"];
                            if($err==0)
                                echo "<p>Username sau parola incorecte!</p> <br>";
                        }   
                    ?>
                </form>
                <form action="request.php" method="post" id="request" class="input-group">
                    <input type="email" name="email" class="input-field" placeholder="email" ><br>
                    <button type="submit" value="Request" class="submit-btn">Cerere</button>
                    <?php
                        if(!empty($_GET)){
                            $err=$_GET["err"];
                            switch($err){
                                case 1:
                                    echo "<p>Nu email de bestis!</p>";
                                    break;
                                case 2:
                                    echo "<p>Email-ul deja se afla in request!</p>";
                                    break;
                            }
                        }
                    ?>
                </form>
                <form id="register" action="register.php" method="post" class="input-group">
                    <input type="email" name="email" class="input-field" placeholder="email" ><br>
                    <input type="password" name="password" class="input-field" placeholder="password" ><br>
                    <input type="password" name="rpassword" class="input-field" placeholder="repeat password" ><br>
                    <p>Gender:</p><br> 
                    <p>Male</p><input type="radio" name="gender" value="male">
                    <p>Female</p><input type="radio" name="gender" value="female">
                    <p>Nu exista altceva!</p><input type="radio" name="gender" value="gay"><br>
                    <button type="submit" class="submit-btn">Inregistrare</button>
                    <?php
        
                        if(!empty($_GET)){
                            $err=$_GET["err"];
                            switch($err){
                                case 3:
                                    echo "<p>Nu exista cerere pentru email!<p>";
                                    break;
                                case 4:
                                    echo "<p>Email-ul nu este aprobat!</p>";
                                    break;
                                case 5:
                                    echo "<p>Email-ul deja e folosit!</p>";
                                    break;
                                case 6:
                                    echo "<p>Introdu aceeasi parola!</p>";
                                    break;
                                case 7:
                                    echo "<p>Alege gender-ul!</p>";
                                    break;
                                case 8:
                                    echo "<p>Parola sa aiba minim 5 caractere!</p>";
                                    break;
                            }
                        }
                    ?>
                </form>
            </div>
        </div>
        <script>
            var x= document.getElementById("login");
            var y= document.getElementById("register");
            var w= document.getElementById("request");
            var z= document.getElementById("btn");
            function register(){
                x.style.left = "-450px";
                w.style.left="-450px";
                y.style.left= "40px";
                z.style.left ="110px";    
            }
            function login(){
                x.style.left = "40px";
                y.style.left= "450px";
                w.style.left="40px";
                z.style.left ="0px";
            }  
        </script>
    </body>
</html>




