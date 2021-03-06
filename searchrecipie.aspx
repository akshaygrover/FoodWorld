﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="searchrecipie.aspx.cs" Inherits="FoodWorld.searchrecipie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    


    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>

    <title>Food World</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/freelancer.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top navbar-custom">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="#page-top">Food World</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                   <li class="">
                        <a href="userhome.aspx">Home</a>
                    </li>
                    <li class="">
                        <a href="Default.aspx">Logout</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    
    <!-- Portfolio Grid Section -->
    <section id="portfolio">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>My Recipie</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <a href="addrecipie.aspx">                        <img src="img/portfolio/cabin.png" class="img-responsive" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item">
                    <a href="remove.aspx" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        
                        <img src="img/portfolio/cake.png" class="img-responsive" alt=""/>
                    </a>
                </div>
               
               
               
                <div class="col-sm-4 portfolio-item">
                    <a href="searchrecipie.aspx" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="img/portfolio/submarine.png" class="img-responsive" alt="">
                    </a>
                </div>
            </div>
            <center>

                 <form runat="server" id="contactForm" novalidate>
                      <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Recipie ID</label>
                                      <asp:TextBox ID="t3" class="form-control" runat="server"  placeholder="Enter Recipie ID to search" ></asp:TextBox>
          
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                       

                       
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                              <asp:Button ID="Button1" runat="server" OnClick="onClick" Text="Search Recipie"  class="btn btn-success btn-lg"></asp:Button>
                            </div>
                        </div>

                         <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <asp:Label ID="Label1" runat="server"  Text="" ></asp:Label>
           <asp:PlaceHolder ID="placeholder2" runat="server" ></asp:PlaceHolder>
                                  </div>
                        </div>
                    </form>

                <h3>Available Recipie </h3>
            <asp:PlaceHolder ID="placeholder1" runat="server"></asp:PlaceHolder>
                </center>
        </div>
    </section>










  
    <!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                      
                    </div>
                    <div class="footer-col col-md-4">
                       
                    </div>
                    <div class="footer-col col-md-4">
                        </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        
                    </div>
                </div>
            </div>
        </div>
    </footer>

</body>

</html>

