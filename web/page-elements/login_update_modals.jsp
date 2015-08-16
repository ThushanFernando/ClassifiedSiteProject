<%-- 
    Document   : login_update_modals
    Created on : Aug 15, 2015, 9:06:51 AM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <div id="login-update" class="modal fade" tabindex="-1" data-width="500" style="display: none;">
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
                                <h2><i class="fa fa-pencil-square teal"></i> Change Your Log-in</h2>

                                <hr>
                                <form action="#" role="form" id="form">
                                    <div class="row">
                                        
                                        <div id="CheckPassXML"></div>
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
                                                <input type="password" class="form-control"   id="password">
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
    </body>
</html>
