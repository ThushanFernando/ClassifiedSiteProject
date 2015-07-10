<%-- 
    Document   : navbar
    Created on : Jul 8, 2015, 8:03:31 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%--<jsp:include page="BootstrapHeader.jsp"></jsp:include>--%>
        <link rel="stylesheet" type="text/css" href="menubar/bootstrap.min.css">

        <style>
            .show-on-hover:hover > ul.dropdown-menu {
                display: block;    
            }
        </style>

    </head>
    
    <!--remove class="navbar-fixed-top" attribute in case of error-->
    <body style="font-family: Century Gothic; padding: 1px;" class="navbar-fixed-top">
        <div class="navbar navbar-custom">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="font-family: Century Gothic; font-weight: bold;" href="Home.jsp">
                    <span class="glyphicon glyphicon-shopping-cart"></span>
                    Superb.lk
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">
                            <span class="glyphicon glyphicon-user"></span> My Account
                        </a>
                    </li>                   
                </ul>
                <form class="navbar-form navbar-left center-block" role="search">
                    <div class="form-group">
                        <input class="form-control" placeholder="I'm looking for..?" type="text" required="">
                    </div>
                    <button type="submit" class="btn btn-info" style="border: solid 2px gray;">Search</button>
                </form>                

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#">
                            <span class="glyphicon glyphicon-comment"> </span>
                            Messages
                            <span class="badge" style="color: black; background-color: gold; border: solid 2px gray;">0</span>
                        </a>
                    </li>
                    <li class="dropdown active text-center show-on-hover">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <b>Profile </b>
                            <span class="caret"></span>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="#">View & Edit Profile</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#"><b>Log Out</b></a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>
    </body>
</html>
