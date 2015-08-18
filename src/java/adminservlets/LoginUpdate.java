/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_LoginMethods;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SithuDewmi
 */
public class LoginUpdate extends HttpServlet {

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
        doPost(request, response);
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
            request.getParameter("password");

            boolean result = false;

            AdminClass_LoginMethods lm = new AdminClass_LoginMethods();

            if ("".equals(request.getParameter("usernamenew"))) {
                result = lm.updateAdminCustom((String) session.getAttribute("Admin"), request.getParameter("password"));
                if (result == true) {
                    session.setAttribute("loggin_state", "failed");
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Success !</strong> Login detils are upto date, Please log-in again.\n"
                            + "</div>";
                    session.setAttribute("alert", alert);
                    response.sendRedirect("superb_admin.jsp");
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<strong>Note! </strong><li> Use only  alphanumeric characters for your password (both numbers and letters ).</li>"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li>Password must contain at least 8-20 characters, including UPPER/lowercase and number.</li>"
                            + "</div>";
                    session.setAttribute("alert", alert);
                    response.sendRedirect("change_log-in.jsp");
                }
            } else {
                String res = lm.updateAdmin((String) session.getAttribute("Admin"), request.getParameter("usernamenew"), request.getParameter("password"));

                if ("success".equals(res)) {
                    session.setAttribute("loggin_state", "failed");
                    String alert = "<div class=\"alert alert-success\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<i class=\"fa fa-check-circle\"></i>\n"
                            + "<strong>Success !</strong> Login detils are upto date, Please log-in again.\n"
                            + "</div>";
                    session.setAttribute("alert", alert);
                    response.sendRedirect("superb_admin.jsp");
                } else if ("unavailable".equals(res)) {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<strong>Note! </strong><li> User name isn't Available.</li>\n"
                            + "</div>";
                    session.setAttribute("alert", alert);
                    response.sendRedirect("change_log-in.jsp");
                } else {
                    String alert = "<div class=\"alert alert-danger\">\n"
                            + "<button data-dismiss=\"alert\" class=\"close\">\n"
                            + "&times;\n"
                            + "</button>\n"
                            + "<strong>Note! </strong><li> Use only  alphanumeric characters for your Username & password (both numbers and letters ).</li>"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li>Password must contain at least 8-20 characters, including UPPER/lowercase and number.</li>"
                            + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<li>User name must contain at least 8-20 characters.</li>\n"
                            + "</div>";
                    session.setAttribute("alert", alert);
                    response.sendRedirect("change_log-in.jsp");
                }

            }
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
