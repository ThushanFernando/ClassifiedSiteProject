/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_ReviewAds;
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
public class ReviewAds extends HttpServlet {

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
            out.println("<title>Servlet ReviewAds</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ReviewAds at " + request.getContextPath() + "</h1>");
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
        AdminClass_ReviewAds ar = new AdminClass_ReviewAds();
        String item = request.getParameter("item");
        String action = request.getParameter("action");
        int result = 0;
        String alert = null;
        if ("Approve".equals(action) && item != null) {
            result = ar.approveAd(item);
            if (result == 1) {
                alert = "<div class=\"alert alert-success\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-check-circle\"></i>\n"
                        + "<strong>Approved!</strong> Advertiesment number '"+request.getParameter("item")+"' .\n"
                        + "</div>";
            } else {
                alert = "<div class=\"alert alert-danger\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-times-circle\"></i>\n"
                        + "<strong>Failed!</strong> Advertiesment number '"+request.getParameter("item")+"' Try again.\n"
                        + "</div>";
            }
            request.setAttribute("alert", alert);
        } else if (("Remove".equals(action) && item != null)) {
            result = ar.removeAd(item);
            if (result == 1) {
                alert = "<div class=\"alert alert-success\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-check-circle\"></i>\n"
                        + "<strong>Removed!</strong> Advertiesment number '"+request.getParameter("item")+"' .\n"
                        + "</div>";
            } else {
                alert = "<div class=\"alert alert-danger\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-times-circle\"></i>\n"
                        + "<strong>Failed!</strong> Advertiesment number '"+request.getParameter("item")+"' Try again.\n"
                        + "</div>";
            }
            request.setAttribute("alert", alert);

        }
        HttpSession session =request.getSession();
        if(session.getAttribute("alert")!=null && session.getAttribute("alert")=="success"){
             alert = "<div class=\"alert alert-success\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-check-circle\"></i>\n"
                        + "<strong>Sent !</strong>  .\n"
                        + "</div>";
            request.setAttribute("alert", alert);
            session.setAttribute("alert", null);
        }

        ArrayList reviewAds = ar.reviewAds();
        request.setAttribute("reviewAds", reviewAds);
        RequestDispatcher rd = request.getRequestDispatcher("admin/ads_review.jsp");
        rd.forward(request, response);
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
