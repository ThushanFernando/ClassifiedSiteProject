/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_ads;

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
public class Mod_ReviewAds extends HttpServlet {

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
            out.println("<title>Servlet Mod_ReviewAds</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Mod_ReviewAds at " + request.getContextPath() + "</h1>");
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

            if (request.getParameter("subject") != null) {

                String reciever = ar.getUserEmail(request.getParameter("to"));
                String subject = request.getParameter("subject");
                String content = request.getParameter("content").replace("*", "");
                String itemId = request.getParameter("itemname");
                String reason = null;
               
                if ("".equals(request.getParameter("reason"))) {
                    reason = "Modified ad, Reason isn't available !";
                } else {
                    reason = "Modified due to- " + request.getParameter("reason");
                }

                int result = ar.modifyAds(itemId, reason);                 //updating advertiesment status
                int result2 = as.mailClass("fernandowast@gmail.com", subject, content);//sending mail to the user

                if (result == 1 && result2 == 1) {                              
                    String alert = "<button class=\"btn btn-green\">"           //returning notification of the success 
                            + "<i  class=\"glyphicon glyphicon-ok-sign\">"
                            + "</i></button><br>Email is sent to "
                            + "<strong> " + reciever + " !</strong>";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<button class=\"btn btn-red\">"             //returning notification of the failure 
                            + "<i  class=\"glyphicon glyphicon-remove-circle\">"
                            + "</i></button><strong> Failed !</strong>";
                    request.setAttribute("alert", alert);

                }
            }

            ArrayList reviewAds = ar.reviewAds();                               //loding ad reviews
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
