<?php session_start();
$conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],$_SESSION["password"]);
if($conn->connect_error){
    die("Failed to connect to database: ".$conn->connect_error);
}
$email=$_POST['email'];
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);
$sql="SELECT id, Approved FROM gtfo.requests WHERE email='$email'";     //verifica daca email-ul se afla in requests
if($result=$conn->query($sql)){
    $row=$result->fetch_assoc();
        if(!$row["id"]){                              //nu se afla
            header("Location: index.php?err=3");      
            die();
        }
        if($row["id"] && $row["Approved"]=="NO"){        //se afla dar nu e aprobat
            header("Location: index.php?err=4");
            die();
        }
    }

$sql="SELECT id FROM gtfo.users WHERE email='$email'";      //verifica daca email-ul se afla in users
if($result=$conn->query($sql)){
    $row=$result->fetch_assoc();
    if($row["id"]){                                         //se afla
        header("Location: index.php?err=5");
        die();
    }
}

$pass=$_POST['password'];
$rpass=$_POST['rpassword'];
if($pass!=$rpass){                                          //verifica daca parolele coincid
    header("Location: index.php?err=6");
    die();
}
if(strlen($pass)<5){                        //verifica daca parola are dimensiunea de minim 5 caractere
    header("Location: index.php?err=8");
    die();
}
$pass=md5($pass);

$username=str_replace("@bestis.ro","",$email);  //scoate adresa de mail din username
$name=str_replace("."," ",$username);
if(($pos=strpos($name,"-"))==true){
    $temp_name=substr($name,$pos+1);
    $name=str_replace($temp_name,ucwords($temp_name),$name);
}
$name=ucwords($name);

$gender=strval($_POST["gender"]);
if(!isset($_POST["gender"]) || $_POST["gender"]=="gay"){
    header("Location: index.php?err=7");
    die();
}
$gender=$_POST["gender"];

$sql="SELECT MAX(id) FROM gtfo.users";
if(!($result=$conn->query($sql)))
    die("Failed to connect: ".$conn->error);
else{
    $row=$result->fetch_array();
    if(!$row[0])
        $id=1;
    else
        $id=$row[0]+1;
}

$sql="INSERT INTO gtfo.users(id,Nume,username,email,Parola,Rol) VALUES('$id','$name','$username','$email','$pass','User')";
if(!($result=$conn->query($sql))){
    die("Failed to connect: ".$conn->connect_error);
}

$sql="SELECT MAX(id) FROM gtfo.members";
if(!($result=$conn->query($sql)))
    die("Failed to connect: ".$conn->error);
else{
    $row=$result->fetch_array();
    if(!$row[0])
        $id=1;
    else
        $id=$row[0]+1;
}

$sql="INSERT INTO gtfo.members(id,Nume,Departament,Extern,EchipeFR,Granturi,International,Title,Score,Gender) VALUES('$id','$name',0,0,0,0,0,'BABY LION',0,'$gender')";
if(!$result=$conn->query($sql))
    die("Failed to connect: ".$conn->connect_error);

$sql="DELETE FROM gtfo.requests WHERE Email='$email'";
if(!$result=$conn->query($sql))
    die("Failed to connect: ".$conn->connect_error);

header("Location: index.php");
//mail($email,"Salut fraiere","hahahah");
?>





