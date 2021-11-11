<?php
date_default_timezone_set("Europe/Bucharest");

$conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],
                    $_SESSION["password"]);
if($conn->connect_error)
    die("Failed to connect: ".$conn->connect_error);

class Member{
    //private attributes
    private $name;
    private $category_table;                                      //aka table name
    private $category_name;
    private $task;
    private $task_score;
    private $action;

    //constructor
    function __construct($name,$category_name,$category_table,$task,$action){             //category
        $this->name=$name;
        $this->category_name=$category_name;
        $this->task=$task;
        $this->action=$action;
        $this->category_table=$category_table;
        //getting the task score
        global $conn;

        $sql="SELECT Score FROM $this->category_table WHERE Name='$this->task'";
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

        $sql="SELECT Score,'$this->category_name' FROM gtfo.members WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
        if($result->num_rows>0){
            $row=$result->fetch_assoc();
            $current_score=$row["Score"];
            $current_category_score=$row[$this->category_name];
        }
        if($this->action=="Adaugare"){
            $new_score=intval($current_score)+$this->task_score;
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
        $sql="INSERT INTO gtfo.scores(id,Member,Category,Category_Table,Task,Score,
                Date,Time,Action,Status,AddedBy) VALUES($id,'$this->name','$this->category_name','$this->category_table',
                '$this->task',$this->task_score,'$date','$time','$this->action','Unchecked','$rol')";
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

        $sql="SELECT Score,'$this->category_name' FROM gtfo.members WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
        if($result->num_rows>0){
            $row=$result->fetch_assoc();
            $current_score=$row["Score"];
            $current_category_score=$row[$this->category_name];
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

        //this is the update part 
        $sql="UPDATE gtfo.members SET Score='$new_score', $this->category_name='$new_category_score'
                WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
        $sql="UPDATE gtfo.scores SET Status='Checked' WHERE Member='$this->name'";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);
    }

    function getName(){
        return $this->name;
    }
}

?>