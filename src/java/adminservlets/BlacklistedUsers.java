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
            AdminClass_BlacklistedEmails ab = new AdminClass_BlacklistedEmails();
            if (request.getParameter("email_unblock") != null) {
                boolean exists = ab.getEnteredEmail(request.getParameter("email_unblock"));
                if (exists == true) {
                    int result = ab.unblockEmail(request.getParameter("email_unblock"));
                    if (result == 1) {
                        String alert = "<div class=\"alert alert-success\">\n"
                                + "<button data-dismiss=\"alert\" class=\"close\">\n"
                                + "&times;\n"
                                + "</button>\n"
                                + "<i class=\"fa fa-check-circle\"></i>\n"
                                + "<strong>Unblocked !</strong>  Email- " + request.getParameter("email_unblock") + "  .\n"
                                + "</div>";
                        request.setAttribute("alert", alert);
                    } else {
                        String alert = "<div class=\"alert alert-danger\">\n"
                                + "<button data-dismiss=\"alert\" class=\"close\">\n"
                                + "&times;\n"
                                + "</button>\n"
                                + "<i class=\"fa fa-times-circle\"></i>\n"
                                + "<strong>Failed!</strong> Email- '" + request.getParameter("email_unblock") + "' Try again.\n"
                                + "</div>";
                        request.setAttribute("alert", alert);
                    }
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> Email- '" + request.getParameter("email_unblock") + "' Doesn't exsist in the list.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);
                }
            } else if (request.getParameter("email_block") != null) {
                boolean exists = ab.getEnteredEmail(request.getParameter("email_block"));
                if (exists == true) {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-times-circle\"></i>\n"
                            + "<strong>Failed!</strong> Email- '" + request.getParameter("email_block") + "' Already blacklisted.\n"
                            + "</div>";
                    request.setAttribute("alert", alert);

                } else {
                    int result = ab.blockEmail(request.getParameter("email_block"));
                    if (result == 1) {
                        String alert = "<div class=\"alert alert-success\">\n"
                                + "<button data-dismiss=\"alert\" class=\"close\">\n"
                                + "&times;\n"
                                + "</button>\n"
                                + "<i class=\"fa fa-check-circle\"></i>\n"
                                + "<strong>Blocked !</strong>  Email- " + request.getParameter("email_block") + "  .\n"
                                + "</div>";
                        request.setAttribute("alert", alert);
                    } else {
                        String alert = "<div class=\"alert alert-danger\">\n"
                                + "<button data-dismiss=\"alert\" class=\"close\">\n"
                                + "&times;\n"
                                + "</button>\n"
                                + "<i class=\"fa fa-times-circle\"></i>\n"
                                + "<strong>Failed!</strong> Email- '" + request.getParameter("email_block") + "' Try again.\n"
                                + "</div>";
                        request.setAttribute("alert", alert);

                    }
                }
            }

            ArrayList blacklistedEmails = (ArrayList) ab.getBlacklistedEmails();
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
