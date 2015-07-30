<%-- 
    Document   : model_login
    Created on : Jul 12, 2015, 10:45:42 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script>
    $(document).ready(function () {
        $("#login_form").submit(function (e) {
            e.preventDefault();

            $("#loading_animation").html("<img src='media/images/Gif_Animations/loading.gif' width='25' height='25' alt='Loading...'/>");

            var login = $("#login").val();
            var password = $("#password").val();

            var data = "login=" + login + "&" + "password=" + password;

            $.ajax({
                type: "POST",
                url: "Ajax_login",
                data: data,
                dataType: "xml",
                success: function (xml) {
                    var loginDetails = $(xml).find('login').text();
                    var loginStatus = $(xml).find('loginStatus').text().toString();

                    $('#login_model').modal('toggle');

                    $("#message_model_content").html(loginStatus);
                    $('#message_model').modal('toggle');
                },
                error: function () {
                    $('#login_model').modal('toggle');

                    $("#message_model_content").html("Request Failed!");
                    $('#message_model').modal('toggle');
                }
            });
        });
    });
</script>

<!-- Modal -->

<form id="login_form" method="POST" class="form-horizontal">
    <div class="modal fade" id="login_model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button id="close_button" type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Log In<br/>
                        <small class="subsection-title">Sign Into Your Superb.lk Account</small>
                    </h4>
                </div>
                <div class="modal-body container-fluid">
                    <fieldset>
                        <!-- Text input-->
                        <div class="control-group">
                            <label class="control-label" for="text">Username / E-Mail</label>
                            <div class="controls">
                                <input class="form-control" id="login" name="login" type="text" placeholder="Registerd Username / E-Mail" class="input-xlarge" required="">  
                            </div>
                        </div>

                        <br/>

                        <!-- Text input-->
                        <div class="control-group">
                            <label class="control-label" for="email">Password</label>
                            <div class="controls">
                                <input class="form-control" id="password" name="pass" type="password" placeholder="Account Password" class="input-xlarge" required="">
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer text-center">
                    <div class="pull-left img-responsive img-circle" id="loading_animation" style="padding: 2px;"></div>
                    <div class="btn-group">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="reset" class="btn btn-info">Reset</button>
                        <button type="submit" id="login_button" class="btn btn-primary">Log In</button>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</form>

<!--Message Model-->

<div class="modal fade bs-example-modal-sm" id="message_model">
    <div class="modal-dialog modal-dialog modal-sm">
        <div class="modal-content" style="background-color: #00cccc;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Superb.lk</h4>
            </div>
            <div class="modal-body" id="message_model_content">

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->