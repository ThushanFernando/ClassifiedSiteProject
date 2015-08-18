<%-- 
    Document   : report_view_panel_tab_ads
    Created on : Aug 12, 2015, 7:54:47 PM
    Author     : SithuDewmi
--%>

<%@page import="classes.AdminClass_ReportedItems"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <%
            ArrayList ReportedItems = (ArrayList) request.getAttribute("ReportedItems");
            Iterator itr = ReportedItems.iterator();
            AdminClass_ReportedItems received = null;
        %>
        <div class="tab-pane in active" id="panel_tab_Ads">
            <table class="table table-striped table-hover" id="sample_1">
                <thead>
                    <tr>
                        <th class="center hidden-xs">ID</th>
                        <th class="hidden-xs">Reporter</th>
                        <th class="center">Ad id</th>
                        <th class="center">Title</th>
                        <th class="center"></th>                                                                                                

                    </tr>
                </thead>
                <tbody>
                    <%
                        while (itr.hasNext()) {
                            Object a = itr.next();
                            received = (AdminClass_ReportedItems) a;
                    %>

                    <tr>
                        <td class="center hidden-xs"><%=received.getReport_id()%></td>
                        <td class="hidden-xs"><%=received.getReporter_email()%></td>
                        <td class="center"><%=received.getItem_number()%></td>
                        <td class="center"><%=received.getTitle()%></td>
                        <td class="center">
                            <div>
                                <div class="btn-group">
                                    <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
                                        <i class="fa fa-cog"></i> <span class="caret"></span>
                                    </a>
                                    <ul role="menu" class="dropdown-menu pull-right">
                                        <li role="presentation">
                                        <clickedReport id="VR<%=received.getReport_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#view_report"  data-toggle="modal">
                                                <i class="fa clip-pencil-2"></i> <span>View Report</span>

                                                <input type="hidden" id="itemREVR<%=received.getReport_id()%>" value="<%=received.getReporter_email()%>">
                                                <input type="hidden" id="itemTVR<%=received.getReport_id()%>" value="<%=received.getTitle()%>">
                                                <input type="hidden" id="itemSVR<%=received.getReport_id()%>" value="<%=received.getStatus()%>">
                                                <input type="hidden" id="itemRVR<%=received.getReport_id()%>" value="<%=received.getReport_reason()%>">
                                                <input type="hidden" id="itemMVR<%=received.getReport_id()%>" value="<%=received.getReporter_message()%>">

                                            </a>
                                        </clickedreport>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#" target="blank">
                                                <i class="fa clip-images-3"></i> View ad
                                            </a>
                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#blockA<%=received.getReport_id()%>"  data-toggle="modal">
                                                <i class="fa clip-locked"></i><span>Block Ad</span>

                                            </a>
                                            <div id="blockA<%=received.getReport_id()%>" class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" style="display: none;">
                                                <div class="modal-header">
                                                    <label class=" control-label">
                                                        <span class=" badge">Reason for Blocking Ad:</span><span class="symbol required"></span>
                                                    </label>
                                                </div>
                                                <div class="modal-body">
                                                    <input type="hidden" id="itemINBA<%=received.getReport_id()%>" value="<%=received.getItem_number()%>">
                                                    <input type="hidden" id="itemRIBA<%=received.getReport_id()%>" value="<%=received.getReport_id()%>">
                                                    <input type="hidden" id="itemTBA<%=received.getReport_id()%>" value="<%=received.getTitle()%>">
                                                    <input type="hidden" id="itemUBA<%=received.getReport_id()%>" value="<%=received.getUsername()%>">
                                                    <div class="form-group">
                                                        <div>
                                                            <textarea class="autosize form-control" id="itemRBA<%=received.getReport_id()%>" required=""  rows="5"  style="overflow-y: auto; word-wrap: break-word; resize: none;">
                                                            </textarea>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" data-dismiss="modal" class="btn btn-default" onclick="document.getElementById('itemRBA<%=received.getReport_id()%>').value = ''">
                                                        Cancel
                                                    </button>
                                                    <clickedReportBlockAd id="BA<%=received.getReport_id()%>">
                                                        <a href="#itemBA" data-toggle="modal">
                                                            <button type="button" data-dismiss="modal" class="btn btn-primary" onclick="">
                                                                Block
                                                            </button>
                                                        </a>
                                                    </clickedReportBlockAd>
                                                </div>
                                            </div>    
                                        </li>
                                        <li role="presentation">
                                        <clickedReportBlockUser id="BU<%=received.getReport_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#itemBU"  data-toggle="modal">
                                                <i class="fa clip-locked"></i><span>Block User</span>
                                            </a>
                                        </clickedReportBlockUser>
                                        <input type="hidden" id="itemRIBU<%=received.getReport_id()%>" value="<%=received.getReport_id()%>">
                                        <input type="hidden" id="itemTBU<%=received.getReport_id()%>" value="<%=received.getTitle()%>">
                                        <input type="hidden" id="itemUBU<%=received.getReport_id()%>" value="<%=received.getUsername()%>">

                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#" onclick="document.getElementById('RR<%=received.getReport_id()%>').submit()">
                                                <i class="fa clip-remove"></i> Remove Report
                                            </a>
                                            <form action="ViewReports" method="POST" id="RR<%=received.getReport_id()%>">
                                                <input type="hidden" name="removeReport" value="<%=received.getReport_id()%>">
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </div></td>
                    </tr>
                    <%}%>

                </tbody>
            </table>
        </div>
    </body>
</html>
