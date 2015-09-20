/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_ads;

import classes.AdminClass_Message;
import classes.AdminClass_ReviewAds;
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
public class Rmv_ReviewAds extends HttpServlet {

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
            out.println("<title>Servlet Rmv_ReviewAds</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Rmv_ReviewAds at " + request.getContextPath() + "</h1>");
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

            AdminClass_ReviewAds ar = new AdminClass_ReviewAds();
            AdminClass_SendMail as = new AdminClass_SendMail();
            AdminClass_Message am = new AdminClass_Message();

            String reciever = ar.getUserEmail(request.getParameter("to"));
            String subject = "Refusal of your Ad \"" + request.getParameter("subject") + "\"";

            String content = "Hello,\n"
                    + "\n"
                    + "Your ad \"" + request.getParameter("subject") + "\", cannot be posted on Superb.lk.\n"
                    + "\n"
                    + "The reason why we could not approve your ad:\n"
                    + "\n"
                    + "- Illegal item or service\n"
                    + "Your ad features an item or service that is illegal or not suitable, which we cannot allow on our site. Please post a new ad with suitable content.\n"
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
                    + "https://www.facebook.com/classified.superb.lk \n\n"
                    + "Follow us on twitter\n"
                    + "https://twitter.com/superb_lk \n\n"
                    + "Follow us on Google +\n"
                    + "https://plus.google.com/u/0/108482462581533717510";

            int mail_result = as.mailClass(reciever, subject, content);//sending mail to the user

            String inbox_content = "Hello,\n"
                    + "\n"
                    + "Your ad \"" + request.getParameter("subject") + "\", cannot be posted on Superb.lk.\n"
                    + "\n"
                    + "The reason why we could not approve your ad:\n"
                    + "\n"
                    + "- Illegal item or service\n"
                    + "Your ad features an item or service that is illegal or not suitable, which we cannot allow on our site. Please post a new ad with suitable content.\n"
                    + "\n"
                    + "Regards,\n"
                    + "The support team at Superb.lk\n"
                    + "\n";

            int inbox_result = am.sendMessage(inbox_content, request.getParameter("to"));

            String action = request.getParameter("action");
            String item = request.getParameter("item");
            String alert;
            int result;

            if (("Remove".equals(action) && item != null)) {
                result = ar.removeAd(item);                                 //removing advertiesment
                if (result == 1) {
                    alert = "<button class=\"btn btn-green\">" //returning notification of the success 
                            + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                            + "</i></button><br><strong>Removed!</strong>"
                            + " Advertiesment number " + request.getParameter("item") + "";
                } else {
                    alert = "<button class=\"btn btn-red\">" //returning notification of the failure 
                            + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                            + "</i></button><br><strong>Failed!</strong> Advertiesment number " + request.getParameter("item") + " Try again.";
                }
                request.setAttribute("alert", alert);

            }

            ArrayList reviewAds = ar.reviewAds();                               //loading ad reviews
            request.setAttribute("reviewAds", reviewAds);
            RequestDispatcher rd = request.getRequestDispatcher("ads_review.jsp");
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
