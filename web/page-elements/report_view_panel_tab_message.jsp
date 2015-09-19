<%-- 
    Document   : report_view_panel_tab_message
    Created on : Aug 12, 2015, 7:55:03 PM
    Author     : SithuDewmi
--%>

<%@page import="classes.AdminClass_ReportedMessages"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <%
            ArrayList ReportedMessages = (ArrayList) request.getAttribute("ReportedMessages");
            Iterator itr1 = ReportedMessages.iterator();
            AdminClass_ReportedMessages received1 = null;
            String message_report_count1 = (String) request.getAttribute("message_report_count");
        %>
        <div class="tab-pane" id="panel_tab_Message">

            <table class="table table-striped table-hover" id="sample-table-3">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Message from</th>
                        <th class="hidden-xs">Time</th>
                        <th class="center"></th>                                                                                                

                    </tr>
                </thead>
                <tbody>
                    <%
                        while (itr1.hasNext()) {
                            Object a = itr1.next();
                            received1 = (AdminClass_ReportedMessages) a;
                    %>
                    <tr>
                        <td><%=received1.getMessage_id()%></td>
                        <td><%=received1.getSender()%></td>
                        <td class="hidden-xs"><%=received1.getMessage_time_stamp()%></td>
                        <td class="center">
                            <div>
                                <div class="btn-group">
                                    <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
                                        <i class="fa fa-cog"></i> <span class="caret"></span>
                                    </a>
                                    <ul role="menu" class="dropdown-menu pull-right">
                                        <li role="presentation">
                                        <clickedViewMessage id="VM<%=received1.getMessage_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#view_message"  data-toggle="modal">
                                                <i class="fa clip-bubbles-3"></i> <span>View Message</span>
                                            </a>
                                            <input type="hidden" id="messageSVM<%=received1.getMessage_id()%>" value="<%=received1.getSender()%>">
                                            <input type="hidden" id="messageRVM<%=received1.getMessage_id()%>" value="<%=received1.getReceiver()%>">
                                            <input type="hidden" id="messageCVM<%=received1.getMessage_id()%>" value="<%=received1.getContent()%>">
                                            <input type="hidden" id="messageTVM<%=received1.getMessage_id()%>" value="<%=received1.getMessage_time_stamp()%>">
                                        </clickedViewMessage>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#confirm_blockM<%=received1.getMessage_id()%>" data-toggle="modal">
                                                <i class="fa clip-cancel-circle"></i> <span>Block Message</span>
                                            </a>
                                            <div id="confirm_blockM<%=received1.getMessage_id()%>"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <span class="badge badge-info">Block message id : <%=received1.getMessage_id()%>?</span>
                                                    <form action="MessageBlocked_ViewReports?tabId=panel_tab_Message" method="POST" id="<%=received1.getMessage_id()%>_blockM">
                                                        <input type="hidden"  name="toBM" value="<%=received1.getSender()%>">
                                                        <input type="hidden"  name="messageBM" value="<%=received1.getMessage_id()%>">
                                                        <input type="hidden"  name="message_contentBM" value="<%=received1.getContent()%>">
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                                                        Cancel
                                                    </button>
                                                    <button type="button" class="btn btn-blue" onclick="document.getElementById('<%=received1.getMessage_id()%>_blockM').submit();">
                                                        Block
                                                    </button>
                                                </div>
                                            </div>

                                        </li>


                                        <li role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#confirm_blockMU<%=received1.getMessage_id()%>" data-toggle="modal">
                                                <i class="fa clip-users"></i> <span>Block User</span>
                                            </a>

                                            <div id="confirm_blockMU<%=received1.getMessage_id()%>"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <span class="badge badge-info">Block message User : <%=received1.getSender()%>?</span>
                                                    <form action="MessageUBlocked_ViewReports?tabId=panel_tab_Message" method="POST" id="<%=received1.getMessage_id()%>_blockMU">
                                                        <input type="hidden" name="toBMU" value="<%=received1.getSender()%>">
                                                        <input type="hidden" name="messageBMU" value="<%=received1.getMessage_id()%>">
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                                                        Cancel
                                                    </button>
                                                    <button type="button" class="btn btn-blue" onclick="document.getElementById('<%=received1.getMessage_id()%>_blockMU').submit();">
                                                        Block
                                                    </button>
                                                </div>
                                            </div>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#confirm_removeMR<%=received1.getMessage_id()%>" data-toggle="modal">
                                                <i class="fa clip-remove"></i> Remove Report
                                            </a>

                                            <div id="confirm_removeMR<%=received1.getMessage_id()%>"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <span class="badge badge-info">Remove report : <%=received1.getMessage_id()%>?</span>
                                                    <form action="MRemoved_ViewReports?tabId=panel_tab_Message" method="POST" id="<%=received1.getMessage_id()%>_removeMR">
                                                        <input type="hidden" name="removeReport" value="<%=received1.getMessage_id()%>">
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                                                        Cancel
                                                    </button>
                                                    <button type="button" class="btn btn-blue" onclick="document.getElementById('<%=received1.getMessage_id()%>_removeMR').submit();">
                                                        Remove
                                                    </button>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </td>

                    </tr>
                    <%}
                        if (message_report_count1 == "") {%>
                    <tr>
                        <td>No data available in table</td> 
                    </tr>
                    <tr>
                        <td>Showing 0 to 0 of 0 entries</td> 
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
