<%-- 
    Document   : index
    Created on : Jun 22, 2015, 6:48:51 PM
    Author     : SithuDewmi
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="classes.AdminClass_Overviewstats"%>
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
        <link href="admin/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
        <link href="admin/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="admin/plugins/summernote/build/summernote.css">
        <link href="admin/plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
        <link href="admin/plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="admin/plugins/bootstrap-daterangepicker/daterangepicker-bs3.css">
        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <!-- end: HEAD -->
    <!-- start: BODY -->
    <body onload="abc()">
        <%

            ArrayList al = (ArrayList) request.getAttribute("categoriesPresentage");
            Iterator itr = al.iterator();
            AdminClass_Overviewstats received = null;
            ArrayList catname = new ArrayList();
            ArrayList catval = new ArrayList();
            while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Overviewstats) a;
                catname.add(received.getCategory());
                catval.add(received.getCount());
            }

            al = (ArrayList) request.getAttribute("pagevisitMonth");
            itr = al.iterator();
            ArrayList pvmonth = new ArrayList();
            ArrayList pvcount = new ArrayList();
            while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Overviewstats) a;
                pvmonth.add(received.getTimePeriod());
                pvcount.add(received.getCount());

            }

            al = (ArrayList) request.getAttribute("usersMonth");
            itr = al.iterator();
            ArrayList umonth = new ArrayList();
            ArrayList ucount = new ArrayList();
            while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Overviewstats) a;
                umonth.add(received.getTimePeriod());
                ucount.add(received.getCount());

            }

            al = (ArrayList) request.getAttribute("adsMonth");
            itr = al.iterator();
            ArrayList amonth = new ArrayList();
            ArrayList acount = new ArrayList();
            while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Overviewstats) a;
                amonth.add(received.getTimePeriod());
                acount.add(received.getCount());

            }

            al = (ArrayList) request.getAttribute("pagevisitYear");
            itr = al.iterator();
            ArrayList pvyear = new ArrayList();
            ArrayList pvycount = new ArrayList();
            while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Overviewstats) a;
                pvyear.add(received.getTimePeriod());
                pvycount.add(received.getCount());

            }

            al = (ArrayList) request.getAttribute("usersYear");
            itr = al.iterator();
            ArrayList uyear = new ArrayList();
            ArrayList uycount = new ArrayList();
            while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Overviewstats) a;
                uyear.add(received.getTimePeriod());
                uycount.add(received.getCount());

            }

            al = (ArrayList) request.getAttribute("adsYear");
            itr = al.iterator();
            ArrayList ayear = new ArrayList();
            ArrayList aycount = new ArrayList();
            while (itr.hasNext()) {
                Object a = itr.next();
                received = (AdminClass_Overviewstats) a;
                ayear.add(received.getTimePeriod());
                aycount.add(received.getCount());

            }

        %>
        <!-- start: HEADER -->
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
                    <a class="navbar-brand" href="index.jsp">
                        <img  src="admin/images/logo.jpg" style="width: 100px;"/>

                    </a>
                    <!-- end: LOGO -->
                </div>
                <div class="navbar-tools">
                    <!-- start: TOP NAVIGATION MENU -->
                    <ul class="nav navbar-right">


                        <!-- start: NOTIFICATION DROPDOWN -->
                        <li class="dropdown">
                            <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" data-close-others="true" href="#">
                                <i class="clip-notification-2"></i>
                                <span id="NC" class="badge"></span>
                            </a>
                            <ul class="dropdown-menu notifications">
                                <li>
                                    <span class="dropdown-menu-title"> You have 11 notifications</span>
                                </li>
                                <li>
                                    <div class="drop-down-wrapper">
                                        <ul>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-primary"><i class="fa fa-user"></i></span>
                                                    <span class="message"> New user registration</span>
                                                    <span class="time"> 1 min</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-success"><i class="fa fa-comment"></i></span>
                                                    <span class="message"> New comment</span>
                                                    <span class="time"> 7 min</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-success"><i class="fa fa-comment"></i></span>
                                                    <span class="message"> New comment</span>
                                                    <span class="time"> 8 min</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-success"><i class="fa fa-comment"></i></span>
                                                    <span class="message"> New comment</span>
                                                    <span class="time"> 16 min</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-primary"><i class="fa fa-user"></i></span>
                                                    <span class="message"> New user registration</span>
                                                    <span class="time"> 36 min</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-warning"><i class="fa fa-shopping-cart"></i></span>
                                                    <span class="message"> 2 items sold</span>
                                                    <span class="time"> 1 hour</span>
                                                </a>
                                            </li>
                                            <li class="warning">
                                                <a href="javascript:void(0)">
                                                    <span class="label label-danger"><i class="fa fa-user"></i></span>
                                                    <span class="message"> User deleted account</span>
                                                    <span class="time"> 2 hour</span>
                                                </a>
                                            </li>
                                            <li class="warning">
                                                <a href="javascript:void(0)">
                                                    <span class="label label-danger"><i class="fa fa-shopping-cart"></i></span>
                                                    <span class="message"> Transaction was canceled</span>
                                                    <span class="time"> 6 hour</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-success"><i class="fa fa-comment"></i></span>
                                                    <span class="message"> New comment</span>
                                                    <span class="time"> yesterday</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-primary"><i class="fa fa-user"></i></span>
                                                    <span class="message"> New user registration</span>
                                                    <span class="time"> yesterday</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-primary"><i class="fa fa-user"></i></span>
                                                    <span class="message"> New user registration</span>
                                                    <span class="time"> yesterday</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-success"><i class="fa fa-comment"></i></span>
                                                    <span class="message"> New comment</span>
                                                    <span class="time"> yesterday</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:void(0)">
                                                    <span class="label label-success"><i class="fa fa-comment"></i></span>
                                                    <span class="message"> New comment</span>
                                                    <span class="time"> yesterday</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="view-all">
                                    <a href="notifications.jsp">
                                        See all notifications <i class="fa fa-arrow-circle-o-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <!-- end: NOTIFICATION DROPDOWN -->
                        <!-- start: MESSAGE DROPDOWN -->

                        <li class="dropdown">

                            <a class="dropdown-toggle" data-close-others="true" data-hover="dropdown" data-toggle="dropdown" href="#">
                                <i class="clip-bubble-3"></i>
                                <span id="MC" class="badge"></span>
                            </a>
                            <ul class="dropdown-menu posts">

                                <li>

                                    <div class="drop-down-wrapper">
                                        <ul>
                                            <li>
                                                <a href="javascript:;">
                                                    <div class="clearfix">
                                                        <div class="thread-image">
                                                            <img alt="" src="./admin/images/avatar-2.jpg">
                                                        </div>
                                                        <div class="thread-content">
                                                            <span class="author">Nicole Bell</span>
                                                            <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
                                                            <span class="time"> Just Now</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <div class="clearfix">
                                                        <div class="thread-image">
                                                            <img alt="" src="./admin/images/avatar-1.jpg">
                                                        </div>
                                                        <div class="thread-content">
                                                            <span class="author">Peter Clark</span>
                                                            <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
                                                            <span class="time">2 mins</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <div class="clearfix">
                                                        <div class="thread-image">
                                                            <img alt="" src="./admin/images/avatar-3.jpg">
                                                        </div>
                                                        <div class="thread-content">
                                                            <span class="author">Steven Thompson</span>
                                                            <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
                                                            <span class="time">8 hrs</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <div class="clearfix">
                                                        <div class="thread-image">
                                                            <img alt="" src="./admin/images/avatar-1.jpg">
                                                        </div>
                                                        <div class="thread-content">
                                                            <span class="author">Peter Clark</span>
                                                            <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
                                                            <span class="time">9 hrs</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="javascript:;">
                                                    <div class="clearfix">
                                                        <div class="thread-image">
                                                            <img alt="" src="./admin/images/avatar-5.jpg">
                                                        </div>
                                                        <div class="thread-content">
                                                            <span class="author">Kenneth Ross</span>
                                                            <span class="preview">Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.</span>
                                                            <span class="time">14 hrs</span>
                                                        </div>
                                                    </div>
                                                </a>
                                            </li>
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
                                    <a href="#responsive" data-toggle="modal"><i class="clip-key"></i>
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
                            <a href="index.jsp"><i class="clip-home-3"></i>
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
                                    <a href="msg_all.jsp">
                                        <span class="title"> All </span>
                                        <span class="badge badge-new">new</span>
                                    </a>
                                </li>
                                <li>
                                    <a href="msg_read.jsp">
                                        <span class="title"> Read </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="msg_unread.jsp">
                                        <span class="title"> Unread </span>
                                        <span class="badge badge-new">new</span>
                                        <span id="MC2" class="badge"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="msg_spam.jsp">
                                        <span class="title"> Spam </span>
                                    </a>
                                </li>

                            </ul>
                        </li>

                        <li>
                            <a href="user_blocked.jsp" ><i class="clip-user-block"></i>
                                <span class="title"> Blocked Users</span><span class="selected"></span>
                            </a>
                        </li>

                        <li>
                            <a href="ads_blocked.jsp" ><i class="clip-note"></i>
                                <span class="title"> Blocked Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="ads_review.jsp" ><i class="clip-user-4"></i>
                                <span class="title"> Review Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="upgrade.jsp" ><i class="clip-thumbs-up"></i>
                                <span class="title"> Upgrade Top Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="report_view.jsp" ><i class="clip-clip"></i>
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
                                    Dashboard
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
                            <div class="page-header">
                                <h1>Dashboard <small>overview &amp; stats </small></h1>
                            </div>
                            <!-- end: PAGE TITLE & BREADCRUMB -->
                        </div>
                    </div>
                    <!-- end: PAGE HEADER -->
                    <!-- start: PAGE CONTENT -->
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="core-box">
                                <div class="heading">
                                    <a href="#">
                                        <i class="clip-user-4 circle-icon circle-green"></i>  
                                        <span id="RA" class="badge"></span>
                                        <h2>Review Ads</h2>
                                    </a>
                                </div>


                            </div>
                        </div>

                        <div class="col-sm-4">
                            <div class="core-box">
                                <div class="heading">
                                    <a href="#">	
                                        <i class="clip-thumbs-up circle-icon circle-bricky"></i>
                                        <span id="TA" class="badge"></span>
                                        <h2>Upgrade Top Ads</h2>
                                    </a>
                                </div>

                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="core-box">
                                <div class="heading">
                                    <a href="#">
                                        <i class="clip-clip circle-icon circle-teal"></i>
                                        <span id="VR" class="badge"></span>
                                        <h2>View Reports</h2>
                                    </a>
                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-7">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <i class="clip-stats"></i>
                                    <div id="date"></div>
                                    <div class="panel-tools">

                                        <a class="btn btn-xs btn-link panel-close" href="#">
                                            <i class="fa fa-times"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div id="chart_div"  style=" height: 200px; " ></div>

                                </div>
                            </div>
                        </div>
                        <div class="col-sm-5">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="panel panel-default">
                                        <div class="panel-heading">
                                            <i class="clip-pie"></i>
                                            Categories
                                            <div class="panel-tools">

                                                <a class="btn btn-xs btn-link panel-close" href="#">
                                                    <i class="fa fa-times"></i>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="panel-body">
                                            <div id="piechart" style=""></div>


                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="row space12">
                                <ul class="mini-stats col-sm-12">
                                    <a href="#sitevisit" data-toggle="modal">
                                        <li class="col-sm-4">
                                            <div id="columnchart_sitevisit" style="width: 250px; height: 170px;"></div>
                                            <div id="columnchart_sitevisit_date" style="text-align: left"></div>
                                        </li>
                                    </a>
                                    <a href="#allusers" data-toggle="modal">
                                        <li class="col-sm-4">
                                            <div id="columnchart_users" style="width: 250px; height: 170px;"></div>
                                            <div id="columnchart_users_date" style="text-align: left"></div>
                                        </li>
                                    </a>
                                    <a href="#allads" data-toggle="modal">
                                        <li class="col-sm-4">
                                            <div id="columnchart_ads" style="width: 250px; height: 170px;"></div>
                                            <div id="columnchart_ads_date" style="text-align: left"></div>
                                        </li>
                                    </a>
                                </ul>
                            </div>
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
                                Step 1. Enter current login details	
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
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label class="control-label">
                                                    User Name <span class="symbol required"></span>
                                                </label>
                                                <input type="text" placeholder="Insert your User Name" class="form-control" id="username" name="username">
                                            </div>

                                            <div class="form-group">
                                                <label class="control-label">
                                                    Password <span class="symbol required"></span>
                                                </label>
                                                <input type="password" class="form-control" name="password" id="password">
                                            </div>

                                        </div>

                                    </div>

                                    <div class="row">
                                        <div class="col-md-4">
                                            <button class="btn btn-blue btn-block" type="submit">
                                                Proceed <i class="fa fa-arrow-circle-right"></i>
                                            </button>
                                        </div>

                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- end: FORM VALIDATION 1 PANEL -->
                    </div>
                </div>
            </div>

        </div>



        <%  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Calendar c1 = Calendar.getInstance();
            Calendar now = Calendar.getInstance();
            c1.set(now.get(Calendar.YEAR), now.get(Calendar.MONTH), 01);

            c1.add(Calendar.MONTH, -12);

            float totalVisit = 0;
            for (int i = 0; i < pvcount.size(); i++) {
                totalVisit += Integer.parseInt((String) pvcount.get(i));
            }

            float totalVisitYear = 0;
            for (int i = 0; i < pvycount.size(); i++) {
                totalVisitYear += Integer.parseInt((String) pvycount.get(i));
            }

        %>

        <div id="sitevisit" class="modal fade" tabindex="-1" data-width="1000" style="display: none;">
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
                                <i class="fa fa-external-link-square"></i>
                                Site visit Summary

                            </div>
                            <div class="panel-body">
                                <div class="col-md-6">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover" id="sample-table-1">
                                            <thead>
                                                <tr>

                                                    <th>Time period(Month)</th>
                                                    <th>Visit count</th>
                                                    <th>Percentage </th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (int i = 0; i < 13; i++) {
                                                        String thisMonth = (String) sdf.format(c1.getTime());
                                                        c1.add(Calendar.MONTH, +1);
                                                        String nextMonth = (String) sdf.format(c1.getTime());
                                                        DecimalFormat twoDForm = new DecimalFormat("#.#");
                                                %>

                                                <tr>

                                                    <td><%=thisMonth%> to <%=nextMonth%></td>
                                                    <td><%=pvcount.get(i)%></td>
                                                    <td><%=twoDForm.format(Integer.parseInt((String) pvcount.get(i)) / totalVisit * 100)%>%</td>

                                                </tr>
                                                <%    }%>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-5"><span class="badge">Site visits for the past 12 Months:</span></div>
                                        <div class="col-md-1"><span class="badge"><%=Math.round(totalVisit)%></span></div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-5"><span class="badge">Site visits for the past 6 Years:</span></div>
                                        <div class="col-md-1"><span class="badge"><%=Math.round(totalVisitYear)%></span></div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="table-responsive"><br>
                                        <table class="table table-bordered table-hover" id="sample-table-1">
                                            <thead>
                                                <tr>

                                                    <th>Time period(Year)</th>
                                                    <th>Visit count</th>
                                                    <th>Percentage </th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (int i = 0; i < 7; i++) {

                                                        DecimalFormat twoDForm = new DecimalFormat("#.#");
                                                %>

                                                <tr>

                                                    <td><%=pvyear.get(i)%></td>
                                                    <td><%=pvycount.get(i)%></td>
                                                    <td><%=twoDForm.format(Integer.parseInt((String) pvycount.get(i)) / totalVisitYear * 100)%>%</td>

                                                </tr>
                                                <%    }%>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- end: FORM VALIDATION 1 PANEL -->
                    </div>
                </div>
            </div>

        </div>
        <%

            float totalUsers = 0;
            for (int i = 0; i < ucount.size(); i++) {
                totalUsers += Integer.parseInt((String) ucount.get(i));
            }

            float totalUsersYear = 0;
            for (int i = 0; i < uycount.size(); i++) {
                totalUsersYear += Integer.parseInt((String) uycount.get(i));
            }

        %>

        <div id="allusers" class="modal fade" tabindex="-1" data-width="1000" style="display: none;">
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
                                <i class="fa fa-external-link-square"></i>
                                All users Summary

                            </div>
                            <div class="panel-body">
                                <div class="col-md-6">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover" id="sample-table-1">
                                            <thead>
                                                <tr>

                                                    <th>Time period(Month)</th>
                                                    <th>Users count</th>
                                                    <th>Percentage </th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (int i = 0; i < 13; i++) {
                                                        String thisMonth = (String) sdf.format(c1.getTime());
                                                        c1.add(Calendar.MONTH, +1);
                                                        String nextMonth = (String) sdf.format(c1.getTime());
                                                        DecimalFormat twoDForm = new DecimalFormat("#.#");
                                                %>

                                                <tr>

                                                    <td><%=thisMonth%> to <%=nextMonth%></td>
                                                    <td><%=ucount.get(i)%></td>
                                                    <td><%=twoDForm.format(Integer.parseInt((String) ucount.get(i)) / totalVisit * 100)%>%</td>

                                                </tr>
                                                <%    }%>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-5"><span class="badge">Users for the past 12 Months:</span></div>
                                        <div class="col-md-1"><span class="badge"><%=Math.round(totalUsers)%></span></div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-5"><span class="badge">Users for the past 6 Years:</span></div>
                                        <div class="col-md-1"><span class="badge"><%=Math.round(totalUsersYear)%></span></div>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <div class="table-responsive"><br>
                                        <table class="table table-bordered table-hover" id="sample-table-1">
                                            <thead>
                                                <tr>

                                                    <th>Time period(Year)</th>
                                                    <th>Visit count</th>
                                                    <th>Percentage </th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (int i = 0; i < 7; i++) {

                                                        DecimalFormat twoDForm = new DecimalFormat("#.#");
                                                %>

                                                <tr>

                                                    <td><%=uyear.get(i)%></td>
                                                    <td><%=uycount.get(i)%></td>
                                                    <td><%=twoDForm.format(Integer.parseInt((String) uycount.get(i)) / totalUsersYear * 100)%>%</td>

                                                </tr>
                                                <%    }%>
                                            </tbody>
                                        </table>
                                    </div>

                                </div>

                            </div>
                        </div>
                        <!-- end: FORM VALIDATION 1 PANEL -->
                    </div>
                </div>
            </div>

        </div>

        <%

            float totalAds = 0;
            for (int i = 0; i < acount.size(); i++) {
                totalAds += Integer.parseInt((String) acount.get(i));
            }

            float totalAdsYear = 0;
            for (int i = 0; i < aycount.size(); i++) {
                totalAdsYear += Integer.parseInt((String) aycount.get(i));
            }

        %>                                    

        <div id="allads" class="modal fade" tabindex="-1" data-width="1000" style="display: none;">
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
                                <i class="fa fa-external-link-square"></i>
                                All ads Summary

                            </div>
                            <div class="panel-body">
                                <div class="col-md-6">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover" id="sample-table-1">
                                            <thead>
                                                <tr>

                                                    <th>Time period(Month)</th>
                                                    <th>Ads count</th>
                                                    <th>Percentage </th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (int i = 0; i < 13; i++) {
                                                        String thisMonth = (String) sdf.format(c1.getTime());
                                                        c1.add(Calendar.MONTH, +1);
                                                        String nextMonth = (String) sdf.format(c1.getTime());
                                                        DecimalFormat twoDForm = new DecimalFormat("#.#");
                                                %>

                                                <tr>

                                                    <td><%=thisMonth%> to <%=nextMonth%></td>
                                                    <td><%=acount.get(i)%></td>
                                                    <td><%=twoDForm.format(Integer.parseInt((String) acount.get(i)) / totalAds * 100)%>%</td>

                                                </tr>
                                                <%    }%>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="row">
                                        <div class="col-md-5"><span class="badge">Ads for the past 12 Months:</span></div>
                                        <div class="col-md-1"><span class="badge"><%=Math.round(totalAds)%></span></div>
                                    </div><br>
                                    <div class="row">
                                        <div class="col-md-5"><span class="badge">Ads for the past 6 Years:</span></div>
                                        <div class="col-md-1"><span class="badge"><%=Math.round(totalAdsYear)%></span></div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="table-responsive"><br>
                                        <table class="table table-bordered table-hover" id="sample-table-1">
                                            <thead>
                                                <tr>

                                                    <th>Time period(Year)</th>
                                                    <th>Ads count</th>
                                                    <th>Percentage </th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%for (int i = 0; i < 7; i++) {

                                                        DecimalFormat twoDForm = new DecimalFormat("#.#");
                                                %>

                                                <tr>

                                                    <td><%=ayear.get(i)%></td>
                                                    <td><%=aycount.get(i)%></td>
                                                    <td><%=twoDForm.format(Integer.parseInt((String) aycount.get(i)) / totalAdsYear * 100)%>%</td>

                                                </tr>
                                                <%    }%>
                                            </tbody>
                                        </table>
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
        <!-- load Google AJAX API -->
        <script type="text/javascript" src="admin/js/chart.js"></script>

        <script>
        google.load("visualization", "1", {packages: ["corechart"]});
        google.setOnLoadCallback(drawChart);

        function abc() {

            $.ajax({
                type: "GET",
                url: "DataCounts",
                dataType: "xml",
                success: function (xml) {
                    $("#MC").html("");

                    $(xml).find('values').each(function () {

                        var msgcount = $(this).find('msgcount').text();
                        var notcount = $(this).find('notcount').text();
                        var reviewads = $(this).find('reviewads').text();
                        var topads = $(this).find('topads').text();
                        var viewreports = $(this).find('viewreports').text();

                        $("#MC").append(msgcount);
                        $("#MC1").append(msgcount);
                        $("#MC2").append(msgcount);
                        $("#NC").append(notcount);
                        $("#RA").append(reviewads);
                        $("#TA").append(topads);
                        $("#VR").append(viewreports);

                    });


                }
            });


        }
        ;

        </script>


        <script type="text/javascript">

            google.load("visualization", "1", {packages: ["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {

                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ["<%=(String) catname.get(0)%>", <%=(String) catval.get(0)%>],
                    ["<%=(String) catname.get(1)%>", <%=(String) catval.get(1)%>],
                    ["<%=(String) catname.get(2)%>", <%=(String) catval.get(2)%>],
                    ["<%=(String) catname.get(3)%>", <%=(String) catval.get(3)%>],
                    ["<%=(String) catname.get(4)%>", <%=(String) catval.get(4)%>],
                    ["<%=(String) catname.get(5)%>", <%=(String) catval.get(5)%>],
                    ["<%=(String) catname.get(6)%>", <%=(String) catval.get(6)%>],
                    ["<%=(String) catname.get(7)%>", <%=(String) catval.get(7)%>],
                    ["<%=(String) catname.get(8)%>", <%=(String) catval.get(8)%>],
                    ["<%=(String) catname.get(9)%>", <%=(String) catval.get(9)%>],
                    ["<%=(String) catname.get(10)%>",<%=(String) catval.get(10)%>],
                    ["<%=(String) catname.get(11)%>",<%=(String) catval.get(11)%>]
                ]);


                var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                chart.draw(data);
            }
        </script>


        <script type="text/javascript">//area chart

            google.load("visualization", "1", {packages: ["corechart"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Month', 'Visits'],
                    ['<%=(String) pvmonth.get(0)%>', <%=(String) pvcount.get(0)%>],
                    ['<%=(String) pvmonth.get(1)%>', <%=(String) pvcount.get(1)%>],
                    ['<%=(String) pvmonth.get(2)%>', <%=(String) pvcount.get(2)%>],
                    ['<%=(String) pvmonth.get(3)%>', <%=(String) pvcount.get(3)%>],
                    ['<%=(String) pvmonth.get(4)%>', <%=(String) pvcount.get(4)%>],
                    ['<%=(String) pvmonth.get(5)%>', <%=(String) pvcount.get(5)%>],
                    ['<%=(String) pvmonth.get(6)%>', <%=(String) pvcount.get(6)%>],
                    ['<%=(String) pvmonth.get(7)%>', <%=(String) pvcount.get(7)%>],
                    ['<%=(String) pvmonth.get(8)%>', <%=(String) pvcount.get(8)%>],
                    ['<%=(String) pvmonth.get(9)%>', <%=(String) pvcount.get(9)%>],
                    ['<%=(String) pvmonth.get(10)%>', <%=(String) pvcount.get(10)%>],
                    ['<%=(String) pvmonth.get(11)%>', <%=(String) pvcount.get(11)%>],
                    ['<%=(String) pvmonth.get(12)%>', <%=(String) pvcount.get(12)%>]


                ]);



                var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
                chart.draw(data);
                var y = new Date().getFullYear();
                var m = new Date().getMonth() + 1;
                document.getElementById("date").innerHTML = '12months Sitevisits upto ' + m + "-" + y;

            }
        </script>
        <script type="text/javascript">
            google.load("visualization", "1", {packages: ["bar"]});
            google.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Month', 'Visits'],
                    ['<%=(String) pvmonth.get(0)%>', <%=(String) pvcount.get(0)%>],
                    ['<%=(String) pvmonth.get(1)%>', <%=(String) pvcount.get(1)%>],
                    ['<%=(String) pvmonth.get(2)%>', <%=(String) pvcount.get(2)%>],
                    ['<%=(String) pvmonth.get(3)%>', <%=(String) pvcount.get(3)%>],
                    ['<%=(String) pvmonth.get(4)%>', <%=(String) pvcount.get(4)%>],
                    ['<%=(String) pvmonth.get(5)%>', <%=(String) pvcount.get(5)%>],
                    ['<%=(String) pvmonth.get(6)%>', <%=(String) pvcount.get(6)%>],
                    ['<%=(String) pvmonth.get(7)%>', <%=(String) pvcount.get(7)%>],
                    ['<%=(String) pvmonth.get(8)%>', <%=(String) pvcount.get(8)%>],
                    ['<%=(String) pvmonth.get(9)%>', <%=(String) pvcount.get(9)%>],
                    ['<%=(String) pvmonth.get(10)%>', <%=(String) pvcount.get(10)%>],
                    ['<%=(String) pvmonth.get(11)%>', <%=(String) pvcount.get(11)%>],
                    ['<%=(String) pvmonth.get(12)%>', <%=(String) pvcount.get(12)%>]
                ]);

                var options = {
                };

                var chart = new google.charts.Bar(document.getElementById('columnchart_sitevisit'));
                var y = new Date().getFullYear();
                var m = new Date().getMonth() + 1;
                document.getElementById("columnchart_sitevisit_date").innerHTML = 'Site visits for 12 months upto ' + m + "-" + y;

                chart.draw(data);
            }
            google.load("visualization", "1", {packages: ["bar"]});
            google.setOnLoadCallback(drawChart2);
            function drawChart2() {
                var data = google.visualization.arrayToDataTable([
                    ['Month', 'Users'],
                    ['<%=(String) umonth.get(0)%>', <%=(String) ucount.get(0)%>],
                    ['<%=(String) umonth.get(1)%>', <%=(String) ucount.get(1)%>],
                    ['<%=(String) umonth.get(2)%>', <%=(String) ucount.get(2)%>],
                    ['<%=(String) umonth.get(3)%>', <%=(String) ucount.get(3)%>],
                    ['<%=(String) umonth.get(4)%>', <%=(String) ucount.get(4)%>],
                    ['<%=(String) umonth.get(5)%>', <%=(String) ucount.get(5)%>],
                    ['<%=(String) umonth.get(6)%>', <%=(String) ucount.get(6)%>],
                    ['<%=(String) umonth.get(7)%>', <%=(String) ucount.get(7)%>],
                    ['<%=(String) umonth.get(8)%>', <%=(String) ucount.get(8)%>],
                    ['<%=(String) umonth.get(9)%>', <%=(String) ucount.get(9)%>],
                    ['<%=(String) umonth.get(10)%>', <%=(String) ucount.get(10)%>],
                    ['<%=(String) umonth.get(11)%>', <%=(String) ucount.get(11)%>],
                    ['<%=(String) umonth.get(12)%>', <%=(String) ucount.get(12)%>]
                ]);

                var options = {
                };

                var chart = new google.charts.Bar(document.getElementById('columnchart_users'));
                var y = new Date().getFullYear();
                var m = new Date().getMonth() + 1;
                document.getElementById("columnchart_users_date").innerHTML = 'Active users for 12 months upto ' + m + "-" + y;


                chart.draw(data);
            }
            google.load("visualization", "1", {packages: ["bar"]});
            google.setOnLoadCallback(drawChart3);
            function drawChart3() {
                var data = google.visualization.arrayToDataTable([
                    ['Month', 'Ads'],
                    ['<%=(String) amonth.get(0)%>', <%=(String) acount.get(0)%>],
                    ['<%=(String) amonth.get(1)%>', <%=(String) acount.get(1)%>],
                    ['<%=(String) amonth.get(2)%>', <%=(String) acount.get(2)%>],
                    ['<%=(String) amonth.get(3)%>', <%=(String) acount.get(3)%>],
                    ['<%=(String) amonth.get(4)%>', <%=(String) acount.get(4)%>],
                    ['<%=(String) amonth.get(5)%>', <%=(String) acount.get(5)%>],
                    ['<%=(String) amonth.get(6)%>', <%=(String) acount.get(6)%>],
                    ['<%=(String) amonth.get(7)%>', <%=(String) acount.get(7)%>],
                    ['<%=(String) amonth.get(8)%>', <%=(String) acount.get(8)%>],
                    ['<%=(String) amonth.get(9)%>', <%=(String) acount.get(9)%>],
                    ['<%=(String) amonth.get(10)%>', <%=(String) acount.get(10)%>],
                    ['<%=(String) amonth.get(11)%>', <%=(String) acount.get(11)%>],
                    ['<%=(String) amonth.get(12)%>', <%=(String) acount.get(12)%>]
                ]);

                var options = {
                };

                var chart = new google.charts.Bar(document.getElementById('columnchart_ads'));

                var y = new Date().getFullYear();
                var m = new Date().getMonth() + 1;
                document.getElementById("columnchart_ads_date").innerHTML = 'Active ads for 12 months upto ' + m + "-" + y;

                chart.draw(data);
            }
        </script>
        <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
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
