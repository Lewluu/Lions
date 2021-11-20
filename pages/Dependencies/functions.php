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
            $it=0;
            while($row=$result->fetch_assoc()){
                if($row["id"]!=$id_good){
                    $id_curr=$row["id"];
                    $sql_comm[$it++]="UPDATE $table SET id=$id_good WHERE id=$id_curr";
                }
                $id_good++;
            }
            unset($it,$id_good,$id_curr);
        }
        for($i=0;$i<count($sql_comm);$i++){
            $result=$conn->query($sql_comm[$i]);
            if(!$result)
                die("Failed to connect: ".$conn->error);
        }
    }
    public static function Update_Member_Title($name){
        global $conn;
        $sql="SELECT Score, Gender FROM gtfo.members WHERE Nume='$name'";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_assoc();
            $score=$row["Score"];
            $gender=$row["Gender"];
        }
        $sql="SELECT Name, Gender, Score1, Score2 FROM gtfo.titles";
        $result=$conn->query($sql);
        if($result){
            while($row=$result->fetch_assoc()){
                if($score>=$row["Score1"] && $score<=$row["Score2"]){
                    if($gender==$row["Gender"] || $row["Gender"]=="both"){
                        $new_title=$row["Name"];
                        $sql="UPDATE gtfo.members SET Title='$new_title' WHERE Nume='$name'";
                        $result=$conn->query($sql);
                        if(!$result)
                            die("Failed to connect: ".$conn->error);
                    }
                    break;
                }
            }
        }
        else{
            die("Failed to connect: ".$conn->error);
        }
    }
}

?>