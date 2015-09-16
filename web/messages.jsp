<%-- 
    Document   : messages
    Created on : Sep 16, 2015, 11:11:09 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Messages</title>
        <jsp:include page="BootstrapHeader.jsp"></jsp:include>
            <link rel="stylesheet" href="custom_styles_scripts/tabs_panel.css"/>
            <link rel="stylesheet" href="custom_styles_scripts/offer_style.css"/>
        </head>    

        <body>
        <jsp:include page="navbar.jsp"></jsp:include>

            <div class="container-fluid">
                <div class="row">

                    <div class="col-md-3">
                    </div>

                    <div class="col-md-9">

                        <div class="tabbable-panel">

                            <div class="tabbable-line">

                                <ul class="nav nav-tabs full-width">

                                    <li class="active">
                                        <a href="#tab_default_1" data-toggle="tab">
                                            Inbox</a>
                                    </li>

                                    <li>
                                        <a href="#tab_default_2" data-toggle="tab">
                                            Outbox</a>
                                    </li>

                                </ul>

                                <div class="tab-content">

                                    <div class="tab-pane active" id="tab_default_1">
                                        <blockquote class="offer offer-warning">
                                            <div class="offer-content">
                                                First Message Body                                             
                                            </div>

                                            <small class="text-right">From: ADMIN</small>
                                            <small class="text-right">Date: 2015/09/10</small>
                                            <hr>

                                            <div class="btn-group btn-group-sm pull-right">
                                                <button type="button" class="btn btn-success">Reply</button>
                                                <button type="button" class="btn btn-info">View</button>
                                                <button type="button" class="btn btn-warning">Report</button>
                                                <button type="button" class="btn btn-danger">Delete</button>
                                            </div>
                                        </blockquote>

                                        <blockquote class="offer offer-warning">
                                            <div class="offer-content">
                                                Second Message Body                                             
                                            </div>

                                            <small class="text-right">From: ADMIN</small>
                                            <small class="text-right">Date: 2015/09/10</small>
                                            <hr>

                                            <div class="btn-group btn-group-sm pull-right">
                                                <button type="button" class="btn btn-success">Reply</button>
                                                <button type="button" class="btn btn-info">View</button>
                                                <button type="button" class="btn btn-warning">Report</button>
                                                <button type="button" class="btn btn-danger">Delete</button>
                                            </div>
                                        </blockquote>
                                        
                                    </div>

                                    <div class="tab-pane" id="tab_default_2">
                                        
                                        <blockquote class="offer offer-warning">
                                            <div class="offer-content">
                                                First Sent Message Body                                             
                                            </div>

                                            <small class="text-right">From: ADMIN</small>
                                            <small class="text-right">Date: 2015/09/10</small>
                                            <hr>

                                            <div class="btn-group btn-group-sm pull-right">
                                                <button type="button" class="btn btn-info">View</button>
                                                <button type="button" class="btn btn-danger">Delete</button>
                                            </div>
                                        </blockquote>
                                        
                                        <blockquote class="offer offer-warning">
                                            <div class="offer-content">
                                                Second Sent Message Body                                             
                                            </div>

                                            <small class="text-right">From: ADMIN</small>
                                            <small class="text-right">Date: 2015/09/10</small>
                                            <hr>

                                            <div class="btn-group btn-group-sm pull-right">
                                                <button type="button" class="btn btn-info">View</button>
                                                <button type="button" class="btn btn-danger">Delete</button>
                                            </div>
                                        </blockquote>
                                        
                                    </div>

                                </div>

                            </div>

                        </div>

                    </div>

                </div>
            </div>

        <jsp:include page="footer_nav.jsp"></jsp:include>  
    </body>
</html>
