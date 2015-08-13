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
                        <th class="center">ID</th>
                        <th class="center hidden-xs">Reporter</th>
                        <th class="center">Reason</th>
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
                        <td class="center"><%=received1.getMessage_id()%></td>
                        <td class="center hidden-xs"><%=received1.getReceiver()%></td>
                        <td class="center"><%=received1.getReason()%></td>
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
                                            <input type="hidden" id="messageRsVM<%=received1.getMessage_id()%>" value="<%=received1.getReason()%>">
                                        </clickedViewMessage>
                                        </li>
                                        <li role="presentation">
                                        <clickedBlockMessage id="BM<%=received1.getMessage_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#messageBM" data-toggle="modal">
                                                <i class="fa clip-cancel-circle"></i> <span>Block Message</span>
                                            </a>
                                            <input type="hidden" id="messageSBM<%=received1.getMessage_id()%>" value="<%=received1.getSender()%>">
                                            <input type="hidden" id="messageCBM<%=received1.getMessage_id()%>" value="<%=received1.getContent()%>">
                                            <input type="hidden" id="messageIBM<%=received1.getMessage_id()%>" value="<%=received1.getMessage_id()%>">
                                        </clickedBlockMessage>
                                        </li>
                                        <li role="presentation">
                                        <clickedBlockMessageUser id="BMU<%=received1.getMessage_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#messageBU" data-toggle="modal">
                                                <i class="fa clip-users"></i> <span>Block User</span>
                                            </a>
                                            <input type="hidden" id="messageSBMU<%=received1.getMessage_id()%>" value="<%=received1.getSender()%>">
                                            <input type="hidden" id="messageCBMU<%=received1.getMessage_id()%>" value="<%=received1.getContent()%>">
                                            <input type="hidden" id="messageIBMU<%=received1.getMessage_id()%>" value="<%=received1.getMessage_id()%>">
                                        </clickedBlockMessageUser>
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
