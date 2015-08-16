<%-- 
    Document   : ads_review_modals
    Created on : Aug 15, 2015, 11:14:31 AM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <div id="message" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>



                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" name="optionsRadios12">Message to the user</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ModifyAds" method="POST" role="form" class="smart-wizard form-horizontal" id="form">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    From: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="fromid" name="fromname" value="Superb.lk" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    To: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="toid" name="to" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Subject: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="subjectid" name="subject" rows="2" readonly style="resize: none"></textarea>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    How to modify: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" name="content" id="form-field-24" rows="12" style="overflow-y: scroll; word-wrap: break-word;">
                                    </textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7">
                                    <input type="hidden" id="itemid" name="itemname" value="">
                                    <input type="hidden" id="reasonid" name="reason" value="">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-6">
                                    <button class="btn btn-blue next-step btn-block">
                                        Send <i class="fa fa-arrow-circle-right"></i>
                                    </button>
                                </div>
                            </div>
                        </form>    
                    </div>

                </div>
            </div>

        </div>
    </body>
</html>
