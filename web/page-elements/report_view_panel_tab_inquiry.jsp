<%-- 
    Document   : report_view_panel_tab_inquiry
    Created on : Aug 12, 2015, 7:55:15 PM
    Author     : SithuDewmi
--%>

<%@page import="classes.AdminClass_ReportedInquiries"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

    </head>
    <body>
        <%
            ArrayList ReportedInquiries = (ArrayList) request.getAttribute("ReportedInquiries");
            Iterator itr2 = ReportedInquiries.iterator();
            AdminClass_ReportedInquiries received2 = null;
            String Inquiry_report_count1 = (String) request.getAttribute("Inquiry_report_count");
        %>
        <div class="tab-pane" id="panel_tab_Inquiry">
            <table class="table table-striped table-hover" id="sample-table-3">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Inquiry from</th>
                        <th class="hidden-xs">Time</th>
                        <th class="center"></th>                                                                                                

                    </tr>
                </thead>
                <tbody>
                    <%                        while (itr2.hasNext()) {
                            Object a = itr2.next();
                            received2 = (AdminClass_ReportedInquiries) a;
                    %>
                    <tr>
                        <td><%=received2.getInquiry_id()%></td>
                        <td><%=received2.getMessage_from()%></td>
                        <td class="hidden-xs"><%=received2.getInquiry_time_stamp()%></td>
                        <td class="center">
                            <div>
                                <div class="btn-group">
                                    <a class="btn btn-primary dropdown-toggle btn-sm" data-toggle="dropdown" href="#">
                                        <i class="fa fa-cog"></i> <span class="caret"></span>
                                    </a>
                                    <ul role="menu" class="dropdown-menu pull-right">
                                        <li role="presentation">
                                        <clickedViewInquiry id="VI<%=received2.getInquiry_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#view_inquiry"  data-toggle="modal">
                                                <i class="fa clip-bubbles-3"></i> <span>View Inquiry</span>
                                                <input type="hidden" id="inquiryINVI<%=received2.getInquiry_id()%>" value="<%=received2.getItem_number()%>">
                                                <input type="hidden" id="inquiryMFVI<%=received2.getInquiry_id()%>" value="<%=received2.getMessage_from()%>">
                                                <input type="hidden" id="inquiryMTVI<%=received2.getInquiry_id()%>" value="<%=received2.getMessage_to()%>">
                                                <input type="hidden" id="inquiryIMVI<%=received2.getInquiry_id()%>" value="<%=received2.getInquiry_message()%>">
                                                <input type="hidden" id="inquiryITVI<%=received2.getInquiry_id()%>" value="<%=received2.getInquiry_time_stamp()%>">
                                                <input type="hidden" id="inquiryIRVI<%=received2.getInquiry_id()%>" value="<%=received2.getInquiry_response()%>">
                                                <input type="hidden" id="inquiryRTVI<%=received2.getInquiry_id()%>" value="<%=received2.getResponse_time_stamp()%>">
                                            </a>
                                        </clickedViewInquiry>
                                        </li>
                                        <li role="presentation">

                                            <a role="menuitem" tabindex="-1" href="#confirm_blockI<%=received2.getInquiry_id()%>"  data-toggle="modal">
                                                <i class="fa clip-cancel-circle"></i> <span>Block Inquiry</span>
                                            </a>

                                            <div id="confirm_blockI<%=received2.getInquiry_id()%>"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <span class="badge badge-info">Block inquiry id : <%=received2.getInquiry_id()%>?</span>
                                                    <form action="InquiryBlocked_ViewReports?tabId=panel_tab_Inquiry" method="POST" id="<%=received2.getInquiry_id()%>_blockI">
                                                        <input type="hidden" name="toBI" value="<%=received2.getMessage_from()%>">
                                                        <input type="hidden" name="inquiryBI" value="<%=received2.getInquiry_id()%>">
                                                        <input type="hidden" name="inquiry_contentBI" value="<%=received2.getInquiry_message()%>">
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                                                        Cancel
                                                    </button>
                                                    <button type="button" class="btn btn-blue" onclick="document.getElementById('<%=received2.getInquiry_id()%>_blockI').submit();">
                                                        Block
                                                    </button>
                                                </div>
                                            </div>

                                        </li>
                                        <li role="presentation">

                                            <a role="menuitem" tabindex="-1" href="#confirm_blockIU<%=received2.getInquiry_id()%>"  data-toggle="modal">
                                                <i class="fa clip-users"></i><span>Block User</span>
                                            </a>
                                            <div id="confirm_blockIU<%=received2.getInquiry_id()%>"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <span class="badge badge-info">Block inquiry User : <%=received2.getMessage_from()%>?</span>
                                                    <form action="InquiryUBlocked_ViewReports?tabId=panel_tab_Inquiry" method="POST" id="<%=received2.getInquiry_id()%>_blockMIU">
                                                        <input type="hidden" name="toBIU" value="<%=received2.getMessage_from()%>">
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                                                        Cancel
                                                    </button>
                                                    <button type="button" class="btn btn-blue" onclick="document.getElementById('<%=received2.getInquiry_id()%>_blockMIU').submit();">
                                                        Block
                                                    </button>
                                                </div>
                                            </div>

                                        </li>
                                        <li role="presentation">
                                            <a role="menuitem" tabindex="-1" href="#confirm_removeIR<%=received2.getInquiry_id()%>" data-toggle="modal">
                                                <i class="fa clip-remove"></i> Remove Report
                                            </a>

                                            <div id="confirm_removeIR<%=received2.getInquiry_id()%>"  class="modal fade" tabindex="-1" data-backdrop="static" data-keyboard="false" data-width="350" style="display: none;">
                                                <div class="modal-header">
                                                    <h4 class="modal-title"><input type="radio" class="square-green" value="" checked="checked" >Confirmation</h4>
                                                </div>
                                                <div class="modal-body">
                                                    <span class="badge badge-info">Remove report : <%=received2.getInquiry_id()%>?</span>
                                                    <form action="IRemoved_ViewReports?tabId=panel_tab_Inquiry" method="POST" id="<%=received2.getInquiry_id()%>_removeIR">
                                                        <input type="hidden" name="removeReport" value="<%=received2.getInquiry_id()%>">
                                                    </form>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" data-dismiss="modal" class="btn btn-light-grey">
                                                        Cancel
                                                    </button>
                                                    <button type="button" class="btn btn-blue" onclick="document.getElementById('<%=received2.getInquiry_id()%>_removeIR').submit();">
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
                        if (Inquiry_report_count1 == "") {%>
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
