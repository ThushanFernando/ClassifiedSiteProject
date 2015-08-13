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
                        <th class="center">ID</th>
                        <th class="center hidden-xs">Reported User</th>
                        <th class="center">Reason</th>
                        <th class="center"></th>                                                                                                

                    </tr>
                </thead>
                <tbody>
                    <%                        while (itr2.hasNext()) {
                            Object a = itr2.next();
                            received2 = (AdminClass_ReportedInquiries) a;
                    %>
                    <tr>
                        <td class="center"><%=received2.getInquiry_id()%></td>
                        <td class="center hidden-xs"><%=received2.getReported_user()%></td>
                        <td class="center"><%=received2.getReason()%></td>
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
                                                <input type="hidden" id="inquiryRVI<%=received2.getInquiry_id()%>" value="<%=received2.getReason()%>">
                                            </a>
                                        </clickedViewInquiry>
                                        </li>
                                        <li role="presentation">
                                        <clickedBlockInquiry id="BI<%=received2.getInquiry_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#messageBI"  data-toggle="modal">
                                                <i class="fa clip-cancel-circle"></i> <span>Block Inquiry</span>
                                                <input type="hidden" id="inquiryRUBI<%=received2.getInquiry_id()%>" value="<%=received2.getReported_user()%>">
                                                <input type="hidden" id="inquiryIIBI<%=received2.getInquiry_id()%>" value="<%=received2.getInquiry_id()%>">
                                            </a>
                                        </clickedBlockInquiry>

                                        </li>
                                        <li role="presentation">
                                        <clickedBlockInquiryUser id="BIU<%=received2.getInquiry_id()%>">&nbsp;&nbsp;&nbsp;&nbsp;
                                            <a role="menuitem" tabindex="-1" href="#messageBIU"  data-toggle="modal">
                                                <i class="fa clip-users"></i> <span>Block User</span>
                                                <input type="hidden" id="inquiryRUBIU<%=received2.getInquiry_id()%>" value="<%=received2.getReported_user()%>">
                                            </a>
                                        </clickedBlockInquiryUser>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </td>
                    </tr>
                    <%}
                        if (Inquiry_report_count1== "") {%>
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
