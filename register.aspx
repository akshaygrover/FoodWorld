<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="FoodWorld.register" %>


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
                        <a href="Default.aspx">Home</a>
                    </li>
                    <li class="">
                        <a href="login.aspx">Login</a>
                    </li>
                    <li class="">
                        <a href="register.aspx">Register</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2>Register Here !</h2>
                    <hr class="star-primary">
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2">
                    <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
                    <!-- The form should work on most web servers, but if the form is not working you may need to configure your web server differently. -->
                    <form runat="server" id="contactForm" >
                      
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Name</label>
                                      <asp:TextBox ID="t1" class="form-control" runat="server"  placeholder="Name" ></asp:TextBox>
           <asp:RequiredFieldValidator 
             id="RequiredFieldValidator1" runat="server" 
             ErrorMessage="Enter Name" 
             ControlToValidate="t1">
            </asp:RequiredFieldValidator>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                         <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Email</label>
                                      <asp:TextBox ID="t2" class="form-control" runat="server" placeholder="Email" ></asp:TextBox>
          
                                 <asp:RegularExpressionValidator
                                                ID= "remail" runat="server" ControlToValidate ="t2"
                                                    ErrorMessage = "Enter your email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                                           </asp:RegularExpressionValidator>
                                 <asp:RequiredFieldValidator 
             id="RequiredFieldValidator6" runat="server" 
             ErrorMessage="Enter Email" 
             ControlToValidate="t2">
            </asp:RequiredFieldValidator>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div> 
                        <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Contact</label>
                                      <asp:TextBox ID="t3" TextMode="Number" class="form-control" runat="server"  placeholder="Contact" MaxLength="10" ></asp:TextBox>
           <asp:RequiredFieldValidator 
             id="RequiredFieldValidator2" runat="server" 
             ErrorMessage="Enter Contact" 
             ControlToValidate="t3">
            </asp:RequiredFieldValidator>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div> <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Gender</label>
                                      <asp:TextBox ID="t4" class="form-control" runat="server"  placeholder="Gender" ></asp:TextBox>
           <asp:RequiredFieldValidator 
             id="RequiredFieldValidator3" runat="server" 
             ErrorMessage="Enter Gender" 
             ControlToValidate="t4">
            </asp:RequiredFieldValidator>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div> <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Address</label>
                                      <asp:TextBox ID="t5" class="form-control" runat="server"  placeholder="Address" ></asp:TextBox>
           <asp:RequiredFieldValidator 
             id="RequiredFieldValidator4" runat="server" 
             ErrorMessage="Enter Address" 
             ControlToValidate="t5">
            </asp:RequiredFieldValidator>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                         <div class="row control-group">
                            <div class="form-group col-xs-12 floating-label-form-group controls">
                                <label>Password</label>
                                      <asp:TextBox ID="t6" class="form-control" runat="server"  placeholder="Password" AutoCompleteType="Pager" TextMode="Password" ></asp:TextBox>
           <asp:RequiredFieldValidator 
             id="RequiredFieldValidator5" runat="server" 
             ErrorMessage="Enter Password" 
             ControlToValidate="t6">
            </asp:RequiredFieldValidator>
                                <p class="help-block text-danger"></p>
                            </div>
                        </div>
                       
                        <br>
                        <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                              <asp:Button ID="Button1" runat="server" Text="Register" OnClick="onCLick" class="btn btn-success btn-lg"></asp:Button>
                            </div>
                        </div>

                         <div id="success"></div>
                        <div class="row">
                            <div class="form-group col-xs-12">
                                <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
           
                                  </div>
                        </div>
                    </form>
                </div>
            </div>
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





