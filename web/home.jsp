<%-- 
    Document   : home
    Created on : Aug 3, 2015, 11:19:07 PM
    Author     : Indunil
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Account</title>

        <style>
            .nav-pills>li.active>a, .nav-pills>li.active>a:hover, .nav-pills>li.active>a:focus {
                color: #fff;
                background-color: #428bca;
            }

            .margintop20 {
                margin-top:20px;
            }

            .nav-pills>li>a {
                border-radius: 0px;
            }

            a {
                color: #000;
                text-decoration: none;
            }

            a:hover {
                color: #000;
                text-decoration: none;
            }


            .nav-stacked>li+li {
                margin-top: 0px;
                margin-left: 0;
                border-bottom:1px solid #dadada;
                border-left:1px solid #dadada;
                border-right:1px solid #dadada;
            }

            .active2 {
                border-right:4px solid black;
            }
        </style>

    </head>

    <jsp:include page="BootstrapHeader.jsp"></jsp:include>
    <jsp:include page="navbar.jsp"></jsp:include>


        <body>
            <div class="container-fluid">

                <div class="row">

                    <div class="col-md-3"><!--Navigation-->

                        <div class="col-md-12 column text-left">
                            <ul class="nav nav-pills nav-stacked">
                                <li class="active">
                                    <a href="" class="active2">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        Home
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        Messages
                                        <span id="messagesCount" class='badge pull-right'>16</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        Saved Items
                                        <span id="savedadsCount" class='badge pull-right'>5</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                        Inquiry
                                        <span id="inquiryCount" class='badge pull-right'>1</span>
                                    </a>
                                </li>
                            </ul>
                            <br>
                        </div>

                    </div><!--Navigation end-->

                    <div class="col-md-9">

                        <div class="row">
                            <div class="col-md-12">
                                <button type="button" class="btn btn-block btn-lg btn-warning active">
                                    Post AD
                                </button>
                            </div>
                        </div>

                        <br>

                        <div class="row-fluid">
                            <div class="col-md-12">
                                <br>
                                <br>
                                <br>
                            </div>
                        </div>

                    </div>
                </div>

            <jsp:include page="footer_nav.jsp"></jsp:include>
        </div>
    </body>

</html>
