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
		<link rel="stylesheet" href="../plugins/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="../fonts/style.css">
		<link rel="stylesheet" href="../css/main.css">
		<link rel="stylesheet" href="../css/main-responsive.css">
		<link rel="stylesheet" href="../plugins/iCheck/skins/all.css">
		<link rel="stylesheet" href="../plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
		<link rel="stylesheet" href="../plugins/perfect-scrollbar/src/perfect-scrollbar.css">
		<link rel="stylesheet" href="../css/theme_light.css" type="text/css" id="skin_color">
		<link rel="stylesheet" href="../css/print.css" type="text/css" media="print"/>
		<!--[if IE 7]>
		<link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome-ie7.min.css">
		<![endif]-->
		<!-- end: MAIN CSS -->
		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="stylesheet" href="../plugins/fullcalendar/fullcalendar/fullcalendar.css">
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
		<link rel="shortcut icon" href="favicon.ico" />
	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body>
                <%
                int msg_count=1;
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
                                            <img  src="../images/logo.jpg" style="width: 100px;"/>
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
                                                        <%if(msg_count==0){%>
                                                        <a class="dropdown-toggle" data-close-others="true" data-hover="dropdown" data-toggle="dropdown" href="#">
								<i class="clip-bubble-3"></i>
								
							</a>
							<ul class="dropdown-menu posts">
								<li>
									<span class="dropdown-menu-title">Messages</span>
								</li>
								<li>
                                                        <%}else{%>
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
															<img alt="" src="./../images/avatar-2.jpg">
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
															<img alt="" src="./../images/avatar-1.jpg">
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
															<img alt="" src="./../images/avatar-3.jpg">
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
															<img alt="" src="./../images/avatar-1.jpg">
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
															<img alt="" src="./../images/avatar-5.jpg">
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
                                                            <img src="../images/profile_img.jpg" class="circle-img" alt="">
								<span class="username">Ishan Madurasinghe</span>
								<i class="clip-chevron-down"></i>
							</a>
							<ul class="dropdown-menu">
								
								<li>
									<a href="pages_calendar.html">
										<i class="clip-calendar"></i>
										&nbsp;My Calendar
									</a>
								<li>
									<a href="pages_messages.html">
										<i class="clip-bubble-4"></i>
										&nbsp;My Messages (3)
									</a>
								</li>
								<li class="divider"></li>
								<li>
									<a href="utility_lock_screen.html"><i class="clip-locked"></i>
										&nbsp;Lock Screen </a>
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
                                                <%if(msg_count==0){%>
                                                <li  class="active open">
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
								<li  class="active open">
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
                                                <%}else{%>
                                                <li  class="active open">
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
								<li  class="active open">
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
                                                                    Messages &nbsp;/&nbsp; Unread
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
								<h1>Unread <small>messages</small></h1>
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
										<li class="messages-search">
											<form action="#" class="form-inline">
												<div class="input-group">
													<input type="text" class="form-control" placeholder="Search messages...">
													<div class="input-group-btn">
														<button class="btn btn-primary" type="button">
															<i class="fa fa-search"></i>
														</button>
													</div>
												</div>
											</form>
										</li>
										<li class="messages-item">
											<span title="Mark as starred" class="messages-item-star"><i class="fa fa-star"></i></span>
											<img alt="" src="../images/avatar-1.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Peter Clark</span>
											<div class="messages-item-time">
												<span class="text">10:23 PM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Lorem ipsumdolor sit amet ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
										<li class="messages-item active starred">
											
											<img alt="" src="../images/avatar-2.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Nicole Bell</span>
											<div class="messages-item-time">
												<span class="text">08:46 PM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Duis autem vel eum iriure ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
										<li class="messages-item">
											
											
											<img alt="" src="../images/avatar-3.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Steven Thompson</span>
											<div class="messages-item-time">
												<span class="text">04:03 PM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Lorem ipsumdolor sit amet ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
										<li class="messages-item">
											
											<img alt="" src="../images/avatar-1.jpg" class="messages-item-avatar">
											<span class="messages-item-from">Peter Clark</span>
											<div class="messages-item-time">
												<span class="text">11:16 AM</span>
												<div class="messages-item-actions">
													<a data-toggle="dropdown" title="Reply" href="#"><i class="fa fa-mail-reply"></i></a>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Move to folder" href="#"><i class="fa fa-folder-open"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#">
																	<i class="fa fa-pencil"></i>
																	Mark as Read
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-ban"></i>
																	Spam
																</a>
															</li>
															<li>
																<a href="#">
																	<i class="fa fa-trash-o"></i>
																	Delete
																</a>
															</li>
														</ul>
													</div>
													<div class="dropdown">
														<a data-toggle="dropdown" title="Attach to tag" href="#"><i class="fa fa-tag"></i></a>
														<ul class="dropdown-menu pull-right">
															<li>
																<a href="#"><i class="tag-icon red"></i>Important</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon teal"></i>Work</a>
															</li>
															<li>
																<a href="#"><i class="tag-icon green"></i>Home</a>
															</li>
														</ul>
													</div>
												</div>
											</div>
											<span class="messages-item-subject">Duis autem vel eum iriure ...</span>
											<span class="messages-item-preview">Lorem ipsum dolor sit amet, consec tetur adipisicing elit, sed do antera ...</span>
										</li>
									</ul>
									<div class="messages-content">
										<div class="message-header">
											<div class="message-time">
												11 NOV 2014, 11:46 PM
											</div>
											<div class="message-from">
												Nicole Bell &lt;nicole@example.com&gt;
											</div>
											<div class="message-to">
												To: Peter Clark
											</div>
											<div class="message-subject">
												New frontend layout
											</div>
											<div class="message-actions">
												<a title="Move to trash" href="#"><i class="fa fa-trash-o"></i></a>
												<a title="Reply" href="#"><i class="fa fa-reply"></i></a>
												<a title="Reply to all" href="#"><i class="fa fa-reply-all"></i></a>
												<a title="Forward" href="#"><i class="fa fa-long-arrow-right"></i></a>
											</div>
										</div>
										<div class="message-content">
											<p>
												<strong>Lorem ipsum</strong> dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
											</p>
											<p>
												Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent claritatem insitam; est usus legentis in iis qui facit eorum claritatem.
												Investigationes demonstraverunt lectores legere me lius quod ii legunt saepius.
											</p>
											<p>
												Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum.
												Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam ut blandit ligula. In accumsan mauris at augue feugiat consequat. Aenean consequat sem sed velit sagittis dignissim. Phasellus quis convallis est. Praesent porttitor mauris nec lectus mollis, eget sodales libero venenatis. Cras eget vestibulum turpis. In hac habitasse platea dictumst. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam turpis velit, tempor vitae libero ac, fermentum laoreet dolor.
											</p>
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
		<!-- start: MAIN JAVASCRIPTS -->
		<!--[if lt IE 9]>
		<script src="../plugins/respond.min.js"></script>
		<script src="../plugins/excanvas.min.js"></script>
		<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
		<![endif]-->
		<!--[if gte IE 9]><!-->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
		<!--<![endif]-->
		<script src="../plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
		<script src="../plugins/bootstrap/js/bootstrap.min.js"></script>
		<script src="../plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
		<script src="../plugins/blockUI/jquery.blockUI.js"></script>
		<script src="../plugins/iCheck/jquery.icheck.min.js"></script>
		<script src="../plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
		<script src="../plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
		<script src="../plugins/less/less-1.5.0.min.js"></script>
		<script src="../plugins/jquery-cookie/jquery.cookie.js"></script>
		<script src="../plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
		<script src="../js/main.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="../plugins/flot/jquery.flot.js"></script>
		<script src="../plugins/flot/jquery.flot.pie.js"></script>
		<script src="../plugins/flot/jquery.flot.resize.min.js"></script>
		<script src="../plugins/jquery.sparkline/jquery.sparkline.js"></script>
		<script src="../plugins/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
		<script src="../plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
		<script src="../plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
		<script src="../js/index.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Index.init();
			});
		</script>
	</body>
	<!-- end: BODY -->
</html>
