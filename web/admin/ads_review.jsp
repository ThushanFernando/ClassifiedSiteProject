<%-- 
    Document   : index
    Created on : Jun 22, 2015, 6:48:51 PM
    Author     : SithuDewmi
--%>

<%@page import="classes.AdminClass_ReviewAds"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
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
        <link rel="stylesheet" type="text/css" href="admin/plugins/select2/select2.css" />
        <link rel="stylesheet" href="admin/plugins/DataTables/media/css/DT_bootstrap.css" />
        <link rel="stylesheet" href="admin/plugins/summernote/build/summernote.css">

        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <!-- end: HEAD -->
    <!-- start: BODY -->
    <body>
        <%
            int msg_count = 1;
            String num = null;
            ArrayList reviewAds = (ArrayList) request.getAttribute("reviewAds");
            Iterator itr = reviewAds.iterator();
            AdminClass_ReviewAds received = null;
        %>
        <!-- start: HEADER -->
        <div class="navbar navbar-inverse navbar-fixed-top">
            <!-- start: TOP NAVIGATION CONTAINER -->
            <div class="container">
                <div class="navbar-header">
                    <!-- start: RESPONSIVE MENU TOGGLER -->
                    <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
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
                                <span class="badge"> 11</span>
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
                            <%if (msg_count == 0) {%>
                            <a class="dropdown-toggle" data-close-others="true" data-hover="dropdown" data-toggle="dropdown" href="#">
                                <i class="clip-bubble-3"></i>

                            </a>
                            <ul class="dropdown-menu posts">
                                <li>
                                    <span class="dropdown-menu-title">Messages</span>
                                </li>
                                <li>
                                    <%} else {%>
                                    <a class="dropdown-toggle" data-close-others="true" data-hover="dropdown" data-toggle="dropdown" href="#">
                                        <i class="clip-bubble-3"></i>
                                        <span class="badge"><%=msg_count%></span>
                                    </a>
                                    <ul class="dropdown-menu posts">
                                        <li>
                                            <span class="dropdown-menu-title"> You have <%=msg_count%> new messages</span>
                                        </li>
                                        <li>
                                            <%}%>            
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
                                            <li>
                                                <a href="index.jsp"><i class="clip-home-3"></i>
                                                    <span class="title"> Dashboard </span><span class="selected"></span>
                                                </a>
                                            </li>

                                            <li>
                                                <a href="#" target="_blank"><i class="clip-cursor"></i>
                                                    <span class="title"> Frontend </span><span class="selected"></span>
                                                </a>
                                            </li>
                                            <%if (msg_count == 0) {%>
                                            <li>
                                                <a href="javascript:void(0)"><i class="clip-bubble"></i>
                                                    <span class="title"> Messages </span><i class="icon-arrow"></i>
                                                    <span class="selected"></span>
                                                </a>
                                                <ul class="sub-menu">
                                                    <li>
                                                        <a href="msg_all.jsp">
                                                            <span class="title"> All </span>

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

                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="msg_spam.jsp">
                                                            <span class="title"> Spam </span>
                                                        </a>
                                                    </li>

                                                </ul>
                                            </li>
                                            <%} else {%>
                                            <li>
                                                <a href="javascript:void(0)"><i class="clip-bubble"></i>
                                                    <span class="title"> Messages </span><span class="badge"><%=msg_count%></span><i class="icon-arrow"></i>
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
                                                            <span class="badge"><%=msg_count%></span>
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <a href="msg_spam.jsp">
                                                            <span class="title"> Spam </span>
                                                        </a>
                                                    </li>

                                                </ul>
                                            </li>
                                            <%}%>
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
                                            <li  class="active open">
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
                                                        Review Ads
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
                                                <div class="page-header hidden-xs" >
                                                    <h1>Ads <small>review</small></h1>

                                                </div>
                                                <%if (request.getAttribute("alert") != null) {%>
                                                <div>
                                                    <%=request.getAttribute("alert")%>    

                                                </div>
                                                <%}%>
                                                <!-- end: PAGE TITLE & BREADCRUMB -->
                                            </div>
                                        </div>
                                        <!-- end: PAGE HEADER -->
                                        <!-- start: PAGE CONTENT -->
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <i class="clip-user-4"></i>

                                                        
                                                    </div>
                                                    <div class="panel-body">
                                                        <table class="table table-striped table-hover" id="sample_1">
                                                            <thead>
                                                                <tr>
                                                                    <th class="center hidden-xs">Ad-ID</th>
                                                                    <th>Title</th>
                                                                    <th  class="center hidden-xs">Time</th>
                                                                    <th class="center">Status</th>
                                                                    <th></th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <%

                                                                    while (itr.hasNext()) {
                                                                        Object a = itr.next();
                                                                        received = (AdminClass_ReviewAds) a;
                                                                %>

                                                                <tr>
                                                                    <td class="center hidden-xs"><%=received.getItem_number()%></td>
                                                                    <td><input type="hidden" id="<%=received.getUsername()%>" name="<%=received.getItem_number()%>" value="<%=received.getTitle()%>"><%=received.getTitle()%></td>
                                                                    <td class="center hidden-xs"><%=received.getTime_stamp()%></td>
                                                                    <td class="center"><%=received.getStatus()%></td>
                                                                    <td class="center">
                                                                        <div>
                                                                            <div class="btn-group">
                                                                                <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
                                                                                    <i class="fa fa-cog"></i> <span class="caret"></span>
                                                                                </a>
                                                                                <ul role="menu" class="dropdown-menu pull-right">
                                                                                    <li role="presentation">
                                                                                        <a role="menuitem" tabindex="-1" href="#" target="blank">
                                                                                            <i class="fa clip-arrow-right-2"></i> View
                                                                                        </a>
                                                                                    </li>
                                                                                    <li role="presentation">
                                                                                        <a role="menuitem" tabindex="-1" href="#">
                                                                                            <form action="ReviewAds" method="POST" id="<%=received.getItem_number()%>_approve">
                                                                                                <input type="hidden" value="<%=received.getItem_number()%>"  name="item"> 
                                                                                                <input type="hidden" value="Approve"  name="action">
                                                                                                <i class="fa clip-checkbox-checked"></i><span onclick="document.getElementById('<%=received.getItem_number()%>_approve').submit();"> Approve</span>
                                                                                            </form>
                                                                                        </a>
                                                                                    </li>
                                                                                    <li role="presentation">
                                                                                        <a role="menuitem" tabindex="-1"  href="#message" data-toggle="modal">
                                                                                            <i class="fa clip-bulb"></i><clickedAction id="<%=received.getUsername()%>" name="hello">Modify</clickedAction>
                                                                                        </a>
                                                                                    </li>
                                                                                    <li role="presentation">
                                                                                        <a role="menuitem" tabindex="-1" href="#">
                                                                                            <form action="ReviewAds" method="POST" id="<%=received.getItem_number()%>_remove">
                                                                                                <input type="hidden" value="<%=received.getItem_number()%>"  name="item"> 
                                                                                                <input type="hidden" value="Remove"  name="action">
                                                                                                <i class="fa clip-remove"></i><span onclick="document.getElementById('<%=received.getItem_number()%>_remove').submit();"> Remove</span>
                                                                                            </form>
                                                                                        </a>
                                                                                    </li>


                                                                                </ul>
                                                                            </div>
                                                                        </div></td>
                                                                </tr>
                                                                <%}%>



                                                            </tbody>
                                                        </table>
                                                    </div>





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
                            <div id="message" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>



                                    <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" name="optionsRadios12">Message to the user</h4>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-14">
                                            <form action="ModifyAds" method="POST" role="form" class="smart-wizard form-horizontal" id="form">
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        From: <span class="symbol required"></span>
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <input type="text" readonly class="form-control" id="fromid" name="fromname" value="Superb.lk" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        To: <span class="symbol required"></span>
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <input type="text" readonly class="form-control" id="toid" name="to" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        Subject: <span class="symbol required"></span>
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <textarea class="form-control" id="subjectid" name="subject" rows="2" readonly style="resize: none"></textarea>

                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        How to modify: <span class="symbol required"></span>
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <textarea class="autosize form-control" name="content" id="form-field-24" rows="12" style="overflow-y: scroll; word-wrap: break-word;">
                                                        </textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-7">
                                                        <input type="hidden" id="itemid" name="itemname" value="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-4 col-sm-offset-6">
                                                        <button class="btn btn-blue next-step btn-block">
                                                            Send <i class="fa fa-arrow-circle-right"></i>
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>    
                                        </div>

                                    </div>
                                </div>

                            </div>
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
                            <script src="admin/plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
                            <script src="admin/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
                            <script src="admin/js/ui-modals.js"></script>
                            <script src="admin/plugins/jquery-inputlimiter/jquery.inputlimiter.1.3.1.min.js"></script>
                            <script src="admin/plugins/autosize/jquery.autosize.min.js"></script>
                            <script type="text/javascript" src="admin/plugins/DataTables/media/js/jquery.dataTables.min.js"></script>
                            <script type="text/javascript" src="admin/plugins/DataTables/media/js/DT_bootstrap.js"></script>
                            <script src="admin/js/table-ad.js"></script>
                            <script src="admin/plugins/jquery-validation/dist/jquery.validate.min.js"></script>
                            <script src="admin/plugins/summernote/build/summernote.min.js"></script>
                            <script src="admin/plugins/ckeditor/ckeditor.js"></script>
                            <script src="admin/plugins/ckeditor/adapters/jquery.js"></script>
                            <script src="admin/js/form-validation.js"></script>
                            <script src="admin/plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
                            <script src="admin/plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
                            <script src="admin/js/ui-modals.js"></script>
                            <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
                            <script type="text/javascript">

                            </script>
                            <script>
                                $(document).on('click', 'clickedAction', function () {

                                    document.getElementById("toid").value = this.id;
                                    document.getElementById("subjectid").value = 'Your ad "' + document.getElementById(this.id).value + '" needs to be edited';
                                    document.getElementById("form-field-24").innerHTML = 'Hello,\n\nYour ad "' + document.getElementById(this.id).value + ' ", posted on Superb.lk, does not follow our rules. You must make some changes to the ad before we can publish it.\n\nThe reason why we could not approve your ad:\n\n*****************Type the reason here*****************\n- Illegal item or service\nYour ad features an item or service that is illegal, which we cannot allow on our site. Please change the item or service that you are offering in your ad.\n\n**************************************************************\n\n\nTo edit your ad, please click the following link:\nhttp://Superb.lk/en/post_item/Samsung-galaxy-note-n7000 for-sale-colombo/edit\nYour password is: the password you selected\n\nIf you have any questions, feel free to reply to the email and we will get back to you.\n\nRegards,\nThe support team at Superb.lk\n\n--------------------------------------------\n\nDid you know that Superb.lk has the best second-hand mobile deals in Sri Lanka? Click here: http://Superb.lk/mobile-phones\n\nFollow us on Facebook:\nhttps://www.facebook.com/Superb.lk';
                                    document.getElementById("itemid").value = document.getElementById(this.id).name;
                                });
                            </script>
                            <script>
                                jQuery(document).ready(function () {
                                    Main.init();
                                    TableData.init();
                                    UIModals.init();
                                    FormValidator.init();
                                    Index.init();
                                });
                            </script>

                            </body>
                            <!-- end: BODY -->
                            </html>
