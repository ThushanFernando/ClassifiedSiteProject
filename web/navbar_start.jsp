<%-- 
    Document   : navbar_start
    Created on : Jul 10, 2015, 11:33:43 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="model_signup.jsp"></jsp:include>
<jsp:include page="model_login.jsp"></jsp:include>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome To Superb.lk</title>
        <link rel="stylesheet" type="text/css" href="menubar/bootstrap.min.css">
    </head>

    <!--remove class="navbar-fixed-top" attribute in case of error-->
    <body style="font-family: Century Gothic; padding: 1px;" class="text-center container-fluid">
        <div class="navbar navbar-custom">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" style="font-family: Century Gothic; font-weight: bold;" href="home.jsp">
                    <span class="glyphicon glyphicon-shopping-cart"></span>
                    Superb.lk
                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav">
                    <li>
                        <a href="#">
                            Resolution Center
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
                    <li>
                        <a data-toggle="modal" data-target="#signup_model" href="">
                            Sign Up
                        </a>
                    </li>
                    <li>
                        <a data-toggle="modal" data-target="#login_model" href="">
                            <b>Log In</b>
                        </a>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div>



