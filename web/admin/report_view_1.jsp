<%-- 
    Document   : index
    Created on : Jun 22, 2015, 6:48:51 PM
    Author     : SithuDewmi
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="classes.AdminClass_ReportedItems"%>
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
        
                            

                            <!-- start: BOOTSTRAP EXTENDED MODALS -->
                            
                            <div id="view_report" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                        &times;
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-14">
                                            <form action="#" role="form" class="smart-wizard form-horizontal" >
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        Reporter: 
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <input type="text" class="form-control" readonly="true" id="itemreporter"  placeholder="">
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        Ad title: 
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <input type="text" class="form-control" readonly="true" id="itemtitle" placeholder=""><label id='itemstatus'></label>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        Reason: 
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <textarea class="autosize form-control" readonly="true" id="itemreason" style="overflow-y: auto; word-wrap: break-word; resize: horizontal; height: 69px;"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">
                                                        Message: 
                                                    </label>
                                                    <div class="col-sm-7">
                                                        <textarea class="autosize form-control" readonly="true" id="itemreportmessage" style="overflow-y: auto; word-wrap: break-word; resize: horizontal; height: 69px;"></textarea>
                                                    </div>
                                                </div>

                                            </form>    
                                        </div>

                                    </div>
                                </div>

                            </div>
                            
        <div class="panel panel-default">
            <div class="panel-heading">
                <i class="fa fa-external-link-square"></i>
                Form Validation 1
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
            <div class="panel-body">

                <form action="#" role="form" id="form1">
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
                                    First Name <span class="symbol required"></span>
                                </label>
                                <input type="text" placeholder="Insert your First Name" class="form-control" id="firstname" name="firstname">
                            </div>

                            <div class="col-md-4">
                                <button class="btn btn-yellow btn-block" type="submit">
                                    Register <i class="fa fa-arrow-circle-right"></i>
                                </button>
                            </div>
                        </div>
                </form>
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
    <script src="admin/js/table-data.js"></script>
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
        jQuery(document).ready(function () {
            Main.init();
            FormValidator.init();
            TableData.init();
            UIModals.init();
            
            Index.init();
        });
    </script>

</body>
<!-- end: BODY -->
</html>
