/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_BlockedInquiries;
import classes.AdminClass_BlockedItems;
import classes.AdminClass_BlockedMessages;
import classes.AdminClass_BlockedUsers;
import classes.AdminClass_ReportedInquiries;
import classes.AdminClass_ReportedItems;
import classes.AdminClass_ReportedMessages;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SithuDewmi
 */
public class ViewReports extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ViewReports</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewReports at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        if (session.getAttribute("loggin_state") == "success") {
            AdminClass_ReportedItems art = new AdminClass_ReportedItems();
            AdminClass_ReportedMessages arm = new AdminClass_ReportedMessages();
            AdminClass_ReportedInquiries ari = new AdminClass_ReportedInquiries();

            if (request.getParameter("itemBA") != null && request.getParameter("reportBA") != null) {

                AdminClass_BlockedItems ab = new AdminClass_BlockedItems();
                String reciever = art.getUserEmail(request.getParameter("toBA"));
                String subject = request.getParameter("subjectBA");
                String content = request.getParameter("contentBA");
                String itemId = request.getParameter("itemBA");
                String reason = request.getParameter("reasonBA");
                int result = ab.blockItem(itemId, reason);
                int state = art.updateViewState(request.getParameter("reportBA"));

                if (result == 1 && state == 1) {
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Blocked !</strong>  Advertiesment number " + itemId + "  .\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> Advertiesment number '" + itemId + "' Try again.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }
            } else if (request.getParameter("toBU") != null && request.getParameter("reportBU") != null) {
                AdminClass_BlockedUsers ab = new AdminClass_BlockedUsers();
                String reciever = art.getUserEmail(request.getParameter("toBU"));
                String subject = request.getParameter("subjectBU");
                String content = request.getParameter("contentBU");
                int result1 = ab.RemoveUser(request.getParameter("toBU"));
                int result2 = ab.BlacklistUser(reciever);

                if (result1 == 1 && result2 == 1) {
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Blocked !</strong>  User " + reciever + "  .\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> User '" + reciever + "' Try again.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }

            } else if (request.getParameter("removeReport") != null) {
                int result = art.updateViewState(request.getParameter("removeReport"));
                if (result == 1) {
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Removed !</strong>  report number " + request.getParameter("removeReport") + "  .\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> report number '" + request.getParameter("removeReport") + "' Try again.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }
            } else if (request.getParameter("toBM") != null && request.getParameter("messageBM") != null) {
                AdminClass_BlockedMessages ab = new AdminClass_BlockedMessages();
                String reciever = art.getUserEmail(request.getParameter("toBM"));
                String subject = request.getParameter("subjectBM");
                String content = request.getParameter("contentBM");
                int result = ab.blockMessage(request.getParameter("messageBM"));
                int state = arm.updateViewState(request.getParameter("messageBM"));

                if (result == 1 && state == 1) {
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Blocked !</strong>  message id " + request.getParameter("messageBM") + "  .\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> message id '" + request.getParameter("messageBM") + "' Try again.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }

            } else if (request.getParameter("toBMU") != null && request.getParameter("messageBMU") != null) {
                AdminClass_BlockedUsers ab = new AdminClass_BlockedUsers();
                String reciever = art.getUserEmail(request.getParameter("toBMU"));
                String subject = request.getParameter("subjectBMU");
                String content = request.getParameter("contentBMU");
                int result1 = ab.RemoveUser(request.getParameter("toBMU"));
                int result2 = ab.BlacklistUser(reciever);

                if (result1 == 1 && result2 == 1) {
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Blocked !</strong>  User " + reciever + "  .\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> User '" + reciever + "' Try again.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }

            } else if (request.getParameter("toBI") != null && request.getParameter("inquiryBI") != null) {
                AdminClass_BlockedInquiries ab = new AdminClass_BlockedInquiries();
                String reciever = art.getUserEmail(request.getParameter("toBI"));
                String subject = request.getParameter("subjectBI");
                String content = request.getParameter("contentBI");
                int result = ab.blockInquiries(request.getParameter("inquiryBI"));

                if (result == 1) {
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Blocked !</strong>  Inquiry id " + request.getParameter("inquiryBI") + "  .\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> Inquiry id '" + request.getParameter("inquiryBI") + "' Try again.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }

            } else if (request.getParameter("toBIU") != null && request.getParameter("subjectBIU") != null) {
                AdminClass_BlockedUsers ab = new AdminClass_BlockedUsers();
                String reciever = art.getUserEmail(request.getParameter("toBIU"));
                String subject = request.getParameter("subjectBIU");
                String content = request.getParameter("contentBIU");
                int result1 = ab.RemoveUser(request.getParameter("toBIU"));
                int result2 = ab.BlacklistUser(reciever);

                if (result1 == 1 && result2 == 1) {
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Blocked !</strong>  User " + reciever + "  .\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> User '" + reciever + "' Try again.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }

            }

            String reportCount = String.valueOf(art.getItemReportCount());
            if ("0".equals(reportCount)) {
                reportCount = "";
            }
            request.setAttribute("reportCount", reportCount);
            String message_report_count = String.valueOf(arm.getMessageReportCount());
            if ("0".equals(message_report_count)) {
                message_report_count = "";
            }
            request.setAttribute("message_report_count", message_report_count);
            String Inquiry_report_count = String.valueOf(ari.getInquiryReportCount());
            if ("0".equals(Inquiry_report_count)) {
                Inquiry_report_count = "";
            }
            request.setAttribute("Inquiry_report_count", Inquiry_report_count);

            ArrayList ReportedItems = art.getItemReports();
            request.setAttribute("ReportedItems", ReportedItems);
            ArrayList ReportedMessages = arm.getMessageReports();
            request.setAttribute("ReportedMessages", ReportedMessages);
            ArrayList ReportedInquiries = ari.getInquiryReports();
            request.setAttribute("ReportedInquiries", ReportedInquiries);
            RequestDispatcher rd = request.getRequestDispatcher("report_view.jsp");
            rd.forward(request, response);
        } else {
            response.sendRedirect("superb_admin.jsp");
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
