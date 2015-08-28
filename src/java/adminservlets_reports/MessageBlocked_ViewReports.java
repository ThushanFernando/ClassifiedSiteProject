/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_reports;

import classes.AdminClass_BlockedMessages;
import classes.AdminClass_ReportedInquiries;
import classes.AdminClass_ReportedItems;
import classes.AdminClass_ReportedMessages;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
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
public class MessageBlocked_ViewReports extends HttpServlet {

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
            out.println("<title>Servlet MessageBlocked_ViewReports</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MessageBlocked_ViewReports at " + request.getContextPath() + "</h1>");
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
        Enumeration<String> parameterNames = request.getParameterNames();
        if (parameterNames.hasMoreElements()) {
            processRequest(request, response);
        } else {
            doPost(request, response);
        }
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

            if (request.getParameter("toBM") != null && request.getParameter("messageBM") != null) {
                AdminClass_BlockedMessages ab = new AdminClass_BlockedMessages();
                String reciever = art.getUserEmail(request.getParameter("toBM"));
                String subject = request.getParameter("subjectBM");
                String content = request.getParameter("contentBM");
                int result = ab.blockMessage(request.getParameter("messageBM"));
                int state = arm.updateViewState(request.getParameter("messageBM"));

                if (result == 1 && state == 1) {
                    String alert = "<button class=\"btn btn-green\"><i  class=\"glyphicon glyphicon-ok-sign\"></i></button><br><strong>Blocked !</strong>  message id " + request.getParameter("messageBM") + "";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<button class=\"btn btn-red\"><i  class=\"glyphicon glyphicon-remove-circle\"></i></button><br><strong>Failed!</strong> message id " + request.getParameter("messageBM") + " Try again.";
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
