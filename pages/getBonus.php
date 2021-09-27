<!DOCTYPE html>
<html>
    <head>
        <script src="js/scripts.js"></script>
    </head>
    <body>
        <?php session_start();
        
        $q=intval($_GET['q']);
        if($q){
            echo 
                '<input type="button" onclick="substractBonus()" value="-">
                <input type="text" onblur="resetBonus()" id="bonusNr" 
                name="bonusVal" value="1">
                <input type="button" onclick="addBonus()" value="+">';
        }
        
        ?>
    </body>
</html>