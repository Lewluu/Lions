<!DOCTYPE html>
<html>
    <body>
        <?php session_start();
        
        $q=intval($_GET['q']);
        if($q){
            echo
                '<input class="optiune1" type="submit" name="pressed" value="Adaugare">
                <input class="optiune1" type="submit" name="pressed" value="Stergere">';
        }
        
        ?>
    </body>
</html>