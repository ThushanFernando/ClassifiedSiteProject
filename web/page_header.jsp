<%-- 
    Document   : page_header
    Created on : Aug 10, 2015, 2:18:07 PM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <!-- start: TOP NAVIGATION CONTAINER -->
            <div class="container">
                <div class="navbar-header">
                    <!-- start: RESPONSIVE MENU TOGGLER -->

                    <button  data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                        <span class="clip-list-2"></span>
                    </button>
                    <!-- end: RESPONSIVE MENU TOGGLER -->
                    <!-- start: LOGO -->
                    <a class="navbar-brand" href="Dashboard">
                        <img  src="images/logo.jpg" style="width: 100px;"/>

                    </a>
                    <!-- end: LOGO -->
                </div>
                <div class="navbar-tools">
                    <!-- start: TOP NAVIGATION MENU -->
                    <ul class="nav navbar-right">
                        <!-- start: MESSAGE DROPDOWN -->

                        <li class="dropdown">

                            <a class="dropdown-toggle" data-close-others="true" data-hover="" data-toggle="dropdown" href="#">
                                <i class="clip-bubble-3"></i>
                                <span id="MC" class="badge"></span>
                            </a>
                            <ul class="dropdown-menu posts">

                                <li>

                                    <div class="drop-down-wrapper">
                                        <ul>
                                            <div id="MsgXML"></div>

                                        </ul>
                                    </div>
                                </li>
                                <li class="view-all">
                                    <a href="msg_all.jsp">
                                        See all messages <i class="fa fa-arrow-circle-o-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>

                        <!-- end: MESSAGE DROPDOWN -->
                        <!-- start: USER DROPDOWN -->
                        <li class="dropdown current-user">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
                                <img src="images/profile_img.jpg" class="circle-img" alt="">
                                <span class="username">Ishan Madurasinghe</span>
                                <i class="clip-chevron-down"></i>
                            </a>
                            <ul class="dropdown-menu">


                                <li>
                                    <a href="#responsive" onclick="clr()" data-toggle="modal"><i class="clip-key"></i>
                                        &nbsp;Change password </a>
                                </li>
                                <li>
                                    <a href="login_example1.html">
                                        <i class="clip-exit"></i>
                                        &nbsp;Log Out
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- end: USER DROPDOWN -->
                    </ul>
                    <!-- end: TOP NAVIGATION MENU -->
                </div>
            </div>
            <!-- end: TOP NAVIGATION CONTAINER -->
        </div>
    </body>
</html>
