/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_reports;

import classes.AdminClass_BlockedUsers;
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
public class MessageUBlocked_ViewReports extends HttpServlet {

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
            out.println("<title>Servlet MessageUBlocked_ViewReports</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet MessageUBlocked_ViewReports at " + request.getContextPath() + "</h1>");
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

            if (request.getParameter("toBMU") != null && request.getParameter("messageBMU") != null) {
                
                AdminClass_BlockedUsers ab = new AdminClass_BlockedUsers();
               
                String reciever = art.getUserEmail(request.getParameter("toBMU"));
                String subject = "Temporarily disabeling your account in superb.lk";

                String content = "Hello,\n"
                        + "\n"
                        + "Your account in superb.lk is temporarily disabled due to invalid activity or policy violations.\n\n"
                        + "Visit the link for common reasons and policy violations cause accounts to be suspended.\n"
                        + "http://Superb.lk/en/policies\n\n"
                        + "Regards,\n"
                        + "The support team at Superb.lk\n"
                        + "\n"
                        + "--------------------------------------------\n"
                        + "\n"
                        + "Did you know that Superb.lk has the best second-hand mobile deals in Sri Lanka? Click here: http://Superb.lk\n"
                        + "\n"
                        + "Follow us on Facebook:\n"
                        + "https://www.facebook.com/Superb.lk";

                int mail_result = as.mailClass(reciever, subject, content);//sending mail to the user
                
                int result1 = ab.RemoveUser(request.getParameter("toBMU"));     //removing user
                int result2 = ab.BlacklistUser(reciever);                       //blacklisting user

                if (result1 == 1 && result2 == 1) {
                    
                    String alert = "<button class=\"btn btn-green\">"           //returning notification of the success 
                            + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                            + "</i></button><br><strong>Blocked !</strong>"
                            + "  User " + reciever + "";
                    request.setAttribute("alert", alert);
                    
                } else {
                    
                    String alert = "<button class=\"btn btn-red\">"             //returning notification of the failure 
                            + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                            + "</i></button><br><strong>Failed!</strong>"
                            + " User " + reciever + " Try again.";
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
