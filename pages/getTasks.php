<!DOCTYPE html>
<html>
    <body>
        <?php
        session_start();

        $q=intval($_GET['q']);
        $table="";

        $conn = new mysqli($_SESSION["servername"],$_SESSION["sv_username"],$_SESSION["password"]);
        if($conn->connect_error)
            die("Failed to connect: ".$conn->connect_error);
        switch($q){
            case 1:
                $table="gtfo_category.department";
                break;
            case 2:
                $table="gtfo_category.extern";
                break;
            case 3:
                $table="gtfo_category.frteams";
                break;
            case 4:
                $table="gtfo_category.grants";
                break;
            case 5:
                $table="gtfo_category.international";
                break;
        }
        if($table){
            $sql="SELECT Name FROM $table";
            $result=$conn->query($sql);
            $counter=0;
            if($result->num_rows>0){
                echo '<select class="optiune" name="task" onchange="showButton(this.value);showIteration(this.value)">
                            <option value="">Selectare task</option>';
                while($row=$result->fetch_array()){
                    echo '<option value='.(++$counter).'>
                            '.$row[0].'
                          </option>';
                }
                echo   '</select>';
            }
        }

        ?>
    </body>
</html>















