<%@page import="com.example.enchere.model.MouvementEntree"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<%
   ArrayList<MouvementEntree> mouvementEntree=(ArrayList<MouvementEntree>)request.getAttribute("mouvementEntree");
%>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Home - Brand</title>
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,700&amp;display=swap">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic&amp;display=swap">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
</head>

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72" style="height: 0px;">
    <jsp:include page="navbar.jsp" />
    <div style="height: 500px;margin-top: -164px;background: rgba(54,131,245,0);">
        <div class="card shadow" style="margin-top: 300px;width: 1200px;margin-left: 90px;">
            <div class="card-header py-3">
                <p style="font-size: 27px;font-weight: bold;color: rgb(44,62,80);">Liste des rechargements</p>
            </div>
            <div class="card-body">
                <div class="table-responsive table mt-2" id="dataTable-1" role="grid" aria-describedby="dataTable_info">
                    <table class="table my-0" id="dataTable">
                        <thead>
                            <tr>
                                <th>Clients</th>
                                <th>Compte principal en Ar</th>
                                <th>Validation</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% for(MouvementEntree entre:mouvementEntree){ 
                                
                                if(entre.getIdAdmin()==null){
                            %>
                        <form  action="ValidationRechargeController" method="post">
                            <input type="hidden" name="idMouvementEntre" value="<%= entre.getIdMouvementEntree() %>"/>
                            <tr>
                                <td><%= entre.getIdClient() %></td>
                                <td><%= entre.getValeur() %></td>
                                <td><input class="btn btn-primary" type="submit" style="background: rgb(44,62,80);border-color: rgba(255,255,255,0);" value="Valider"/></td>
                            </tr>
                        </form>
                            <% } }%>
                        </tbody>
                        <tfoot>
                            <tr></tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
</body>

</html>