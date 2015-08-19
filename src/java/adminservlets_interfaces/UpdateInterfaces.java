/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_interfaces;

import java.io.IOException;
import java.io.PrintWriter;
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
public class UpdateInterfaces extends HttpServlet {

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
            out.println("<title>Servlet UpdateInterfaces</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UpdateInterfaces at " + request.getContextPath() + "</h1>");
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
            if (session.getAttribute("setSlider") == "success") {
                String alert = "<div class=\"alert alert-success\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-check-circle\"></i>\n"
                        + "<strong>Updated !</strong> Slider item successfully.\n"
                        + "</div>";
                session.setAttribute("setSlider", null);
                request.setAttribute("alert", alert);
            } else if (session.getAttribute("setSlider") == "failed") {
                String alert = "<div class=\"alert alert-danger\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-times-circle\"></i>\n"
                        + "<strong>Failed!</strong> Slider item updating.\n"
                        + "</div>";
                session.setAttribute("setSlider", null);
                request.setAttribute("alert", alert);

            }
            RequestDispatcher rd = request.getRequestDispatcher("interface_updates.jsp");
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
