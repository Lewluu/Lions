<?php
date_default_timezone_set("Europe/Bucharest");

$conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],
                    $_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);

class Member{
    //private attributes
    private $name;
    private $category;                                      //aka table name
    private $category_name;
    private $task;
    private $task_score;
    private $action;
    
    //constructor
    function __construct($name,$category,$category_name,$task,$action){             //category
        $this->name=$name;
        $this->category=$category;
        $this->task=$task;
        $this->action=$action;
        $this->category_name=$category_name;
        //getting the task score
        global $conn;

        $sql="SELECT Score FROM $this->category WHERE Name='$this->task'";
        $result=$conn->query($sql);
        if(!$result){
            die("Failed to connect: ".$conn->error);
        }
        else{
            $row=$result->fetch_assoc();
            $this->task_score=$row["Score"];
        }

    }
    
    //public methods
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
            $new_score=$current_score+$this->task_score;
            $new_category_score=intval($current_category_score)+$this->task_score;
        }
        else{
            $new_score=$current_score-$this->task_score;
            $new_category_score=$current_category_score-$this->task_score;
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
        $sql="INSERT INTO gtfo.scores(id,Member,Category,Task,Score,
                Date,Time,Action,Status,AddedBy) VALUES($id,'$this->name','$this->category',
                '$this->task',$this->task_score,'$date','$time','$this->action','$status','$rol')";
        $result=$conn->query($sql);
        if(!$result){
            die("Failed to connect: ".$conn->error);
        }
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
            $new_score=$current_score+$this->task_score;
            $new_category_score=intval($current_category_score)+$this->task_score;
        }
        else{
            $new_score=$current_score-$this->task_score;
            $new_category_score=$current_category_score-$this->task_score;
        }
        if($new_score<0 || $new_category_score<0)
            die("Noul scor e mai mic decat 0!");

        $sql="UPDATE gtfo.members SET Score='$new_score', $this->category_name='$new_category_score'
                WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
    }
}

?>