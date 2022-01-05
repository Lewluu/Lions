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
                $table="$_SESSION[dbname].category_department";
                break;
            case 2:
                $table="$_SESSION[dbanme].category_extern";
                break;
            case 3:
                $table="$_SESSION[dbname].category_frteams";
                break;
            case 4:
                $table="$_SESSION[dbname].category_grants";
                break;
            case 5:
                $table="$_SESSION[dbname].category_international";
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















