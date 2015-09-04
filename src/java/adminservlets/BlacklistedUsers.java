/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_BlacklistedEmails;
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
public class BlacklistedUsers extends HttpServlet {

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
            out.println("<title>Servlet BlacklistedUsers</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BlacklistedUsers at " + request.getContextPath() + "</h1>");
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

            AdminClass_BlacklistedEmails ab = new AdminClass_BlacklistedEmails();

            if (request.getParameter("email_unblock") != null) {                //checking blacklist action
                boolean exists = ab.getEnteredEmail(request.getParameter("email_unblock"));//checking exsistence

                if (exists == true) {
                    int result = ab.unblockEmail(request.getParameter("email_unblock"));//unblacklist an email

                    if (result == 1) {                                           //returning notification of the success or the failure
                        String alert = "<button class=\"btn btn-green\"><i  class=\""
                                + "glyphicon glyphicon-ok-sign\"></i></button><br><strong>"
                                + "Unblocked !</strong> Email- " + request.getParameter("email_unblock") + "";
                        request.setAttribute("alert", alert);

                    } else {
                        String alert = "<button class=\"btn btn-red\"><i  class=\""
                                + "glyphicon glyphicon-remove-circle\"></i></button><br><strong>"
                                + "Failed !</strong> Email- " + request.getParameter("email_unblock") + "";
                        request.setAttribute("alert", alert);
                    }

                } else {                                                         //returning notification of the success or the failure
                    String alert = "<button class=\"btn btn-red\"><i  class=\""
                            + "glyphicon glyphicon-remove-circle\"></i></button><br><strong>"
                            + "Failed !</strong> Email- " + request.getParameter("email_unblock") + " "
                            + "Does not exsist in the list";
                    request.setAttribute("alert", alert);
                }

            } else if (request.getParameter("email_block") != null) {           //checking if the email is null
                boolean exists = ab.getEnteredEmail(request.getParameter("email_block"));//checking if the email is already blacklisted

                if (exists == true) {                                           //returning notification of the success or the failure
                    String alert = "<button class=\"btn btn-red\"><i  class=\""
                            + "glyphicon glyphicon-remove-circle\"></i></button><br><strong>"
                            + "Failed !</strong> Email- " + request.getParameter("email_block") + " "
                            + "is already blacklisted";

                    request.setAttribute("alert", alert);

                } else {
                    int result = ab.blockEmail(request.getParameter("email_block")); //blacklisting an email

                    if (result == 1) {                                          //returning notification of the success or the failure
                        String alert = "<button class=\"btn btn-green\"><i  class=\""
                                + "glyphicon glyphicon-ok-sign\"></i></button><br><strong>"
                                + "Blocked !</strong> Email- " + request.getParameter("email_block") + "";
                        request.setAttribute("alert", alert);
                    } else {
                        String alert = "<button class=\"btn btn-red\"><i  class=\""
                                + "glyphicon glyphicon-remove-circle\"></i></button><br><strong>"
                                + "Failed !</strong> Email- " + request.getParameter("email_block") + "";
                        request.setAttribute("alert", alert);

                    }

                }
            }

            ArrayList blacklistedEmails = (ArrayList) ab.getBlacklistedEmails();//loading blacklisted emails
            request.setAttribute("blacklistedEmails", blacklistedEmails);
            RequestDispatcher rd = request.getRequestDispatcher("user_blacklisted.jsp");
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
