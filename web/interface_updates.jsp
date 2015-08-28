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
        <link rel="stylesheet" href="plugins/bootstrap-fileupload/bootstrap-fileupload.min.css">
        <link rel="stylesheet" href="plugins/gritter/css/jquery.gritter.css">
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
            String alert = (String) request.getAttribute("alert");
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
                        <li class="active open">
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
                                    Update interface
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
                            <div class="page-header">
                                <h1 class=" hidden-xs">Interface <small class=" hidden-xs">updates</small></h1>
                            </div>

                            <!-- end: PAGE TITLE & BREADCRUMB -->
                        </div>
                    </div>
                    <!-- end: PAGE HEADER -->
                    <!-- start: PAGE CONTENT -->
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="panel-group accordion-custom accordion-teal" id="accordion">
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a class="accordion-toggle collapsed" onclick="$('#alert-id').html('')" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                                <i class="icon-arrow"></i>
                                                Slider Item #1
                                            </a></h4>
                                    </div>
                                    <div id="collapseOne" class="panel-collapse collapse">
                                        <div class="row">
                                            <div class="col-sm-6" style="padding-top: 5px">
                                                <span class="badge badge-default">Current Slider Item #1</span>
                                                <img class="img-responsive" src="GetSliderItems?slider_id=1"  style="width: 400px;"/>

                                            </div>
                                            <div class="col-sm-6" style="padding-top: 5px">
                                                <form class="form-horizontal" method="post" action="UpdateInterfaces" enctype="multipart/form-data">
                                                    <div class="fileupload fileupload-new" data-provides="fileupload">
                                                        <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="images/no_image.png" alt=""/>
                                                        </div>
                                                        <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                        <div>
                                                            <span class="btn btn-light-grey btn-file"><span class="fileupload-new"><i class="fa fa-picture-o"></i> Select image</span><span class="fileupload-exists"><i class="fa fa-picture-o"></i> Change</span>

                                                                <input type="file" name="slider_item" >
                                                                <input type="hidden" name="slider_id" value="1">

                                                            </span>
                                                            &nbsp;
                                                            <a href="#" class="btn fileupload-exists btn-light-grey" data-dismiss="fileupload">
                                                                <i class="fa fa-times"></i> Remove
                                                            </a>
                                                        </div>
                                                        <button type="submit" class="fileupload-exists btn btn-blue btn-block" style="width:200px; margin-top: 5px">Upload</button>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a class="accordion-toggle collapsed" onclick="$('#alert-id').html('')" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                                                <i class="icon-arrow"></i>
                                                Slider Item #2
                                            </a></h4>
                                    </div>
                                    <div id="collapseTwo" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <span class="badge badge-default">Current Slider Item #2</span>
                                                    <img class="img-responsive" src="GetSliderItems?slider_id=2"  style="width: 400px;"/>
                                                </div>
                                                <div class="col-sm-6">
                                                    <form class="form-horizontal" method="post" action="UpdateInterfaces" enctype="multipart/form-data">
                                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="images/no_image.png" alt=""/>
                                                            </div>
                                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                            <div>
                                                                <span class="btn btn-light-grey btn-file"><span class="fileupload-new"><i class="fa fa-picture-o"></i> Select image</span><span class="fileupload-exists"><i class="fa fa-picture-o"></i> Change</span>
                                                                    <input type="file" name="slider_item" >
                                                                    <input type="hidden" name="slider_id" value="2">
                                                                </span>
                                                                &nbsp;
                                                                <a href="#" class="btn fileupload-exists btn-light-grey" data-dismiss="fileupload">
                                                                    <i class="fa fa-times"></i> Remove
                                                                </a>
                                                            </div>
                                                            <button class="fileupload-exists btn btn-blue btn-block" style="width:200px; margin-top: 5px">Upload</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a class="accordion-toggle collapsed" onclick="$('#alert-id').html('')"  data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                                                <i class="icon-arrow"></i>
                                                Slider Item #3
                                            </a></h4>
                                    </div>
                                    <div id="collapseThree" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <span class="badge badge-default">Current Slider Item #3</span>
                                                    <img class="img-responsive" src="GetSliderItems?slider_id=3"  style="width: 400px;"/>
                                                </div>
                                                <div class="col-sm-6">
                                                    <form class="form-horizontal" method="post" action="UpdateInterfaces" enctype="multipart/form-data">
                                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="images/no_image.png" alt=""/>
                                                            </div>
                                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                            <div>
                                                                <span class="btn btn-light-grey btn-file"><span class="fileupload-new"><i class="fa fa-picture-o"></i> Select image</span><span class="fileupload-exists"><i class="fa fa-picture-o"></i> Change</span>
                                                                    <input type="file" name="slider_item" >
                                                                    <input type="hidden" name="slider_id" value="3">
                                                                </span>
                                                                &nbsp;
                                                                <a href="#" class="btn fileupload-exists btn-light-grey" data-dismiss="fileupload">
                                                                    <i class="fa fa-times"></i> Remove
                                                                </a>
                                                            </div>
                                                            <button class="fileupload-exists btn btn-blue btn-block" style="width:200px; margin-top: 5px">Upload</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a class="accordion-toggle collapsed" onclick="$('#alert-id').html('')" data-toggle="collapse" data-parent="#accordion" href="#collapseFour">
                                                <i class="icon-arrow"></i>
                                                Slider Item #4
                                            </a></h4>
                                    </div>
                                    <div id="collapseFour" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <span class="badge badge-default">Current Slider Item #4</span>
                                                    <img class="img-responsive" src="GetSliderItems?slider_id=4"  style="width: 400px;"/>
                                                </div>
                                                <div class="col-sm-6">
                                                    <form class="form-horizontal" method="post" action="UpdateInterfaces" enctype="multipart/form-data">
                                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="images/no_image.png" alt=""/>
                                                            </div>
                                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                            <div>
                                                                <span class="btn btn-light-grey btn-file"><span class="fileupload-new"><i class="fa fa-picture-o"></i> Select image</span><span class="fileupload-exists"><i class="fa fa-picture-o"></i> Change</span>
                                                                    <input type="file" name="slider_item" >
                                                                    <input type="hidden" name="slider_id" value="4">
                                                                </span>
                                                                &nbsp;
                                                                <a href="#" class="btn fileupload-exists btn-light-grey" data-dismiss="fileupload">
                                                                    <i class="fa fa-times"></i> Remove
                                                                </a>
                                                            </div>
                                                            <button class="fileupload-exists btn btn-blue btn-block" style="width:200px; margin-top: 5px">Upload</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="panel panel-default">
                                    <div class="panel-heading">
                                        <h4 class="panel-title">
                                            <a class="accordion-toggle collapsed" onclick="$('#alert-id').html('')" data-toggle="collapse" data-parent="#accordion" href="#collapseFive">
                                                <i class="icon-arrow"></i>
                                                Slider Item #5
                                            </a></h4>
                                    </div>
                                    <div id="collapseFive" class="panel-collapse collapse">
                                        <div class="panel-body">
                                            <div class="row">
                                                <div class="col-sm-6">
                                                    <span class="badge badge-default">Current Slider Item #5</span>
                                                    <img class="img-responsive" src="GetSliderItems?slider_id=5"  style="width: 400px;"/>
                                                </div>
                                                <div class="col-sm-6">
                                                    <form class="form-horizontal" method="post" action="UpdateInterfaces" enctype="multipart/form-data">
                                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;"><img src="images/no_image.png" alt=""/>
                                                            </div>
                                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                                            <div>
                                                                <span class="btn btn-light-grey btn-file"><span class="fileupload-new"><i class="fa fa-picture-o"></i> Select image</span><span class="fileupload-exists"><i class="fa fa-picture-o"></i> Change</span>
                                                                    <input type="file" name="slider_item" >
                                                                    <input type="hidden" name="slider_id" value="5">
                                                                </span>
                                                                &nbsp;
                                                                <a href="#" class="btn fileupload-exists btn-light-grey" data-dismiss="fileupload">
                                                                    <i class="fa fa-times"></i> Remove
                                                                </a>
                                                            </div>
                                                            <button class="fileupload-exists btn btn-blue btn-block" style="width:200px; margin-top: 5px">Upload</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
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
        <script src="plugins/bootstrap-fileupload/bootstrap-fileupload.min.js"></script>
        <script src="js/form-elements.js"></script>
        <script src="plugins/gritter/js/jquery.gritter.min.js"></script>
        <script>

                                                //function to initiate jquery.gritter
                                                function runNotification() {
                                                    var i = '<%=alert%>';
                                                    if (i !== "null") {

                                                        var unique_id = $.gritter.add({
                                                            // (string | mandatory) the heading of the notification
                                                            title: 'Notification!',
                                                            // (string | mandatory) the text inside the notification
                                                            text: '<%=alert%>',
                                                            // (bool | optional) if you want it to fade out on its own or just sit there
                                                            sticky: false,
                                                            // (int | optional) the time you want it to be alive for before fading out
                                                            time: 4000,
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


        </script>
        <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->



        <script>
            jQuery(document).ready(function () {
                Main.init();
                runNotification();
                $(".loader").fadeOut("slow");
                refresh_data();
                window.setInterval(function () {
                    refresh_data();
                }, 3000);
                Index.init();
                FormElements.init();
            });
        </script>
    </body>
    <!-- end: BODY -->
</html>
