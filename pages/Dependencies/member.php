<?php
date_default_timezone_set("Europe/Bucharest");

ob_start();

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
    private $score_id;
    private $score;

    //constructor
    function __construct($name){             //category
        global $conn;
        $this->name=$name;

        $sql="SELECT Score FROM gtfo.members WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_assoc();
            $this->score=$row["Score"];
        }
    }

    //public methods
    function AddData($category_name, $category_table, $task, $action, $score){
        $this->category_name=$category_name;
        $this->category_table=$category_table;
        $this->task=$task;
        $this->action=$action;
        $this->task_score=$score;
    }

    function AddToHistory(){
        global $conn;                                                       //to use the global variable
        $current_score=$new_score=$current_category_score=$new_category_score="";

        $sql="SELECT Score,$this->category_name FROM gtfo.members WHERE Nume='$this->name'";
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
            $new_category_score=intval($current_category_score)+intval($this->task_score);
        }
        else{
            $new_score=$current_score-$this->task_score;
            $new_category_score=intval($current_category_score)-intval($this->task_score);
        }
        if($new_score<0 || $new_category_score<0){
            $error_msg="Noul score e mai mic decat 0! : ".$this->name;
            $_SESSION["error_msg"]=$error_msg;
            $_SESSION["err_relocate"]="page1.php";
            header("Location: error.php");
            die();
        }

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

        if($this->category_name=="Bonus"){
            if($this->action=="Adaugare")
                $new_score=$this->score+$this->task_score;
            else
                $new_score=$this->score-$this->task_score;
            $sql="UPDATE gtfo.members SET Score=$new_score WHERE Nume='$this->name'";
            $result=$conn->query($sql);
            if(!$result)
                die("Failed to connect: ".$conn->error);
        }
        else{
            $sql="SELECT Score,$this->category_name FROM gtfo.members WHERE Nume='$this->name'";
            $result=$conn->query($sql);
            if(!$result)
                die("Failed to connect: ".$conn->error);
            if($result->num_rows>0){
                $row=$result->fetch_assoc();
                $current_score=$row["Score"];
                $current_category_score=$row[strval($this->category_name)];
            }
            if($this->action=="Adaugare"){
                $new_score=$current_score+$this->task_score;
                $new_category_score=intval($current_category_score)+$this->task_score;
            }
            else{
                $new_score=$current_score-$this->task_score;
                $new_category_score=$current_category_score-$this->task_score;
            }

            if($new_score<0 || $new_category_score<0){
                $error_msg="Noul score e mai mic decat 0! : ".$this->name;
                $_SESSION["error_msg"]=$error_msg;
                $_SESSION["err_relocate"]="requestsHistory.php";
                header("Location: error.php");
                die();
            }

            $sql="UPDATE gtfo.members SET Score='$new_score', $this->category_name='$new_category_score'
                    WHERE Nume='$this->name'";
            $result=$conn->query($sql);
            if(!$result)
                die("Failed to connect: ".$conn->error);
            //this is the update part -> it needs to be indicated with the id in the table, not the name. otherwise it'll update all rows which contains that name
        }
        
        $sql="UPDATE gtfo.scores SET Status='Checked' WHERE id='$this->score_id'";
        $result=$conn->query($sql);
        if(!$result){
            die("Failed to connect: ".$conn->error);
        }
    }

    function AddBonus($val, $action){
        global $conn;
        $date=strval(date("d.m.Y"));
        $time=strval(date("h:i:sa"));

        $this->task_score=$val;
        $this->action=$action;

        $sql="SELECT Score FROM gtfo.members WHERE Nume='$this->name'";
        $result=$conn->query($sql);
        if($result){
            $row=$result->fetch_assoc();
            $current_score=$row["Score"];
        }
        else
            die("Failed to connect: ".$conn->error);
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

        if($action=="Adaugare")
            $new_score=$current_score+$val;
        else{
            $new_score=$current_score-$val;
            if($new_score<0){
                $error_msg="Noul score e mai mic decat 0! : ".$this->name;
                $_SESSION["error_msg"]=$error_msg;
                $_SESSION["err_relocate"]="page1.php";
                header("Location: error.php");
                die();
            }
        }
        $sql="INSERT INTO gtfo.scores(id,Member,Category,Category_Table,Task,Score,
        Date,Time,Action,Status,AddedBy) VALUES($id,'$this->name','Bonus','none',
            'Bonus score',$val,'$date','$time','$action','$status','$rol')";
        $result=$conn->query($sql);
        if(!$result)
            die("Failed to connect: ".$conn->error);

        if($rol=="Admin"){
            $sql="UPDATE gtfo.members SET Score=$new_score WHERE Nume='$this->name'";
            $result=$conn->query($sql);
            if(!$result)
                die("Failed to connect :".$conn->error);
        }
    }

    function setScoreID($id){
        $this->score_id=$id;
    }

    function getName(){
        return $this->name;
    }

    function getScore(){
        return $this->score;
    }

    function getCategory(){
        return $this->category_name;
    }

    function getID(){
        return $this->score_id;
    }
}

ob_flush();

?>