/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_LoginMethods;
import classes.AdminClass_SendMail;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author SithuDewmi
 */
public class ForgotPassword extends HttpServlet {

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
            out.println("<title>Servlet ForgotPassword</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ForgotPassword at " + request.getContextPath() + "</h1>");
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
        if (request.getParameter("email") != null) {                            //checking if the email is null

            HttpSession session = request.getSession();
            AdminClass_LoginMethods lm = new AdminClass_LoginMethods();

            ArrayList al = lm.checkAdmin(request.getParameter("email"));        //getting admin loggin details
            if (al != null) {
                
                AdminClass_SendMail sm = new AdminClass_SendMail();             
                String reciever = request.getParameter("email");
                String subject = "www.superb.lk - Admin password recovery";
                String content = "Someone requested that the password be "
                        + "recovered for the following site:\n"
                        + "\n"
                        + "http://superb.lk/ \n"
                        + "\n"
                        + "Username: '" + al.get(0) + "'\n"
                        + "\n"
                        + "Password: '" + al.get(1) + "'\n"
                        + "\n"
                        + "If this was a mistake, just ignore this email and "
                        + "nothing will happen.\n"
                        + "\n"
                        + "To re-enter your password, visit the following "
                        + "address:\n"
                        + "\n"
                        + "<http://localhost:8080/ClassifiedSiteProject/superb_"
                        + "admin.jsp>\n"
                        +"Thank you";
                int result = sm.mailClass(reciever, subject, content);          //sending email to the admin          
                String alert = "<div class=\"alert alert-success\">\n"          //returning notification of the success or the failure
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-check-circle\"></i>\n"
                        + "<strong>Success !</strong> Check your email for the "
                        + "Login detils.\n"
                        + "</div>";
                session.setAttribute("alert", alert);
                session.setAttribute("loggin_state", "failed");
            } else {
                String alert = "<div class=\"errorHandler alert alert-danger \">\n"//returning notification of the success or the failure
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<strong>Error !</strong> Please check your entered "
                        + "email address.\n"
                        + "</div>";
                session.setAttribute("alert", alert);
                session.setAttribute("loggin_state", "failed");
            }

        }
        response.sendRedirect("superb_admin.jsp");
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
