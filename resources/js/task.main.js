
function showHint(str) {
  var email = document.getElementById("taskEamil");

     email.setCustomValidity("");



    if (str.length == 0) { 
        document.getElementById("txtHint").innerHTML = "";
        return;
    }else {
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                document.getElementById("txtHint").innerHTML = this.responseText;
            }
        };
        xmlhttp.open("GET","assign_task_ajax.php?ajax=1&&searchName="+str, true);
        xmlhttp.send();
    }
}

function validTask() {
    
     var st = document.getElementById("txtHint").innerText;
     var email = document.getElementById("taskEamil");

     //email.setCustomValidity("");

      if(st.trim() == "Searching...")
      {
       // console.log(st);
         email.setCustomValidity("Invalid Email");

      }
              
}