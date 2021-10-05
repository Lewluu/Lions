<?php
session_start();
date_default_timezone_set("Europe/Bucharest");

$conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],
                    $_SESSION["password"]);

class Member{
    //private attributes
    private $name;
    private $category;
    private $task;
    private $score;
    private $action;
    //methods
    function __construct($name,$category,$task,$score,$action){             //category
        $this->name=$name;
        $this->category=$category;
        $this->task=$task;
        $this->score=$score;
        $this->action=$action;
    }
    function AddToHistory(){
        global $conn;                                                       //to use the global variable
        $current_score=$new_score=$current_category_score=$new_category_score="";

        $sql="SELECT Score,'$this->category' FROM gtfo.members WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
        if($result->num_rows>0){
            $row=$result->fetch_assoc();
            $current_score=$row["Score"];
            $current_category_score=$row[$this->category];
        }
        if($this->action=="Adaugare"){
            $new_score=$current_score+$this->score;
            $new_category_score=$current_category_score+$this->score;
        }
        else{
            $new_score=$current_score-$this->score;
            $new_category_score=$current_category_score-$this->score;
        }
        if($new_score<0 || $new_category_score<0)
            die("Noul scor e mai mic decat 0!");

        $date=strval(date("d.m.Y"));
        $time=strval(date("h:i:sa"));
        $sql="SELECT MAX(id) FROM gtfo.scores";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_array();
            $id=$row[0]+1;
        }
        else
            die("Failed to connect: ".$conn->error);
        $rol=$_SESSION["Rol"];
        if($rol=="Admin")
            $status="Checked";
        else
            $status="Unchecked";
        $sql="INSERT INTO gtfo.scores(id,'$this->name','$this->category','$this->task',Score,
                Date,Time,Action,Status,AddedBy) VALUES('$id','$this->name','$this->category',
                '$this->task','$date','$time','$this->action','$status','$rol')";
        $result=$conn->query($sql);
        if($result)
            die("Failed to connect: ".$conn->error);
    }
    function UpdateScore(){
        //va prelucra toate scorurile din unchecked si adminul ori va da accept si vor deveni checked
        //ori ii va da denies si se va sterge complet
        global $conn;                                                       //to use the global variable
        $current_score=$new_score=$current_category_score=$new_category_score="";

        $sql="SELECT Score,'$this->category' FROM gtfo.members WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
        if($result->num_rows>0){
            $row=$result->fetch_assoc();
            $current_score=$row["Score"];
            $current_category_score=$row[$this->category];
        }
        if($this->action=="Adaugare"){
            $new_score=$current_score+$this->score;
            $new_category_score=$current_category_score+$this->score;
        }
        else{
            $new_score=$current_score-$this->score;
            $new_category_score=$current_category_score-$this->score;
        }
        if($new_score<0 || $new_category_score<0)
            die("Noul scor e mai mic decat 0!");

        $sql="UPDATE gtfo.members SET Score='$new_score', '$this->category=$new_category_score'
                WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
    }
}

?>