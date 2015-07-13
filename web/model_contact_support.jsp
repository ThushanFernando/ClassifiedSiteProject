<%-- 
    Document   : model_contact_support
    Created on : Jul 12, 2015, 9:23:06 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Modal -->

<form method="GET">
    <div class="modal fade" id="contact_support_model" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Contact Support<br/>
                        <small class="subsection-title">Send Email To Customer Support</small>
                    </h4>
                </div>
                <div class="modal-body container-fluid">
                    <fieldset>
                        <!-- Text input-->
                        <div class="control-group">
                            <label class="control-label" for="email">E-Mail</label>
                            <div class="controls">
                                <input class="form-control" id="email" name="email" type="text" placeholder="Type Your E-Mail Address" class="input-xlarge" required="">  
                            </div>
                        </div>
                        
                        <br/>
                        
                        <!-- Textarea -->
                        <div class="control-group">
                            <label class="control-label" for="message">Message/Problem</label>
                            <div class="controls">                     
                                <textarea required="" id="message" name="message" data-widearea="enable" style="border-radius: 5px;" placeholder="Type Your Message/Problem Here.."></textarea>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer">
                    <div class="btn-group pull-right">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                        <button type="submit" class="btn btn-primary">Send E-Mail</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
