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
        <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet" href="fonts/style.css">
        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/main-responsive.css">
        <link rel="stylesheet" href="plugins/iCheck/skins/all.css">
        <link rel="stylesheet" href="plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
        <link rel="stylesheet" href="plugins/perfect-scrollbar/src/perfect-scrollbar.css">
        <link rel="stylesheet" href="css/theme_light.css" type="text/css" id="skin_color">
        <link rel="stylesheet" href="css/print.css" type="text/css" media="print"/>
        <!--[if IE 7]>
        <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome-ie7.min.css">
        <![endif]-->
        <!-- end: MAIN CSS -->
        <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="stylesheet" href="plugins/fullcalendar/fullcalendar/fullcalendar.css">
        <link rel="stylesheet" href="plugins/summernote/build/summernote.css">
        <link href="plugins/bootstrap-modal/css/bootstrap-modal-bs3patch.css" rel="stylesheet" type="text/css"/>
        <link href="plugins/bootstrap-modal/css/bootstrap-modal.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="plugins/DataTables/media/css/DT_bootstrap.css" />
        <link rel="stylesheet" href="plugins/gritter/css/jquery.gritter.css">
        <style>

            .conversation-wrap
            {
                box-shadow: -2px 0 3px #ddd;
                padding:0;
                overflow-y: auto;

            }
            .conversation
            {
                padding:5px;
                border-bottom:1px solid #ddd;
                margin:0;

            }

            .message-wrap
            {
                padding:0;

            }
            .msg
            {
                padding:5px;
                /*border-bottom:1px solid #ddd;*/
                margin:0;
            }
            .msg-wrap
            {
                padding:10px;
                max-height: 350px;
                overflow: auto;


            }

            .time
            {
                color:#bfbfbf;
            }



            .send-message
            {
                resize: none;
            }

            .highlight
            {
                background-color: #f7f7f9;
                border: 1px solid #e1e1e8;
            }


            .btn-panel
            {
                background: #f7f7f9;
            }

            .btn-panel .btn
            {
                color:#b8b8b8;

                transition: 0.2s all ease-in-out;
            }

            .btn-panel .btn:hover
            {
                color:#666;
                background: #f8f8f8;
            }
            .btn-panel .btn:active
            {
                background: #f8f8f8;
                box-shadow: 0 0 1px #ddd;
            }

            .btn-panel-conversation .btn,.btn-panel-msg .btn
            {

                background: #f8f8f8;
            }
            .btn-panel-conversation .btn:first-child
            {
                border-right: 1px solid #ddd;
            }

            .msg-wrap .media-heading1
            {
                color:#CC0000;
                font-weight: 700;
            }


            .msg-date
            {
                background: none;
                text-align: center;
                color:#aaa;
                border:none;
                box-shadow: none;
                border-bottom: 1px solid #ddd;
            }

        </style>
        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <script type="text/javascript" src="js/data-refresh.js"></script>
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <!-- end: HEAD -->
    <!-- start: BODY -->
    <body>
        <div class="loader">
            <jsp:include page="page-elements/javascript_required.jsp" />
        </div>
        <%
            if (session.getAttribute("loggin_state") != "success") {
                response.sendRedirect("superb_admin.jsp");
            }
        %>
        <!-- start: HEADER -->
        <jsp:include page="page-elements/header.jsp"/>

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
                            <a href="Dashboard"><i class="clip-home-3"></i>
                                <span class="title"> Dashboard </span><span class="selected"></span>
                            </a>
                        </li>

                        <li>
                            <a href="#" target="_blank"><i class="clip-cursor"></i>
                                <span class="title"> Frontend </span><span class="selected"></span>
                            </a>
                        </li>
                        <li class="active open visible-xs">
                            <a href="#" target="_blank"><i class="clip-bubble"></i>
                                <span class="title"> Messages </span><span class="selected"></span>
                            </a>
                        </li>

                        <li class="active open hidden-xs">
                            <a href="javascript:void(0)"><i class="clip-bubble"></i>
                                <span class="title"> Messages </span><span id="MC1" class="badge"></span><i class="icon-arrow"></i>
                                <span class="selected"></span>
                            </a>
                            <ul class="sub-menu">
                                <li class="active open">
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


                            </ul>
                        </li>

                        <li>
                            <a href="BlacklistedUsers" ><i class="clip-user-block"></i>
                                <span class="title"> Blacklisted Users</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="ReviewAds" ><i class="clip-user-4"></i>
                                <span class="title"> Review Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="upgrade.jsp" ><i class="clip-thumbs-up"></i>
                                <span class="title"> Upgrade Top Ads</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="ViewReports" ><i class="clip-clip"></i>
                                <span class="title"> View Reports</span><span class="selected"></span>
                            </a>
                        </li>
                        <li>
                            <a href="UpdateInterfaces" ><i class="clip-pictures"></i>
                                <span class="title"> Update Interfaces</span><span class="selected"></span>
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
                                    <form class="sidebar-search" action="SearchResult" method="GET">
                                        <div class="form-group">
                                            <input type="text" placeholder="Start Searching..." name="sid">
                                            <button class="submit">
                                                <i class="clip-search-3"></i>
                                            </button>
                                        </div>
                                    </form>
                                </li>
                            </ol>

                            <!-- end: PAGE TITLE & BREADCRUMB -->
                        </div>
                    </div>
                    <!-- end: PAGE HEADER -->
                    <!-- start: PAGE CONTENT -->
                    <div class="container">
                        <div class="row">
                            <input type="text"  value="" id="currentUser" class="hidden form-control" placeholder="select user" >
                            <div class="col-sm-3 ">
                                <div class="btn-panel btn-panel-conversation">

                                    <input type="text" class="form-control"  id="filter" placeholder="filter messages" style="margin-bottom: 5px">
                                </div>
                            </div>

                            <div id="ConversationAction" class="col-sm-offset-1 col-sm-7 hidden-xs">
                            </div>
                        </div>
                        <div class="row">

                            <div class="conversation-wrap col-sm-3 ">
                                <ul class="messages-list" style="max-height: 510px" id="MsgListXML">

                                </ul>
                            </div>



                            <div class="message-wrap col-sm-9 hidden-xs">
                                <div class="msg-wrap" id="ConversationXML">
                                </div>
                                <div id="msgResponce">
                                    <div class="send-wrap ">
                                        <textarea id="msg_responce" class="form-control send-message"  rows="2" placeholder="Write a reply..."></textarea>'
                                    </div>
                                    <div class="btn-panel">
                                        <a class=" col-sm-4 text-right btn   send-message-btn pull-right" role="button" onclick="sendMessage()"><i class="fa fa-plus"></i> Send Message</a>
                                    </div>
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


        <!-- start: BOOTSTRAP EXTENDED MODALS -->
        <div id="conversation_modal" class="modal fade " tabindex="-1" data-width="500" style="display: none;">
            <div class="modal-body">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true" >&times;</button>
                <div id="ConversationActionModel"></div>
                <div class="message-wrap col-sm-9">
                    <div  class="msg-wrap" id="Conversation_modalXML" style="max-height: 250px;" ></div>
                    <div id="msgResponce_modal">
                        <div class="send-wrap  ">
                            <div class="col-xs-10" style="padding:0px;">
                                <textarea id="msg_responce_modal" class="form-control send-message"  rows="2"  placeholder="Write a reply..."></textarea>'
                            </div>
                            <div class="col-xs-2" style="padding:0px;">

                                <a   class="btn btn-primary form-control" style="height: 55px;" role="button" onclick="sendMessage()"><br><i class="fa fa-share"></i></a>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>

        <jsp:include page="page-elements/login_update_modals.jsp"/>
        <!-- start: MAIN JAVASCRIPTS -->
        <!--[if lt IE 9]>
        <script src="plugins/respond.min.js"></script>
        <script src="plugins/excanvas.min.js"></script>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <![endif]-->
        <!--[if gte IE 9]><!-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
        <!--<![endif]-->
        <script src="plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
        <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
        <script src="plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
        <script src="plugins/blockUI/jquery.blockUI.js"></script>
        <script src="plugins/iCheck/jquery.icheck.min.js"></script>
        <script src="plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
        <script src="plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
        <script src="plugins/less/less-1.5.0.min.js"></script>
        <script src="plugins/jquery-cookie/jquery.cookie.js"></script>
        <script src="plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
        <script src="js/main.js"></script>
        <!-- end: MAIN JAVASCRIPTS -->
        <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
        <script src="plugins/jquery-ui-touch-punch/jquery.ui.touch-punch.min.js"></script>
        <script src="plugins/fullcalendar/fullcalendar/fullcalendar.js"></script>
        <script src="js/index.js"></script>
        <script src="plugins/jquery-validation/dist/jquery.validate.min.js"></script>
        <script src="plugins/summernote/build/summernote.min.js"></script>
        <script src="plugins/ckeditor/ckeditor.js"></script>
        <script src="plugins/ckeditor/adapters/jquery.js"></script>
        <script src="js/form-validation.js"></script>
        <script src="plugins/bootstrap-modal/js/bootstrap-modal.js"></script>
        <script src="plugins/bootstrap-modal/js/bootstrap-modalmanager.js"></script>
        <script src="js/ui-modals.js"></script>
        <script type="text/javascript" src="plugins/DataTables/media/js/jquery.messageTables.min.js"></script>
        <script type="text/javascript" src="plugins/DataTables/media/js/MT_bootstrap.js"></script>
        <script src="js/table-message.js"></script>
        <script src="plugins/gritter/js/jquery.gritter.min.js"></script>
        <script>
                                    function msgLoad() {
                                        var id = '<%=request.getParameter("id")%>';
                                        if (id !== "null") {
                                            document.getElementById("currentUser").value = id;
                                            if (window.innerWidth < 768) {
                                                $('#conversation_modal').modal('show');
                                            }
                                        } else {
                                            document.getElementById("currentUser").value = '<%=request.getParameter("inital_user")%>';
                                        }

                                        var blist = '<%=request.getParameter("blist")%>';
                                        var user = '<%=request.getParameter("user")%>';
                                        if (blist === "1" && user !== "null") {
                                            runNotification("<button class=\"btn btn-green\">" //returning notification of the the success
                                                    + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                                                    + "</i></button><br><strong>Blacklisted !</strong> user " + user + " successfully.");
                                        }
                                        else if (blist === "0" && user !== "null") {
                                            runNotification("<button class=\"btn btn-red\">" //returning notification of the the failure
                                                    + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                                                    + "</i></button><br><strong>Failed!</strong> blacklist user " + user + ".");
                                        }
                                    }
                                    function msgList() {

                                        $.ajax({
                                            type: "GET",
                                            url: "MsgXML",
                                            dataType: "xml",
                                            data: {
                                                filter: document.getElementById("filter").value
                                            },
                                            success: function (xml) {
                                                $("#MsgListXML").html("");
                                                $(xml).find('value').each(function () {

                                                    var sender = $(this).find('sender').text();
                                                    if (sender.length > 12) {
                                                        var fontsize = "x-small";
                                                    } else {
                                                        var fontsize = "small";
                                                    }
                                                    var content = $(this).find('content').text();
                                                    var lngth = "";
                                                    if (content.length > 30) {
                                                        lngth = ".....";
                                                    }
                                                    var time = $(this).find('time').text();
                                                    var status = $(this).find('status').text();
                                                    var item;
                                                    if (document.getElementById("currentUser").value === sender && window.innerWidth >= 768) {
                                                        item = $('<clickedListItem id="' + sender + '"><li style="background-color: #02A1FF" class="messages-item">'
                                                                + '<span class="messages-item-from messages-item-current" style="colour:white; font-size:' + fontsize + ';">' + sender + '</span>'
                                                                + '<div class="messages-item-time ">'
                                                                + '<span class="text-current"><small>' + time + '</small></span>'
                                                                + '</div>'
                                                                + '<span class="messages-item-subject messages-item-current">' + content.substring(0, 30) + lngth + '...</span>'
                                                                + '</li></clickedListItem>');
                                                    } else {
                                                        item = $('<clickedListItem id="' + sender + '"><li' + status + ' class="messages-item">'
                                                                + '<span class="messages-item-from" style="font-size:' + fontsize + ';">' + sender + '</span>'
                                                                + '<div class="messages-item-time">'
                                                                + '<span class="text"><small>' + time + '</small></span>'
                                                                + '</div>'
                                                                + '<span class="messages-item-subject">' + content.substring(0, 30) + lngth + '...</span>'
                                                                + '</li></clickedListItem>');
                                                    }
                                                    $("#MsgListXML").append(item);
                                                });
                                            }
                                        });
                                        $.ajax({
                                            type: "GET",
                                            url: "ConversationXML",
                                            dataType: "xml",
                                            data: {
                                                selected_ListItem: document.getElementById("currentUser").value
                                            },
                                            success: function (xml) {
                                                $("#ConversationXML").html("");
                                                $("#Conversation_modalXML").html("");
                                                $("#ConversationAction").html("");
                                                $("#ConversationActionModel").html("");

                                                $(xml).find('value').each(function () {

                                                    var id = $(this).find('id').text();
                                                    var sender = $(this).find('sender').text();
                                                    var title = sender;
                                                    if (window.innerWidth < 768 && sender.length > 9) {
                                                        sender = sender.substring(0, 7) + '..';
                                                    }
                                                    var type;
                                                    var image;
                                                    if (sender === "You") {
                                                        type = "sent";
                                                        image = "admin";
                                                    } else {
                                                        type = "recieved";
                                                        image = "user";
                                                    }



                                                    var content = $(this).find('content').text();
                                                    var time = $(this).find('time').text();
                                                    var item;
                                                    var action;
                                                    var responce;
                                                    item = $('<div class="media msg">\n'
                                                            + '<a class="pull-left" href="#">\n'
                                                            + '<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 32px; height: 32px;" src="images/' + image + '-profile-picture-icon.jpg">\n'
                                                            + '</a>\n'
                                                            + '<div class="media-body">\n'
                                                            + '<small class="pull-right time"><i class="fa fa-clock-o"></i>&nbsp;' + time + '</small>\n'
                                                            + '<h5 class="media-heading">' + sender + '</h5>\n'
                                                            + '<small class="col-sm-10">' + content + ' <a title="Delete message" href="#confirm_delete-id-' + id + '" data-toggle="modal" ><i class="fa fa-trash-o"></i></a></small>\n'
                                                            + '</div>\n'
                                                            + '</div>'
                                                            + '<div id="confirm_delete-id-' + id + '"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">'
                                                            + '<div class="modal-header">'
                                                            + '<h4 class="modal-title badge badge-green">Confirmation</h4>'
                                                            + '</div>'
                                                            + '<div class="modal-body">'
                                                            + 'Delete message " ' + content + ' " ?'
                                                            + '</div>'
                                                            + '<div class="modal-footer">'
                                                            + '<button type="button" data-dismiss="modal" class="btn btn-light-grey">'
                                                            + 'Cancel'
                                                            + '</button>'
                                                            + '<button type="button" data-dismiss="modal" class="btn btn-blue" onclick="deleteMessage(' + id + ',\'' + type + '\')">'
                                                            + 'Delete'
                                                            + '</button>'
                                                            + '</div>'
                                                            + '</div>'
                                                            );

                                                    if (window.innerWidth < 768) {
                                                        $("#Conversation_modalXML").append(item);

                                                        action = $('<div>'
                                                                + '<span class="badge badge-info" style="font-size:xx-small">' + document.getElementById("currentUser").value + '</span>'
                                                                + '<a title="Move ' + document.getElementById("currentUser").value + ' to trash" href="#confirm_delete-con-id-' + document.getElementById("currentUser").value + '" data-toggle="modal" class="btn  col-sm-2  send-message-btn" ><i class="fa fa-trash-o"></i></a>'
                                                                + '<div id="confirm_delete-con-id-' + document.getElementById("currentUser").value + '"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">'
                                                                + '<div class="modal-header">'
                                                                + '<h4 class="modal-title badge badge-green">Confirmation</h4>'
                                                                + '</div>'
                                                                + '<div class="modal-body">'
                                                                + 'Delete conversation with ' + document.getElementById("currentUser").value + ' ?'
                                                                + '</div>'
                                                                + '<div class="modal-footer">'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-light-grey">'
                                                                + 'Cancel'
                                                                + '</button>'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-blue" onclick="deleteConversation(\'' + document.getElementById("currentUser").value + '\')">'
                                                                + 'Delete'
                                                                + '</button>'
                                                                + '</div>'
                                                                + '</div>'
                                                                + '<a title="Blacklist ' + document.getElementById("currentUser").value + '" href="#confirm_blacklist-user' + document.getElementById("currentUser").value + '" data-toggle="modal" class="btn  col-sm-2  send-message-btn" role="button"><i class="fa fa-ban"></i></a>'
                                                                + '<div id="confirm_blacklist-user' + document.getElementById("currentUser").value + '"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">'
                                                                + '<div class="modal-header">'
                                                                + '<h4 class="modal-title badge badge-green">Confirmation</h4>'
                                                                + '</div>'
                                                                + '<div class="modal-body">'
                                                                + 'Blacklist user ' + document.getElementById("currentUser").value + ' ?'
                                                                + '</div>'
                                                                + '<div class="modal-footer">'
                                                                + '<form id="blacklist_' + document.getElementById("currentUser").value + '" action="MsgBlacklistUser" method="POST">'
                                                                + '<input type="hidden" name="user" value="' + document.getElementById("currentUser").value + '">'
                                                                + '</form>'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-light-grey">'
                                                                + 'Cancel'
                                                                + '</button>'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-blue" onclick="document.getElementById(\'blacklist_' + document.getElementById("currentUser").value + '\').submit();">'
                                                                + 'Blacklist'
                                                                + '</button>'
                                                                + '</div>'
                                                                + '</div>'
                                                                + ' </div>'
                                                                );

                                                        $("#ConversationActionModel").html(action);

                                                    } else {
                                                        $("#ConversationXML").append(item);
                                                        if ($('#conversation_modal').hasClass('in') === true) {
                                                            $('#conversation_modal').modal('hide');
                                                        }

                                                        action = $('<div class="btn-panel btn-panel-msg message-actions">'
                                                                + '<a title="Move ' + document.getElementById("currentUser").value + ' to trash" href="#confirm_delete-con-id-' + document.getElementById("currentUser").value + '" data-toggle="modal" class="btn  col-sm-2  send-message-btn" ><i class="fa fa-trash-o"></i></a>'
                                                                + '<div id="confirm_delete-con-id-' + document.getElementById("currentUser").value + '"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">'
                                                                + '<div class="modal-header">'
                                                                + '<h4 class="modal-title badge badge-green">Confirmation</h4>'
                                                                + '</div>'
                                                                + '<div class="modal-body">'
                                                                + 'Delete conversation with ' + document.getElementById("currentUser").value + ' ?'
                                                                + '</div>'
                                                                + '<div class="modal-footer">'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-light-grey">'
                                                                + 'Cancel'
                                                                + '</button>'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-blue" onclick="deleteConversation(\'' + document.getElementById("currentUser").value + '\')">'
                                                                + 'Delete'
                                                                + '</button>'
                                                                + '</div>'
                                                                + '</div>'
                                                                + '<a title="Blacklist ' + document.getElementById("currentUser").value + '" href="#confirm_blacklist-user' + document.getElementById("currentUser").value + '" data-toggle="modal" class="btn  col-sm-2  send-message-btn" role="button"><i class="fa fa-ban"></i></a>'
                                                                + '<div id="confirm_blacklist-user' + document.getElementById("currentUser").value + '"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">'
                                                                + '<div class="modal-header">'
                                                                + '<h4 class="modal-title badge badge-green">Confirmation</h4>'
                                                                + '</div>'
                                                                + '<div class="modal-body">'
                                                                + 'Blacklist user ' + document.getElementById("currentUser").value + ' ?'
                                                                + '</div>'
                                                                + '<div class="modal-footer">'
                                                                + '<form id="blacklist_' + document.getElementById("currentUser").value + '" action="MsgBlacklistUser" method="POST">'
                                                                + '<input type="hidden" name="user" value="' + document.getElementById("currentUser").value + '">'
                                                                + '</form>'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-light-grey">'
                                                                + 'Cancel'
                                                                + '</button>'
                                                                + '<button type="button" data-dismiss="modal" class="btn btn-blue" onclick="document.getElementById(\'blacklist_' + document.getElementById("currentUser").value + '\').submit();">'
                                                                + 'Blacklist'
                                                                + '</button>'
                                                                + '</div>'
                                                                + '</div>'
                                                                + ' </div>'
                                                                );

                                                        $("#ConversationAction").html(action);

                                                    }


                                                });
                                            }
                                        });

                                        if (document.getElementById("currentUser").value === "") {
                                            document.getElementById("msgResponce").style.display = "none";
                                        } else {
                                            document.getElementById("msgResponce").style.display = "block";
                                        }

                                        if (document.getElementById("ConversationXML").innerHTML === "") {
                                            document.getElementById("msgResponce").style.display = "none";
                                        }
                                    }
                                    ;



                                    function deleteMessage(id, type) {
                                        $.ajax({
                                            type: "GET",
                                            url: "DeleteMessageXML",
                                            dataType: "xml",
                                            data: {
                                                id: id,
                                                type: type

                                            },
                                            success: function (xml) {
                                                $(xml).find('value').each(function () {

                                                    var result = $(this).find('result').text();
                                                    if (result === "1") {
                                                        runNotification("<button class=\"btn btn-green\">" //returning notification of the the success
                                                                + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                                                                + "</i></button><br><strong>Deleted !</strong> message successfully.");
                                                    }
                                                    else {
                                                        runNotification("<button class=\"btn btn-red\">" //returning notification of the the failure
                                                                + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                                                                + "</i></button><br><strong>Failed!</strong> message delete.");
                                                    }

                                                });
                                            }
                                        });

                                    }
                                    ;

                                    function deleteConversation(user) {
                                        $.ajax({
                                            type: "GET",
                                            url: "DeleteConversationXML",
                                            dataType: "xml",
                                            data: {
                                                user: user

                                            },
                                            success: function (xml) {
                                                $(xml).find('value').each(function () {

                                                    var result = $(this).find('result').text();
                                                    if (result === "1") {
                                                        if ($('#conversation_modal').hasClass('in') === true) {
                                                            $('#conversation_modal').modal('hide');
                                                        }
                                                        runNotification("<button class=\"btn btn-green\">" //returning notification of the the success
                                                                + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                                                                + "</i></button><br><strong>Deleted !</strong> conversation successfully.");
                                                    }
                                                    else {
                                                        runNotification("<button class=\"btn btn-red\">" //returning notification of the the failure
                                                                + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                                                                + "</i></button><br><strong>Failed!</strong> conversation delete.");
                                                    }

                                                });
                                            }
                                        });

                                    }
                                    ;

                                    

                                    $(document).on('click', 'clickedListItem', function () {
                                        document.getElementById("currentUser").value = this.id;

                                        $.ajax({
                                            type: "GET",
                                            url: "MarkAsReadXML",
                                            dataType: "xml",
                                            data: {
                                                reciever: this.id

                                            },
                                            success: function (xml) {
                                                $(xml).find('value').each(function () {

                                                    var result = $(this).find('result').text();

                                                });
                                            }
                                        });

                                        document.getElementById("msg_responce").value = "";
                                        document.getElementById("msg_responce_modal").value = "";

                                        msgList();

                                        if (window.innerWidth < 768) {
                                            $('#conversation_modal').modal('show');

                                        }

                                    });

                                    $("#filter").keyup(function () {
                                        if (document.getElementById("filter").value === "") {
                                            msgList();

                                        } else {
                                            document.getElementById("currentUser").value = "";
                                            msgList();

                                        }
                                    });

                                    //function to initiate jquery.gritter
                                    function runNotification(alert) {
                                        var i = alert;
                                        if (i !== "null") {

                                            var unique_id = $.gritter.add({
                                                // (string | mandatory) the heading of the notification
                                                title: 'Notification!',
                                                // (string | mandatory) the text inside the notification
                                                text: alert,
                                                // (bool | optional) if you want it to fade out on its own or just sit there
                                                sticky: false,
                                                // (int | optional) the time you want it to be alive for before fading out
                                                time: 3000,
                                                // (string | optional) the class name you want to apply to that specific message
                                                class_name: 'my-sticky-class'
                                            });
                                            // You can have it return a unique id, this can be used to manually remove it later using
                                            /*
                                             setTimeout(function(){
                                             $.gritter.remove(unique_id, {
                                             fade: true,
                                             speed: 'slow'
                                             });
                                             }, 6000)
                                             */
                                            return false;

                                        }

                                    }

                                    function sendMessage() {
                                        if (document.getElementById("msg_responce").value === "" && window.innerWidth >= 768) {
                                            runNotification("<button class=\"btn btn-red\">" //returning notification of empty reply
                                                    + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                                                    + "</i></button><br><strong>Failed!</strong> Please enter the responce.");

                                        } else if (document.getElementById("msg_responce_modal").value === "" && window.innerWidth < 768) {
                                            runNotification("<button class=\"btn btn-red\">" //returning notification of empty reply
                                                    + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                                                    + "</i></button><br><strong>Failed!</strong> Please enter the responce.");


                                        } else {
                                            if (window.innerWidth < 768) {
                                                var content = document.getElementById("msg_responce_modal").value;
                                            } else {
                                                var content = document.getElementById("msg_responce").value;
                                            }
                                            $.ajax({
                                                type: "GET",
                                                url: "SendMessageXML",
                                                dataType: "xml",
                                                data: {
                                                    content: content,
                                                    reciever: document.getElementById("currentUser").value
                                                },
                                                success: function (xml) {
                                                    $(xml).find('value').each(function () {

                                                        var result = $(this).find('result').text();
                                                        if (result === "1") {
                                                            runNotification("<button class=\"btn btn-green\">" //returning notification of the the success
                                                                    + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                                                                    + "</i></button><br><strong>Sent !</strong> message successfully.");
                                                            document.getElementById("msg_responce_modal").value = "";
                                                            document.getElementById("msg_responce").value = "";
                                                        }
                                                        else {
                                                            runNotification("<button class=\"btn btn-red\">" //returning notification of the the failure
                                                                    + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                                                                    + "</i></button><br><strong>Failed!</strong> message.");
                                                        }

                                                    });
                                                }
                                            });
                                        }

                                    }
                                    ;
                                    /*function scrollBottom() {
                                     if (document.getElementById("ConversationXML").scrollTop === 0) {
                                     var objDiv = document.getElementById("ConversationXML");
                                     objDiv.scrollTop = objDiv.scrollHeight;
                                     }
                                     
                                     }*/

        </script>
        <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
        <script>
            jQuery(document).ready(function () {
                $(".loader").fadeOut("slow");
                refresh_data();
                msgLoad();
                msgList();

                window.setInterval(function () {
                    refresh_data();
                    msgList();

                }, 3000);
                Main.init();
                Index.init();
                UIModals.init();

            });
        </script>
    </body>
    <!-- end: BODY -->
</html>
