/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_reports;

import classes.AdminClass_BlockedItems;
import classes.AdminClass_Message;
import classes.AdminClass_ReportedInquiries;
import classes.AdminClass_ReportedItems;
import classes.AdminClass_ReportedMessages;
import classes.AdminClass_SendMail;
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
public class AdBlocked_ViewReports extends HttpServlet {

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
            out.println("<title>Servlet AdBlocked_ViewReports</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdBlocked_ViewReports at " + request.getContextPath() + "</h1>");
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
        Enumeration<String> parameterNames = request.getParameterNames();       //checking for unappropriate parameters
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
        if (session.getAttribute("loggin_state") == "success") {                //checking logged in status

            AdminClass_ReportedItems art = new AdminClass_ReportedItems();
            AdminClass_ReportedMessages arm = new AdminClass_ReportedMessages();
            AdminClass_ReportedInquiries ari = new AdminClass_ReportedInquiries();
            AdminClass_SendMail as = new AdminClass_SendMail();
            AdminClass_Message am=new AdminClass_Message();

            if (request.getParameter("itemBA") != null && request.getParameter("reportBA") != null) {

                AdminClass_BlockedItems ab = new AdminClass_BlockedItems();

                String reciever = art.getUserEmail(request.getParameter("toBA"));
                String subject = request.getParameter("subjectBA");
                String edit_link = "http://Superb.lk/en/post_item/Samsung-galaxy-note-n7000-for-sale-colombo/edit";
                String content_footer = "\n\nTo edit your ad, please click the following link:\n"
                        + edit_link + "\n\n"
                        + "Your password is: the password you selected\n"
                        + "\n"
                        + "If you have any questions, feel free to reply to the email and we will get back to you.\n"
                        + "\n"
                        + "Regards,\n"
                        + "The support team at Superb.lk\n"
                        + "\n"
                        + "--------------------------------------------\n"
                        + "\n"
                        + "Did you know that Superb.lk has the best second-hand mobile deals in Sri Lanka? Click here: http://Superb.lk\n"
                        + "\n"
                        + "Follow us on Facebook:\n"
                        + "https://www.facebook.com/Superb.lk";

                String content = request.getParameter("contentBA-header") + request.getParameter("contentBA-body") + content_footer;

                String itemId = request.getParameter("itemBA");
                String reason = "Blocked due to- " + request.getParameter("reasonBA");
                
                String inbox_content = request.getParameter("contentBA-header") + request.getParameter("contentBA-body")
                        + "\n\nPlease update your ad"
                        + "\n"
                        + "Regards,\n"
                        + "The support team at Superb.lk\n"
                        + "\n";
                
                
                int result = ab.blockItem(itemId, reason);                      //blocking advertiesment
                int state = 1;//art.updateViewState(request.getParameter("reportBA"));//update report status
                int inbox_result=am.sendMessage(inbox_content, request.getParameter("toBA"));
                int result2 = as.mailClass(reciever, subject, content);//sending mail to the user

                if (result == 1 && state == 1) {

                    String alert = "<button class=\"btn btn-green\">" //returning notification of the success 
                            + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                            + "</i></button><br><strong>Blocked !</strong>  Advertiesment number " + itemId + "  ";
                    request.setAttribute("alert", alert);

                } else {

                    String alert = "<button class=\"btn btn-red\">" //returning notification of the failure 
                            + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                            + "</i></button><br><strong>Failed!</strong> Advertiesment number " + itemId + " Try again.";
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

            ArrayList ReportedItems = art.getItemReports();                     //getting ad reports
            request.setAttribute("ReportedItems", ReportedItems);
            ArrayList ReportedMessages = arm.getMessageReports();               //getting message reports
            request.setAttribute("ReportedMessages", ReportedMessages);
            ArrayList ReportedInquiries = ari.getInquiryReports();              //getting inquiry reports
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
