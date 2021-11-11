<?php

$conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],
                    $_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);

class Lew{
    //functie de reitarare a id-urilor in tabelele din baza de date
    public static function Reiterate_Table_IDs($table){
        global $conn;
        $sql="SELECT id FROM $table";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
        else{
            $id_good=1;
            while($row=$result->fetch_assoc()){
                if($row["id"]!=$id_good){
                    $id_curr=$row["id"];
                    $sql="UPDATE $table SET id=$id_good WHERE id=$id_curr";
                    $result=$conn->query($sql);
                    if(!$result)
                        die("Failed to connect :".$conn->error);
                }
                $id_good++;
            }
        }
    }
}

?>