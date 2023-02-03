<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&amp;display=swap">
    <link rel="stylesheet" href="assets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/fontawesome5-overrides.min.css">
    <link rel="stylesheet" href="assets/css/Articles-Badges-images.css">
    <link rel="stylesheet" href="assets/css/Features-Centered-Icons-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72" style="height: 0px;border-radius: 0px;box-shadow: 6px 4px rgb(217,217,217);">
    <jsp:include page="navbar.jsp" />
    <div style="height: 500px;margin-top: -164px;background: rgba(54,131,245,0);">
        <div class="card shadow" style="margin-top: 300px;width: 1200px;margin-left: 90px;">
            <div class="card-header py-3">
                <p style="font-size: 27px;font-weight: bold;color: rgb(44,62,80);">Liste des catégories</p>
            </div>
            <div class="card-body">
                <div class="table-responsive table mt-2" id="dataTable-1" role="grid" aria-describedby="dataTable_info" style="width: 541px;margin-left: 275px;">
                    <table class="table my-0" id="dataTable">
                        <thead>
                            <tr>
                                <th style="width: 351.7px;">Catégorie</th>
                            </tr>
                        </thead>
                        
                        <tfoot>
                            <tr></tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
    <script src="assets/js/Lightbox-Gallery.js"></script>
</body>

<script>
    function listerCategory() {
        var xhr; 
        try {  xhr = new ActiveXObject('Msxml2.XMLHTTP');   }
        catch (e) 
        {
            try {   xhr = new ActiveXObject('Microsoft.XMLHTTP'); }
            catch (e2) 
            {
               try {  xhr = new XMLHttpRequest();  }
               catch (e3) {  xhr = false;   }
             }
        }
  
        //Définition des changements d'états    
         xhr.onreadystatechange  = function() { 
            if(xhr.readyState  == 4){
             if(xhr.status  == 200) {
                var category = JSON.parse(xhr.responseText);
                console.log(category);
                
                var table = document.getElementById("dataTable");
                for(let i=0; i<category.data.length; i++){
                  var row = table.insertRow(i+1);
                  var cell = row.insertCell(0);
                  cell.innerHTML = category.data[i].category;
                  
                  var row2 = table.insertRow(i+1);
                  var cell2 = row.insertCell(3);
                  cell2.innerHTML = "<button>MODIFIER<button>";
                  
                }
                
                

             } else {
                 document.dyn="Error code " + xhr.status;
             }
             }
         }; 
       
        // Configurez la requÃªte
        xhr.open("GET", "http://localhost:8080/category", true); // true: asynchronous
  
        // Les données envoyées sont ce que l'utilisateur a mis dans le formulaire
        xhr.send(null);
    }
</script>
</html>