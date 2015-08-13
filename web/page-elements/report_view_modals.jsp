<%-- 
    Document   : report_view_models
    Created on : Aug 12, 2015, 9:41:25 AM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>
        <div id="view_message" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Content of the message</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ViewReports" method="POST" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Sender: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  id="senderVMId" name="senderVM" value="" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Receiver: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  id="receiverVMId" name="receiverVM" value="" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Content: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="contentVMId" name="contentVM" rows="4" readonly style="resize: none; overflow-y: auto"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Sent at: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  id="sentVMId" name="sentVM" value="" >
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="reasonVMId" name="reasonVM" rows="2" readonly style="resize: none"></textarea>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <div id="itemBA" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Message to the user</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ViewReports" method="POST" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    From: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  name="fromname" value="Superb.lk" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    To: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="toidBA" name="toBA" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Subject: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="subjectidBA" name="subjectBA" rows="2" readonly style="resize: none"></textarea>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason for Ad block: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" name="contentBA" id="contentidBA" rows="12" style="overflow-y: auto; word-wrap: break-word;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7">
                                    <input type="hidden" id="itemidBA" name="itemBA" value="">
                                    <input type="hidden" id="reportidBA" name="reportBA" value="">
                                    <input type="hidden" id="reasonidBA" name="reasonBA" value="">
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
        <div id="itemBU" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Message to the user</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ViewReports" method="POST" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    From: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  name="fromname" value="Superb.lk" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    To: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="toidBU" name="toBU" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Subject: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="subjectidBU" name="subjectBU" rows="2" readonly style="resize: none"></textarea>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason for User block: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" name="contentBU" id="contentidBU" rows="12" style="overflow-y: auto; word-wrap: break-word;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7">
                                    <input type="hidden" id="reportidBU" name="reportBU" value="">
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
        <div id="view_report" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Content of the report</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="#" role="form" class="smart-wizard form-horizontal" id="">
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
                                    <input type="text" class="form-control" readonly="true" id="itemtitle" placeholder=""><span class="badge badge-info"><span id='itemstatus'></span></span>
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

        <div id="messageBM" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Message to the user</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ViewReports?tabId=panel_tab_Message" method="POST" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    From: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  name="fromname" value="Superb.lk" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    To: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="toidBM" name="toBM" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Subject: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="subjectidBM" name="subjectBM" rows="2" readonly style="resize: none"></textarea>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason for Message block: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" name="contentBM" id="contentidBM" rows="12" style="overflow-y: auto; word-wrap: break-word;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7">
                                    <input type="hidden" id="messageidBM" name="messageBM" value="">
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
        <div id="messageBU" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Message to the user</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ViewReports?tabId=panel_tab_Message" method="POST" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    From: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  name="fromname" value="Superb.lk" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    To: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="toidBMU" name="toBMU" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Subject: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="subjectidBMU" name="subjectBMU" rows="2" readonly style="resize: none"></textarea>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason for User block: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" name="contentBMU" id="contentidBMU" rows="12" style="overflow-y: auto; word-wrap: break-word;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7">
                                    <input type="hidden" id="messageidBMU" name="messageBMU" value="">
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

        <div id="view_inquiry" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Content of the Inquiry</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="#" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Item number: 
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" readonly="true" id="inquiryItem"  placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Inquiry From: 
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" readonly="true" id="inquiryFrom" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Inquiry To: 
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" readonly="true" id="inquiryTo" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Inquiry Message: 
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" readonly="true" rows="3" id="inquiryMessage" style="overflow-y: auto; word-wrap: break-word; resize: none;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Inquiry Time: 
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" readonly="true" id="inquiryTime" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Inquiry Response: 
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" readonly="true" rows="3" id="inquiryResponse" style="overflow-y: auto; word-wrap: break-word; resize: none;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Response Time: 
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" readonly="true" id="responseTime" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason: 
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" readonly="true" rows="3" id="inquiryReason" style="overflow-y: auto; word-wrap: break-word; resize: none;"></textarea>
                                </div>
                            </div>
                        </form>    
                    </div>

                </div>
            </div>

        </div>

        <div id="messageBI" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Message to the user</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ViewReports?tabId=panel_tab_Inquiry" method="POST" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    From: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  name="fromname" value="Superb.lk" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    To: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="toidBI" name="toBI" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Subject: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="subjectidBI" name="subjectBI" rows="2" readonly style="resize: none"></textarea>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason for Inquiry block: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" name="contentBI" id="contentidBI" rows="12" style="overflow-y: auto; word-wrap: break-word;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7">
                                    <input type="hidden" id="inquiryidBI" name="inquiryBI" value="">
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

        <div id="messageBIU" class="modal fade" tabindex="-1" data-width="760" style="display: none;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                    &times;
                </button>
                <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Message to the user</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-14">
                        <form action="ViewReports?tabId=panel_tab_Inquiry" method="POST" role="form" class="smart-wizard form-horizontal" id="">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    From: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control"  name="fromname" value="Superb.lk" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    To: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <input type="text" readonly class="form-control" id="toidBIU" name="toBIU" placeholder="">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Subject: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="form-control" id="subjectidBIU" name="subjectBIU" rows="2" readonly style="resize: none"></textarea>

                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">
                                    Reason for User block: <span class="symbol required"></span>
                                </label>
                                <div class="col-sm-7">
                                    <textarea class="autosize form-control" name="contentBIU" id="contentidBIU" rows="12" style="overflow-y: auto; word-wrap: break-word;"></textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-sm-7">
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
