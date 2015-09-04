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
        <style>

            .conversation-wrap
            {
                box-shadow: -2px 0 3px #ddd;
                padding:0;
                overflow: auto;
            }
            .conversation
            {
                padding:5px;
                border-bottom:1px solid #ddd;
                margin:0;

            }

            .message-wrap
            {
                box-shadow: 0 0 3px #ddd;
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
                max-height: 400px;
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




            /* Let's get this party started */
            ::-webkit-scrollbar {
                width: 6px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.3); 
                /*        -webkit-border-radius: 10px;
                        border-radius: 10px;*/
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                /*        -webkit-border-radius: 10px;
                        border-radius: 10px;*/
                background:#ddd; 
                -webkit-box-shadow: inset 0 0 6px rgba(0,0,0,0.5); 
            }
            ::-webkit-scrollbar-thumb:window-inactive {
                background: #ddd; 
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
            <jsp:include page="page-elements/javascript_required.jsp"/>
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

                        <li class="active open">
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
                            <input type="text"  value="testuser2" id="currentUser" class="visible-xs form-control" placeholder="select user" >
                            <div class="col-sm-3 hidden-xs">
                                <div class="btn-panel btn-panel-conversation">

                                    <input type="text"  id="filter" placeholder="filter messages" style="margin-bottom: 5px">
                                </div>
                            </div>

                            <div id="ConversationAction" class="col-sm-offset-1 col-sm-7">
                            </div>
                        </div>
                        <div class="row">

                            <div class="conversation-wrap col-sm-3 hidden-xs">
                                <ul class="messages-list" style="max-height: 510px" id="MsgListXML">

                                </ul>
                            </div>



                            <div class="message-wrap col-sm-9">
                                <div class="msg-wrap" id="ConversationXML">
                                </div>
                                <div id="msgResponce">
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
        <script>
            function msgLoad() {
                var id = '<%=request.getParameter("id")%>';
                if (id !== "null") {
                    document.getElementById("currentUser").value = id;
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
                            var content = $(this).find('content').text();
                            var lngth = "";
                            if (content.length > 30) {
                                lngth = ".....";
                            }
                            var time = $(this).find('time').text();
                            var status = $(this).find('status').text();
                            var item;
                            if (document.getElementById("currentUser").value === sender) {
                                item = $('<clickedListItem id="' + sender + '"><li style="background-color: #02A1FF" class="messages-item">'
                                        + '<span class="messages-item-from messages-item-current" style="colour:white">' + sender + '</span>'
                                        + '<div class="messages-item-time ">'
                                        + '<span class="text-current">' + time + '</span>'
                                        + '</div>'
                                        + '<span class="messages-item-subject messages-item-current">' + content.substring(0, 30) + lngth + '...</span>'
                                        + '</li></clickedListItem>');
                            } else {
                                item = $('<clickedListItem id="' + sender + '"><li' + status + ' class="messages-item">'
                                        + '<span class="messages-item-from">' + sender + '</span>'
                                        + '<div class="messages-item-time">'
                                        + '<span class="text">' + time + '</span>'
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
                        $("#ConversationAction").html("");
                        $("#msgResponce").html("");
                        $(xml).find('value').each(function () {

                            var sender = $(this).find('sender').text();
                            var content = $(this).find('content').text();
                            var time = $(this).find('time').text();
                            var item;
                            var action;
                            var responce;
                            item = $('<div class="media msg">\n'
                                    + '<a class="pull-left" href="#">\n'
                                    + '<img class="media-object" data-src="holder.js/64x64" alt="64x64" style="width: 32px; height: 32px;" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAACqUlEQVR4Xu2Y60tiURTFl48STFJMwkQjUTDtixq+Av93P6iBJFTgg1JL8QWBGT4QfDX7gDIyNE3nEBO6D0Rh9+5z9rprr19dTa/XW2KHl4YFYAfwCHAG7HAGgkOQKcAUYAowBZgCO6wAY5AxyBhkDDIGdxgC/M8QY5AxyBhkDDIGGYM7rIAyBgeDAYrFIkajEYxGIwKBAA4PDzckpd+322243W54PJ5P5f6Omh9tqiTAfD5HNpuFVqvFyckJms0m9vf3EY/H1/u9vb0hn89jsVj8kwDfUfNviisJ8PLygru7O4TDYVgsFtDh9Xo9NBrNes9cLgeTybThgKenJ1SrVXGf1WoVDup2u4jFYhiPx1I1P7XVBxcoCVCr1UBfTqcTrVYLe3t7OD8/x/HxsdiOPqNGo9Eo0un02gHkBhJmuVzC7/fj5uYGXq8XZ2dnop5Mzf8iwMPDAxqNBmw2GxwOBx4fHzGdTpFMJkVzNB7UGAmSSqU2RoDmnETQ6XQiOyKRiHCOSk0ZEZQcUKlU8Pz8LA5vNptRr9eFCJQBFHq//szG5eWlGA1ywOnpqQhBapoWPfl+vw+fzweXyyU+U635VRGUBOh0OigUCggGg8IFK/teXV3h/v4ew+Hwj/OQU4gUq/w4ODgQrkkkEmKEVGp+tXm6XkkAOngmk4HBYBAjQA6gEKRmyOL05GnR99vbW9jtdjEGdP319bUIR8oA+pnG5OLiQoghU5OElFlKAtCGr6+vKJfLmEwm64aosd/XbDbbyIBSqSSeNKU+HXzlnFAohKOjI6maMs0rO0B20590n7IDflIzMmdhAfiNEL8R4jdC/EZIJj235R6mAFOAKcAUYApsS6LL9MEUYAowBZgCTAGZ9NyWe5gCTAGmAFOAKbAtiS7TB1Ng1ynwDkxRe58vH3FfAAAAAElFTkSuQmCC">\n'
                                    + '</a>\n'
                                    + '<div class="media-body">\n'
                                    + '<small class="pull-right time"><i class="fa fa-clock-o"></i>&nbsp;' + time + '</small>\n'
                                    + '<h5 class="media-heading">' + sender + '</h5>\n'
                                    + '<small class="col-sm-10">' + content + '</small>\n'
                                    + '</div>\n'
                                    + '</div>');
                            $("#ConversationXML").append(item);
                            action = $('<div class="btn-panel btn-panel-msg message-actions">'
                                    + '<a title="Move ' + sender + ' to trash" href="#" class="btn  col-sm-2  send-message-btn" ><i class="fa fa-trash-o"></i></a>'
                                    + '<a title="Blacklist ' + sender + '" href="#" class="btn  col-sm-2  send-message-btn" role="button"><i class="fa fa-ban"></i></a>'
                                    + ' </div>');
                            $("#ConversationAction").html(action);
                            responce = $('<div class="send-wrap ">'
                                    + '<textarea class="form-control send-message" rows="2" placeholder="Write a reply..."></textarea>'
                                    + '</div>'
                                    + '<div class="btn-panel">'
                                    + '<a href="" class=" col-sm-4 text-right btn   send-message-btn pull-right" role="button"><i class="fa fa-plus"></i> Send Message</a>'
                                    + '</div>');
                            $("#msgResponce").html(responce);

                        });
                    }
                });
            }
            ;
            $(document).on('click', 'clickedListItem', function () {
                document.getElementById("currentUser").value = this.id;
                msgList();
            });
            $("#filter").keyup(function () {
                if (document.getElementById("filter").value === "") {
                    msgList();
                } else {
                    document.getElementById("currentUser").value = "";
                }
            });
            $("#currentUser").keyup(function () {
              document.getElementById("filter").value ="";
                    
            });</script>
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
                TableData.init();
                Main.init();
                Index.init();
                UIModals.init();
                FormValidator.init();
            });
        </script>
    </body>
    <!-- end: BODY -->
</html>
