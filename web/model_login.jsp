<%-- 
    Document   : model_login
    Created on : Jul 12, 2015, 10:45:42 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="custom_styles_scripts/script_password_strength_meter.js"></script>

<!-- Modal -->

<form method="POST" class="form-horizontal" action="">
    <div class="modal fade" id="login_model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
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
                                <input class="form-control" id="pass" name="pass" type="password" placeholder="Account Password" class="input-xlarge" required="">  
                                <div class="pwstrength_viewport_progress"></div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer text-center">
                    <div class="btn-group">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="reset" class="btn btn-info">Reset</button>
                        <button type="submit" class="btn btn-primary">Log In</button>
                    </div>                    
                </div>
            </div>
        </div>
    </div>
</form>