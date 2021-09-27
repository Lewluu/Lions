function showTables(str,option){
    if(str==""){
        document.getElementById("tablesHint").innerHTML="";
        return;
    }
    else{
        if(option==1){
            var xmlhttp=new XMLHttpRequest();
            xmlhttp.onreadystatechange=function(){
                if(this.readyState==4 && this.status==200){
                    document.getElementById("tablesHint").innerHTML=
                        this.responseText;
                }
            };
            xmlhttp.open("GET","getTables.php?q="+str,true);
            xmlhttp.send();
            showTasks(0);       //scoate un select-urile
            showButton(0);
            showIteration(0);
        }
        if(option==2){
            var xmlhttp=new XMLHttpRequest();
            xmlhttp.onreadystatechange=function(){
                if(this.readyState==4 && this.status==200){
                    document.getElementById("bonusHint").innerHTML=
                        this.responseText;
                }
            };
            xmlhttp.open("GET","getBonus.php?q="+str,true);
            xmlhttp.send();
        }
    }
}

function showTasks(str){
    if(str==""){
        document.getElementById("tasksHint").innerHTML="";
        return;
    }
    else{
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
                document.getElementById("tasksHint").innerHTML=
                    this.responseText;
            }
        };
        xmlhttp.open("GET","getTasks.php?q="+str,true);
        xmlhttp.send();
        showButton(0);
        showIteration(0);
    }
}

function showIteration(str){
    if(str==""){
        document.getElementById("iterationHint").innerHTML="";
        return;
    }
    else{
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
                document.getElementById("iterationHint").innerHTML=
                    this.responseText;
            }
        };
        xmlhttp.open("GET","getIteration.php?q="+str,true);
        xmlhttp.send();
    }
}

function showButton(str){
    if(str==""){
        document.getElementById("buttonHint").innerHTML="";
        return;
    }
    else{
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
                document.getElementById("buttonHint").innerHTML=
                    this.responseText;
            }
        };
        xmlhttp.open("GET","getButton.php?q="+str,true);
        xmlhttp.send();
    }
}

function showBonusButton(str){
    if(str==""){
        document.getElementById("bonusButtonHint").innerHTML="";
        return;
    }
    else{
        var xmlhttp=new XMLHttpRequest();
        xmlhttp.onreadystatechange=function(){
            if(this.readyState==4 && this.status==200){
                document.getElementById("bonusButtonHint").innerHTML=
                    this.responseText;
            }
        };
        xmlhttp.open("GET","getBonusButton.php?q="+str,true);
        xmlhttp.send();
    }
}

function substractIteration(){
    var el=document.getElementById("itNr");
    var val=el.value;
    if(isNaN(val))
        el.value=0;
    else{
        if(val>=1)
            el.value=val-1;
        else
            el.value=0;
    }

}

function addIteration(){
    var el=document.getElementById("itNr");
    var val=el.value;
    if(isNaN(val))
        el.value=0;
    else{
        val=parseInt(el.value);
        el.value=val+1;
    }
}

function resetIteration(){
    var el=document.getElementById("itNr");
    var val=el.value;
    if(isNaN(val))
        el.value=0;
}

function substractBonus(){
    var el=document.getElementById("bonusNr");
    var val=el.value;
    if(isNaN(val)){
        el.value=1;
    }
    else if(val==1)
        el.value=1;
    else if(val==5)
        el.value=1;
    else if(val==10)
        el.value=5;
}

function addBonus(){
    var el=document.getElementById("bonusNr");
    var val=el.value;
    if(isNaN(val)){
        el.value=1;
    }
    else if(val==1)
        el.value=5;
    else if(val==5)
        el.value=10;
    else if(val==10)
        el.value=10;
}

function resetBonus(){
    var el=document.getElementById("bonusNr");
    var val=el.value;
    if(isNaN(val))
        el.value=1;
}

function popupCheckBoxResetScore(){
    if(confirm("Eşti sigur ca vrei să resetezi toate scorurile?"))
        window.location.href="resetScore.php";
}

function popupCheckBoxResetHistory(){
    if(confirm("Eşti sigur că vrei să ştergi tot istoricul?"))
        window.location.href="deleteScores.php";
}











