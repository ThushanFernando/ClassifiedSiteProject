<%-- 
    Document   : chat
    Created on : Jul 2, 2015, 10:21:47 PM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clip-One - Responsive Admin Template</title>
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
        <link rel="stylesheet" href="../plugins/perfect-scrollbar/src/perfect-scrollbar.css">
        <!--[if IE 7]>
        <link rel="stylesheet" href="../plugins/font-awesome/css/font-awesome-ie7.min.css">
        <![endif]-->
        <!-- end: MAIN CSS -->
        <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
        <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
        <link rel="shortcut icon" href="favicon.ico" />
    </head>
    <body>



        
        <div  class="row navbar-fixed-bottom">

            <div class="col-lg-12">
                <div class="col-sm-2 pull-right"   >
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="clip-bubble-4 hidden-xs"></i>
                            <p>Chat List</p>



                        </div>
                        <div class="panel-body panel-scroll" id="div1" style="height:200px">


                        </div>



                    </div>
                </div>
                <div class="col-sm-2 pull-right"   >
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="clip-bubble-4 hidden-xs"></i>
                            <p>John Doe</p>


                            <div class="panel-tools">

                                <a class="btn btn-xs btn-link panel-collapse collapses " href="#">
                                </a>									
                                <a class="btn btn-xs btn-link panel-close" href="#">
                                    <i class="fa fa-times"></i>
                                </a>
                            </div>
                        </div>
                        <div class="panel-body panel-scroll" id="div1" style="height:200px">
                            <ol class="discussion">
                                <li class="other">
                                    <div class="avatar">
                                        John
                                    </div>
                                    <div  class="messages "  >
                                        <p>
                                            Hello admin !
                                        </p>


                                    </div>
                                </li>
                                <li class="self">
                                    <div class="avatar">
                                        You 
                                    </div>
                                    <div class="messages">
                                        <p>
                                            Hello John !
                                        </p>

                                    </div>
                                </li>
                                <li class="other">
                                    <div class="avatar">
                                        John
                                    </div>
                                    <div  class="messages "  >
                                        <p>
                                            Hello admin !
                                        </p>


                                    </div>
                                </li>
                                <li class="self">
                                    <div class="avatar">
                                        You 
                                    </div>
                                    <div class="messages" >
                                        <p>
                                            Hello John !
                                        </p>

                                    </div>
                                </li>

                            </ol>






                        </div>
                        <div class="input-group col-sm-12 panel-body" >
                            <input type="text" class="form-control input-mask-date" placeholder="Type a message here...">
                            <span class="input-group-btn">
                                <button class="btn btn-teal"  type="button">
                                    <i class="fa fa-check"></i>
                                </button> </span>
                        </div>

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
        <script src="../plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
        <script src="../plugins/less/less-1.5.0.min.js"></script>
        <script src="../js/main.js"></script>

        <!-- end: MAIN JAVASCRIPTS -->
        <!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
        <!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
        <script>
            jQuery(document).ready(function () {
                Main.init();
                Index.init();
            });
        </script>
        <script>
            $('#div1').scrollTop($('#div1')[0].scrollHeight);
        </script>    
    </body>
    <!-- end: BODY -->
</html>