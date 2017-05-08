<?php


$variable= $_GET['variable'];

error_reporting(E_ALL);

/* Lit le port du service WWW. */
$service_port = "8000";

/* Lit l'adresse IP du serveur de destination */
$address = "192.168.0.200";

/* Crée un socket TCP/IP. */
$socket = socket_create(AF_INET, SOCK_STREAM, SOL_TCP);


$result = socket_connect($socket, $address, $service_port);


socket_write($socket, $variable);
  

?>





<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Projet Industriel - Alcaraz Mathieu & Giauffret Vincent</title>

        <!-- Bootstrap Core CSS -->
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Font Awesome CSS -->
        <link href="css/font-awesome.min.css" rel="stylesheet">
		
		<!-- Custom CSS -->
        <link href="css/animate.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/style.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>


        <!-- Template js -->
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.appear.js"></script>
        <script src="js/contact_me.js"></script>
        <script src="js/jqBootstrapValidation.js"></script>
        <script src="js/modernizr.custom.js"></script>
        <script src="js/script.js"></script>

        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    
    <body>
        <!-- Start Logo Section -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                            <h1>Projet Industriel</h1>
                            <span>Alcaraz Mathieu & Giauffret Vincent</span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->
        
        
        <!-- Start Main Body Section -->
        <div class="mainbody-section text-center">
            <div class="container">
                <div class="row">
                    
                    <div class="col-md-3">
                        
                        <div class="menu-item blue">
                            <a href="index.php?variable=TNT" data-toggle="modal"  name"TNT" >
                                <i class="fa fa-desktop"></i>
                                <p>TNT</p>
                            </a>
                        </div>
                        
                        <div class="menu-item green">
                            <a href="index.php?variable=APTV" data-toggle="modal">
                                <i class="fa fa-apple"></i>
                                <p>Apple TV</p>
                            </a>
                        </div>
                        
                        <div class="menu-item light-red">
                            <a href="index.php?variable=PLAY" data-toggle="modal">
                                <i class="fa fa-gamepad"></i>
                                <p>Playstation</p>
                            </a>
                        </div>
                        
                    </div>
                    
                    <div class="col-md-6">
                        
                        <!-- Start Carousel Section -->
                        <div class="home-slider">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" style="padding-bottom: 30px;">
                                <div class="carousel-inner">
                                    <div class="item active">
                                        <img src="images/about-03.jpg" class="img-responsive" alt="">
                                    </div>
                                </div>

                            </div>
                        </div>
                        <!-- Start Carousel Section -->
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="menu-item color responsive">
                                    <a href="index.php?variable=LON" data-toggle="modal">
                                        <i class="fa fa-lightbulb-o"></i>
                                        <p>Light ON</p>
                                    </a>
                                </div>
                            </div>
                            
                            <div class="col-md-6">
                                <div class="menu-item light-orange responsive-2">
                                    <a href="index.php?variable=LOFF" data-toggle="modal">
                                        <i class="fa fa-lightbulb-o"></i>
                                        <p>Light OFF</p>
                                    </a>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
                    
                    <div class="col-md-3">
                        
                        <div class="menu-item light-red">
                            <a href="index.php?variable=ALLOFF" data-toggle="modal">
                                <i class="fa fa-power-off"></i>
                                <p>All OFF</p>
                            </a>
                        </div>
                        
                        <div class="menu-item color">
                            <a href="index.php?variable=VCLOSE" data-toggle="modal">
                                <i class="fa fa-arrow-down"></i>
                                <p>Blind Close</p>
                            </a>
                        </div>
                        
                        <div class="menu-item blue">
                            <a href="index.php?variable=VOPEN" data-toggle="modal">
                                <i class="fa fa-arrow-up"></i>
                                <p>Blind Open</p>
                            </a>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        <!-- End Main Body Section -->
        
        <!-- Start Copyright Section -->
        <div class="copyright text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div>Design & Developed by Alcaraz & Giauffret</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End Copyright Section -->
        
<?php ?>        
    <footer>

</footer>
    </body>
    
</html>
