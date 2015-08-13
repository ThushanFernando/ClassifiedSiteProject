<%-- 
    Document   : index
    Created on : Jun 22, 2015, 6:48:51 PM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!--<![endif]-->
    <!-- start: HEAD -->
    <head>
        <title>Superb.lk-Admin</title>
        <!-- start: META -->
        <meta charset="utf-8" />
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta content="" name="description" />
        <meta content="" name="author" />
        <!-- end: META -->
        <!-- start: MAIN CSS -->
        <link rel="stylesheet" href="admin/plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="admin/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="admin/fonts/style.css">
        <link rel="stylesheet" href="admin/css/main.css">
        <link rel="stylesheet" href="admin/css/main-responsive.css">
        <link rel="stylesheet" href="admin/plugins/iCheck/skins/all.css">
        <link rel="stylesheet" href="admin/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
        <link rel="stylesheet" href="admin/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
        <link rel="stylesheet" href="admin/css/theme_light.css" type="text/css" id="skin_color">
        <link rel="stylesheet" href="admin/css/print.css" type="text/css" media="print"/>
        <!--[if IE 7]>
        <link rel="stylesheet" href="admin/plugins/font-awesome/css/font-awesome-ie7.min.css">
        <![endif]-->
        <!-- end: MAIN CSS -->
        <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="stylesheet" href="admin/plugins/fullcalendar/fullcalendar/fullcalendar.css">
        <link rel="stylesheet" href="admin/plugins/summernote/build/summernote.css">
        <link href="admin/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
        <link href="admin/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>

        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <!-- end: HEAD -->
    <!-- start: BODY -->
    <body onload="abc()">
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
                        <img  src="admin/images/logo.jpg" style="width: 100px;"/>

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
                                <img src="admin/images/profile_img.jpg" class="circle-img" alt="">
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
                                <li>
                                    <button onclick="abc()">test</button>

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
        <!-- end: HEADER -->
        <!-- start: MAIN CONTAINER -->
        <div class="main-container">
            <div class="navbar-content">
                <!-- start: SIDEBAR -->
                <div class="main-navigation navbar-collapse collapse">
                    <!-- start: MAIN MENU TOGGLER BUTTON -->
                    <div class="navigation-toggler">
                        <i class="clip-chevron-left"></i>
                        <i class="clip-chevron-right"></i>
                    </div>
                    <!-- end: MAIN MENU TOGGLER BUTTON -->
                    <!-- start: MAIN NAVIGATION MENU -->
                    <ul class="main-navigation-menu">
                        <li class="active open">
                            <a href="Dashboard"><i class="clip-home-3"></i>
                                <span class="title"> Dashboard </span><span class="selected"></span>
                            </a>
                        </li>

                        <li>
                            <a href="#" target="_blank"><i class="clip-cursor"></i>
                                <span class="title"> Frontend </span><span class="selected"></span>
                            </a>
                        </li>

                        <li>
                            <a href="javascript:void(0)"><i class="clip-bubble"></i>
                                <span class="title"> Messages </span><span id="MC1" class="badge"></span><i class="icon-arrow"></i>
                                <span class="selected"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="">
                                        <span class="title"> All </span>
                                        <span class="badge badge-new">new</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="title"> Read </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="title"> Unread </span>
                                        <span class="badge badge-new">new</span>
                                        <span id="MC2" class="badge"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="title"> Spam </span>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <li>
                            <a href="" ><i class="clip-user-block"></i>
                                <span class="title"> Blocked Users</span><span class="selected"></span>
                            </a>
                        </li>

                        <li>
                            <a href="" ><i class="clip-note"></i>
                                <span class="title"> Blocked Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="" ><i class="clip-user-4"></i>
                                <span class="title"> Review Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="" ><i class="clip-thumbs-up"></i>
                                <span class="title"> Upgrade Top Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="" ><i class="clip-clip"></i>
                                <span class="title"> View Reports</span><span class="selected"></span>
                            </a>
                        </li>

                    </ul>
                    <!-- end: MAIN NAVIGATION MENU -->
                </div>
                <!-- end: SIDEBAR -->
            </div>
            <!-- start: PAGE -->
            <div class="main-content">
                <!-- start: PANEL CONFIGURATION MODAL FORM -->
                <div class="modal fade" id="panel-config" tabindex="-1" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                                <h4 class="modal-title">Panel Configuration</h4>
                            </div>
                            <div class="modal-body">
                                Here will be a configuration form
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    Close
                                </button>
                                <button type="button" class="btn btn-primary">
                                    Save changes
                                </button>
                            </div>
                        </div>
                        <!-- /.modal-content -->
                    </div>
                    <!-- /.modal-dialog -->
                </div>
                <!-- /.modal -->
                <!-- end: SPANEL CONFIGURATION MODAL FORM -->
                <div class="container">
                    <!-- start: PAGE HEADER -->
                    <div class="row">
                        <div class="col-sm-12">

                            <!-- start: PAGE TITLE & BREADCRUMB -->
                            <ol class="breadcrumb">
                                <li>
                                    <i class="clip-home-3"></i>
                                    <a href="#">
                                        Home
                                    </a>
                                </li>
                                <li class="active">
                                    Messages &nbsp;/&nbsp; All
                                </li>
                                <li class="search-box">
                                    <form class="sidebar-search">
                                        <div class="form-group">
                                            <input type="text" placeholder="Start Searching...">
                                            <button class="submit">
                                                <i class="clip-search-3"></i>
                                            </button>
                                        </div>
                                    </form>
                                </li>
                            </ol>
                            <div class="page-header hidden-xs">
                                <h1>All <small>messages</small></h1>
                            </div>
                            <!-- end: PAGE TITLE & BREADCRUMB -->
                        </div>
                    </div>
                    <!-- end: PAGE HEADER -->
                    <!-- start: PAGE CONTENT -->
                    <div class="row">
                        <div class="col-md-12">
                            <!-- start: INBOX PANEL -->
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="fa fa-envelope-o"></i>
                                    Inbox
                                    <div class="panel-tools">
                                        <a class="btn btn-xs btn-link panel-collapse collapses" href="#">
                                        </a>
                                        <a class="btn btn-xs btn-link panel-config" href="#panel-config" data-toggle="modal">
                                            <i class="fa fa-wrench"></i>
                                        </a>
                                        <a class="btn btn-xs btn-link panel-refresh" href="#">
                                            <i class="fa fa-refresh"></i>
                                        </a>
                                        <a class="btn btn-xs btn-link panel-expand" href="#">
                                            <i class="fa fa-resize-full"></i>
                                        </a>
                                        <a class="btn btn-xs btn-link panel-close" href="#">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-body messages">
                                    <ul class="messages-list">
                                        <li class="messages-search" >
                                            <form action="#" class="form-inline">
                                                <div class="input-group">
                                                    <input type="text" id="searchmessage" onkeyup=" search()" class="form-control" placeholder="Search messages...">
                                                    <div class="input-group-btn">

                                                    </div>
                                                </div>
                                            </form>
                                        </li>
                                        <div style="overflow-y:  auto; height: 565px;" id="MsgAllXML" class="hidden-xs ">   

                                        </div>

                                    </ul>
                                    <div class="messages-content" style="height: 365px;">
                                        <div class="message-header">

                                            <div class="message-actions">
                                                <a title="Move to trash" href="#"><i class="fa fa-trash-o"></i></a>
                                                <a title="Report" href="#"><i class="fa fa-ban"></i></a>


                                            </div>
                                        </div>
                                        <div class="message-content">
                                            <ol class="discussion">

                                                <div id="conversation"></div>

                                            </ol>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- end: INBOX PANEL -->
                        </div>
                    </div>


                    <!-- end: PAGE CONTENT-->
                </div>
            </div>
            <!-- end: PAGE -->
        </div>
        <!-- end: MAIN CONTAINER -->
        <!-- start: FOOTER -->
        <div class="footer clearfix">
            <div class="footer-inner">
                2015 &copy; NextGlow.com
            </div>
            <div class="footer-items">
                <span class="go-top"><i class="clip-chevron-up"></i></span>
            </div>
        </div>
        <!-- end: FOOTER -->
        <div id="event-management" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                            &times;
                        </button>
                        <h4 class="modal-title">Event Management</h4>
                    </div>
                    <div class="modal-body"></div>
                    <div class="modal-footer">
                        <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                            Close
                        </button>
                        <button type="button" class="btn btn-danger remove-event no-display">
                            <i class='fa fa-trash-o'></i> Delete Event
                        </button>
                        <button type='submit' class='btn btn-success save-event'>
                            <i class='fa fa-check'></i> Save
                        </button>
                    </div>
                </div>
            </div>
        </div>

        <!-- start: BOOTSTRAP EXTENDED MODALS -->
        <div id="responsive" class="modal fade" tabindex="-1" data-width="500" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h2></h2>

            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-12">
                        <!-- start: FORM VALIDATION 1 PANEL -->
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <span class="badge">Enter current login details	</span>
                            </div>
                            <div class="panel-body">
                                <h2><i class="fa fa-pencil-square teal"></i> Change Your password</h2>

                                <hr>
                                <form action="#" role="form" id="form">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <div class="errorHandler alert alert-danger no-display">
                                                <i class="fa fa-times-sign"></i> You have some form errors. Please check below.
                                            </div>
                                            <div class="successHandler alert alert-success no-display">
                                                <i class="fa fa-ok"></i> Your form validation is successful!
                                            </div>
                                        </div>
                                        <div id="CheckPassXML" style="color: red;"></div>
                                        <div class="col-md-6">

                                            <div class="form-group">
                                                <label class="control-label">
                                                    User Name <span class="symbol required"></span>
                                                </label>
                                                <input type="text" placeholder="Insert your User Name" onclick="clr()" class="form-control" id="username">
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label">
                                                    Password <span class="symbol required"></span>
                                                </label>
                                                <input type="password" class="form-control" onclick="clr()"  id="password">
                                            </div>

                                        </div>

                                    </div>


                                </form>
                                <div class="row">
                                    <div class="col-md-4">
                                        <button class="btn btn-blue btn-block" onclick="login_check()" type="">
                                            Proceed <i class="fa fa-arrow-circle-right"></i>
                                        </button>
                                    </div>

                                </div>
                            </div>
                        </div>
                        <!-- end: FORM VALIDATION 1 PANEL -->
                    </div>
                </div>
            </div>

        </div>
        <!-- start: MAIN JAVASCRIPTS -->
        <!--[if lt IE 9]>
        <script src="admin/plugins/respond.min.js"></script>
        <script src="admin/plugins/excanvas.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <![endif]-->
        <!--[if gte IE 9]><!-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <!--<![endif]-->
        <script src="admin/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
        <script src="admin/plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="admin/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
        <script src="admin/plugins/blockUI/jquery.blockUI.js"></script>
        <script src="admin/plugins/iCheck/jquery.icheck.min.js"></script>
        <script src="admin/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
        <script src="admin/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
        <script src="admin/plugins/less/less-1.5.0.min.js"></script>
        <script src="admin/plugins/jquery-cookie/jquery.cookie.js"></script>
        <script src="admin/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
        <script src="admin/js/main.js"></script>
        <!-- end: MAIN JAVASCRIPTS -->
        <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
        <script src="admin/plugins/flot/jquery.flot.js"></script>
        <script src="admin/plugins/flot/jquery.flot.pie.js"></script>
        <script src="admin/plugins/flot/jquery.flot.resize.min.js"></script>
        <script src="admin/plugins/jquery.sparkline/jquery.sparkline.js"></script>
        <script src="admin/plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
        <script src="admin/plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
        <script src="admin/plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
        <script src="admin/js/index.js"></script>
        <script src="admin/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
        <script src="admin/plugins/summernote/build/summernote.min.js"></script>
        <script src="admin/plugins/ckeditor/ckeditor.js"></script>
        <script src="admin/plugins/ckeditor/adapters/jquery.js"></script>
        <script src="admin/js/form-validation.js"></script>
        <script src="admin/plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
        <script src="admin/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
        <script src="admin/js/ui-modals.js"></script>
        <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
        <script>
                                            google.load("visualization", "1", {packages: ["corechart"]});
                                            google.setOnLoadCallback(drawChart);

                                            function abc() {

                                                $.ajax({
                                                    type: "GET",
                                                    url: "DataCountsXML",
                                                    dataType: "xml",
                                                    success: function (xml) {
                                                        $("#MC").html("");
                                                        $("#MC1").html("");
                                                        $("#MC2").html("");

                                                        $(xml).find('values').each(function () {

                                                            var msgcount = $(this).find('msgcount').text();


                                                            $("#MC").append(msgcount);
                                                            $("#MC1").append(msgcount);
                                                            $("#MC2").append(msgcount);

                                                        });


                                                    }
                                                });
                                                $.ajax({
                                                    type: "GET",
                                                    url: "MsgXML",
                                                    dataType: "xml",
                                                    success: function (xml) {
                                                        $("#MsgXML").html("");

                                                        $(xml).find('value').each(function () {

                                                            var sender = $(this).find('sender').text();
                                                            var content = $(this).find('content').text();
                                                            var lngth = "";
                                                            if (content.length > 30) {
                                                                lngth = ".....";
                                                            }
                                                            var time = $(this).find('time').text();
                                                            var status = $(this).find('status').text();
                                                            var item;
                                                            item = $('<li' + status + '>\n'
                                                                    + '<a href="javascript:;">\n'
                                                                    + '<div class="clearfix">\n'
                                                                    + '<div class="thread-image "><i class="clip-user-5 circle-icon circle-blue" style="background-color:#0099c6;"></i></div>\n'
                                                                    + '<div class="thread-content">\n'
                                                                    + '<span class="author">' + sender + '</span>\n'
                                                                    + '<span class="preview">' + content.substring(0, 30) + lngth + '</span>\n'
                                                                    + '<span class="time">' + time + '</span>\n'
                                                                    + '</div>\n'
                                                                    + '</div>\n'
                                                                    + '</a>\n'
                                                                    + '</li>\n');
                                                            $("#MsgXML").append(item);


                                                        });


                                                    }
                                                });
                                                $.ajax({
                                                    type: "GET",
                                                    url: "MsgXML",
                                                    dataType: "xml",
                                                    success: function (xml) {
                                                        $("#MsgAllXML").html("");

                                                        $(xml).find('value').each(function () {

                                                            var sender = $(this).find('sender').text();
                                                            var content = $(this).find('content').text();
                                                            var lngth = "";
                                                            if (content.length > 50) {
                                                                lngth = ".....";
                                                            }
                                                            var time = $(this).find('time').text();
                                                            var status = $(this).find('status').text();
                                                            var item;


                                                            item = $('<li ' + status + ' class="messages-item">\n'
                                                                    + '<clicked_con id="' + sender + '" ><span class="messages-item-from">' + sender + '</span></clicked_con>\n'
                                                                    + '<div class="messages-item-time">\n'
                                                                    + '<div class="messages-item-actions">\n'
                                                                    + '<div class="dropdown">\n'
                                                                    + '<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>\n'
                                                                    + '<ul class="dropdown-menu pull-right">\n'
                                                                    + '<li>\n'
                                                                    + '<a href="#">\n'
                                                                    + '<i class="fa fa-ban"></i>\n'
                                                                    + 'Report\n'
                                                                    + '</a>\n'
                                                                    + '</li>\n'
                                                                    + '<li>\n'
                                                                    + '<a href="#">\n'
                                                                    + '<i class="fa fa-trash-o"></i>\n'
                                                                    + 'Delete Conversation\n'
                                                                    + '</a>\n'
                                                                    + '</li>\n'
                                                                    + '</ul>\n'
                                                                    + '</div>\n'
                                                                    + '</div>\n'
                                                                    + '</div>\n'
                                                                    + '<span class="messages-item-preview">' + content.substring(0, 30) + lngth + '<br>' + time + '</span>\n'
                                                                    + '</li>\n');


                                                            $("#MsgAllXML").append(item);


                                                        });


                                                    }
                                                });




                                            }
                                            ;


                                            function clr() {

                                                document.getElementById("CheckPassXML").innerHTML = "";
                                                document.getElementById("username").value = "";
                                                document.getElementById("password").value = "";


                                            }
                                            function search() {
                                                var search = document.getElementById('searchmessage').value;
                                                $.ajax({
                                                    type: "GET",
                                                    url: "MsgXML",
                                                    data: {
                                                        sid: search
                                                    },
                                                    dataType: "xml",
                                                    success: function (xml) {
                                                        $("#MsgAllXML").html("");

                                                        $(xml).find('value').each(function () {

                                                            var sender = $(this).find('sender').text();
                                                            var content = $(this).find('content').text();
                                                            var lngth = "";
                                                            if (content.length > 50) {
                                                                lngth = ".....";
                                                            }
                                                            var time = $(this).find('time').text();
                                                            var status = $(this).find('status').text();
                                                            var item;


                                                            item = $('<li ' + status + ' class="messages-item">\n'
                                                                    + '<clicked_con id="' + sender + '" ><span class="messages-item-from">' + sender + '</span></clicked_con>\n'
                                                                    + '<div class="messages-item-time">\n'
                                                                    + '<div class="messages-item-actions">\n'
                                                                    + '<div class="dropdown">\n'
                                                                    + '<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>\n'
                                                                    + '<ul class="dropdown-menu pull-right">\n'
                                                                    + '<li>\n'
                                                                    + '<a href="#">\n'
                                                                    + '<i class="fa fa-ban"></i>\n'
                                                                    + 'Report\n'
                                                                    + '</a>\n'
                                                                    + '</li>\n'
                                                                    + '<li>\n'
                                                                    + '<a href="#">\n'
                                                                    + '<i class="fa fa-trash-o"></i>\n'
                                                                    + 'Delete Conversation\n'
                                                                    + '</a>\n'
                                                                    + '</li>\n'
                                                                    + '</ul>\n'
                                                                    + '</div>\n'
                                                                    + '</div>\n'
                                                                    + '</div>\n'
                                                                    + '<span class="messages-item-preview">' + content.substring(0, 30) + lngth + '<br>' + time + '</span>\n'
                                                                    + '</li>\n');


                                                            $("#MsgAllXML").append(item);


                                                        });


                                                    }
                                                });
                                            }



                                            function login_check() {
                                                var username = document.getElementById('username').value;

                                                var password = document.getElementById('password').value;

                                                if (username === "" || password === "") {
                                                    document.getElementById('CheckPassXML').innerHTML = "&nbsp&nbsp&nbsp Enter current login details";
                                                } else {

                                                    $.ajax({
                                                        type: "GET",
                                                        url: "CheckPassXML",
                                                        dataType: "xml",
                                                        data: {
                                                            username: username,
                                                            password: password

                                                        },
                                                        success: function (xml) {
                                                            $("#CheckPassXML").html("");

                                                            $(xml).find('value').each(function () {

                                                                var result = $(this).find('Result').text();
                                                                if (result === "true") {
                                                                    window.location.replace("admin/change_pass.jsp");
                                                                } else {
                                                                    document.getElementById('CheckPassXML').innerHTML = "&nbsp&nbsp&nbsp Check your username or password";
                                                                }
                                                            });


                                                        }
                                                    });
                                                }
                                            }

        </script>
        <script>
            $(document).on('click', 'clicked_con', function () {

                var selected_con = this.id;

                $.ajax({
                    type: "GET",
                    url: "ConversationXML",
                    data: {
                        selected_con: selected_con
                    },
                    dataType: "xml",
                    success: function (xml) {
                        $("#conversation").html("");
                        $(xml).find('value').each(function () {
                            var sender = $(this).find('sender').text();
                            var content = $(this).find('content').text();
                            var type = $(this).find('type').text();
                            var time = $(this).find('time').text();
                            var style = $(this).find('style').text();


                            item = $('<li class="' + type + '">\n'
                                    + '<div class="avatar">\n'
                                    + '<span  class="badge">' + sender + '</span>\n'
                                    + '</div>\n'
                                    + '<div class="messages" ' + style + ' >\n'
                                    + '<p>\n'
                                    + '' + content + '\n'
                                    + '</p>\n'
                                    + '<span class="time">  • ' + time + ' </span>\n'
                                    + '</div>\n'
                                    + '</li>\n');
                            $("#conversation").append(item);
                        });
                        $("#GetData").html('AJAX Request is succeded!');
                    },
                    error: function () {
                        $("#GetData").html('An error occurred while processing XML file!');
                    }
                });
            });</script>
        <script>
            jQuery(document).ready(function () {
                Main.init();
                Index.init();
                UIModals.init();
                FormValidator.init();
            });
        </script>
    </body>
    <!-- end: BODY -->
</html>
