<%@page import="com.example.enchere.modelAff.CategoryVendu"%>
<%@page import="com.example.enchere.modelAff.CategoryTopChiffreAffaire"%>
<%@page import="com.example.enchere.model.Statistiques"%>
<!DOCTYPE html>
<html>
<%
 Statistiques stat=(Statistiques)request.getAttribute("stat");
%>
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

<body id="page-top" data-bs-spy="scroll" data-bs-target="#mainNav" data-bs-offset="72" style="height: 145px;">
    <jsp:include page="navbar.jsp" />
    <div id="wrapper">
        <div id="content-wrapper">
            <div id="content">
                <div class="container-fluid my-5" >
                    <div class="py-5">
                        <h3 class="text-dark mt-5" style="font-size: 52px;color: rgb(44,62,80);">Statistique des ventes</h3>
                    </div>
                    <div class="row my-5">
                        <div class="col-md-4">
                            <div class="card shadow">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary fw-bold m-0">Chiffre d'affaire et benefice</h6>
                                    <div class="dropdown no-arrow"><button class="btn btn-link btn-sm dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button"><i class="fas fa-ellipsis-v text-gray-400"></i></button>
                                        <div class="dropdown-menu shadow dropdown-menu-end animated--fade-in">
                                            <p class="text-center dropdown-header">dropdown header:</p><a class="dropdown-item" href="#">&nbsp;Action</a><a class="dropdown-item" href="#">&nbsp;Another action</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" href="#">&nbsp;Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="chartjs-line"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-4" >
                            <div class="card shadow">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary fw-bold m-0">Chiffre d'affaire et benefice</h6>
                                    <div class="dropdown no-arrow"><button class="btn btn-link btn-sm dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button"><i class="fas fa-ellipsis-v text-gray-400"></i></button>
                                        <div class="dropdown-menu shadow dropdown-menu-end animated--fade-in">
                                            <p class="text-center dropdown-header">dropdown header:</p><a class="dropdown-item" href="#">&nbsp;Action</a><a class="dropdown-item" href="#">&nbsp;Another action</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" href="#">&nbsp;Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart">
                                        <canvas id="chartjs-bar"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                       <div class="col-md-4" >
                            <div class="card shadow">
                                <div class="card-header d-flex justify-content-between align-items-center">
                                    <h6 class="text-primary fw-bold m-0">Nombre de vente de mes produits </h6>
                                    <div class="dropdown no-arrow"><button class="btn btn-link btn-sm dropdown-toggle" aria-expanded="false" data-bs-toggle="dropdown" type="button"><i class="fas fa-ellipsis-v text-gray-400"></i></button>
                                        <div class="dropdown-menu shadow dropdown-menu-end animated--fade-in">
                                            <p class="text-center dropdown-header">dropdown header:</p><a class="dropdown-item" href="#">&nbsp;Action</a><a class="dropdown-item" href="#">&nbsp;Another action</a>
                                            <div class="dropdown-divider"></div><a class="dropdown-item" href="#">&nbsp;Something else here</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="chart-area">
                                        <canvas id="chartjs-bars"></canvas></div>
                                </div>
                            </div>
                        </div>
                        
                    </div>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p style="font-size: 27px;font-weight: bold;color: rgb(44,62,80);">top chiffreAffaire produit par mois</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable-1" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>Categorie</th>
                                            <th>Valeur</th>
                                            <th>mois</th>
                                            <th>annee</th>
                                        </tr>
                                    </thead>
                                   
                                    <tbody>
                                        <% for(CategoryTopChiffreAffaire top:stat.getTopProdChiffAff()){ %>
                                        <tr>
                                            <td><%= top.getNom() %></td>
                                            <td><%= top.getChiffreAffaire() %></td>
                                            <td><%=top.getMonth() %></td>
                                            <td><%=top.getYears() %></td>
                                        </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p style="font-size: 27px;font-weight: bold;color: rgb(44,62,80);">top nombre produit vendu par categorie</p>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive table mt-2" id="dataTable-1" role="grid" aria-describedby="dataTable_info">
                                <table class="table my-0" id="dataTable">
                                    <thead>
                                        <tr>
                                            <th>Categorie</th>
                                            <th>nombre</th>
                                            <th>mois</th>
                                            <th>annee</th>
                                        </tr>
                                    </thead>
                                   
                                    <tbody>
                                        <% for(CategoryVendu top:stat.getTopCategoryVendu()){ %>
                                        <tr>
                                            <td><%= top.getNom() %></td>
                                            <td><%= top.getNombreVendu() %></td>
                                            <td><%=top.getMonth() %></td>
                                            <td><%=top.getYears() %></td>
                                        </tr>
                                        <% } %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>             
                    <div class="card shadow">
                        <div class="card-header py-3">
                            <p style="font-size: 27px;font-weight: bold;color: rgb(44,62,80);">Menu</p>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/chart.min.js"></script>
    <script src="assets/js/bs-init.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.11.1/baguetteBox.min.js"></script>
    <script src="assets/js/freelancer.js"></script>
    <script src="assets/js/Lightbox-Gallery.js"></script>
    
    <script src="js/app.js"></script>

	<script>
            
                let monthYear=[];
                let benefice=[];
                let chiffreAffaire=[];
                 let produitVendu=[];
                <%
                String[] years=stat.getMontYear();
                String[] benef=stat.getBenefices();
                String[] cAff=stat.getChiffreAffaires();
                String[] produitVendu=stat.getProduitVendus();
                int taille=years.length;    
                for(int i=0;i<taille;i++){%>
                    monthYear.push(<%=years[i]%>);
                    benefice.push(<%=benef[i] %>);
                    chiffreAffaire.push(<%=cAff[i] %>);
                    produitVendu.push(<%=produitVendu[i] %>);
                <% } %>    
		document.addEventListener("DOMContentLoaded", function() {
			// Line chart
			new Chart(document.getElementById("chartjs-line"), {
				type: "line",
				data: {
					labels: monthYear,
					datasets: [{
						label: "Benefice",
						fill: true,
						backgroundColor: "transparent",
						borderColor: "#fb85ff",
						data:benefice
					 },
					 {
						label: "Chiffre Affaire",
					  	fill: true,
					  	backgroundColor: "transparent",
					  	borderColor: "#fb8500",
					 	data:chiffreAffaire
					 }
					
				]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					tooltips: {
						intersect: false
					},
					hover: {
						intersect: true
					},
					plugins: {
						filler: {
							propagate: false
						}
					},
					scales: {
						xAxes: [{
							reverse: true,
							gridLines: {
								color: "rgba(0,0,0,0.05)"
							}
						}],
						yAxes: [{
							ticks: {
								stepSize: 500
							},
							display: true,
							borderDash: [5, 5],
							gridLines: {
								color: "rgba(0,0,0,0)",
								fontColor: "#fff"
							}
						}]
					}
				}
			});
		});
	</script>

	<script>
		document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-bar"), {
				type: "bar",
				data: {
					labels:  monthYear,
					datasets: [{
						label: "Chiffre d'Affaire",
						backgroundColor:"#219ebc",
						data:chiffreAffaire,
						barPercentage: .75,
						categoryPercentage: .5
					}, {
						label: "Benefice",
						backgroundColor: "#F8346F",
						data:benefice,
						barPercentage: .75,
						categoryPercentage: .5
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					scales: {
						yAxes: [{
							gridLines: {
								display: false
							},
							stacked: false,
							ticks: {
								stepSize: 20
							}
						}],
						xAxes: [{
							stacked: false,
							gridLines: {
								color: "transparent"
							}
						}]
					}
				}
			});
		});
	</script>

        <script>
		document.addEventListener("DOMContentLoaded", function() {
			// Bar chart
			new Chart(document.getElementById("chartjs-bars"), {
				type: "bar",
				data: {
					labels:monthYear,
					datasets: [{
						label: "Produit Vendu",
						backgroundColor:"#219ebc",
						data:produitVendu,
						barPercentage: .75,
						categoryPercentage: .5
					}]
				},
				options: {
					maintainAspectRatio: false,
					legend: {
						display: false
					},
					scales: {
						yAxes: [{
							gridLines: {
								display: false
							},
							stacked: false,
							ticks: {
								stepSize: 20
							}
						}],
						xAxes: [{
							stacked: false,
							gridLines: {
								color: "transparent"
							}
						}]
					}
				}
			});
		});
	</script>
    
</body>

</html>