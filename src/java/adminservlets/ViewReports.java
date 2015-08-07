/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_BlockedItems;
import classes.AdminClass_ReportedItems;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SithuDewmi
 */
public class ViewReports extends HttpServlet {

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
            out.println("<title>Servlet ViewReports</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ViewReports at " + request.getContextPath() + "</h1>");
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
        AdminClass_ReportedItems art = new AdminClass_ReportedItems();
        
        if (request.getParameter("itemIdB") != null && request.getParameter("reportIdB") != null) {
            
            AdminClass_BlockedItems ab = new AdminClass_BlockedItems();
            int result = ab.blockItem(request.getParameter("itemIdB"));
            int state =art.updateViewState(request.getParameter("reportIdB"));
            
            if (result == 1 && state==1) {
                String alert = "<div class=\"alert alert-success\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-check-circle\"></i>\n"
                        + "<strong>Blocked !</strong>  Advertiesment number " + request.getParameter("itemIdB") + "  .\n"
                        + "</div>";
                request.setAttribute("alert", alert);
            } else {
                String alert = "<div class=\"alert alert-danger\">\n"
                        + "<button data-dismiss=\"alert\" class=\"close\">\n"
                        + "&times;\n"
                        + "</button>\n"
                        + "<i class=\"fa fa-times-circle\"></i>\n"
                        + "<strong>Failed!</strong> Advertiesment number '" + request.getParameter("itemIdB") + "' Try again.\n"
                        + "</div>";
                request.setAttribute("alert", alert);
            }
        }
        if(request.getParameter("removeReport")!=null){
             System.out.println(request.getParameter("removeReport"));
        }
        
        int reportCount=art.getItemReportCount();
        request.setAttribute("reportCount", reportCount);
        ArrayList ReportedItems = art.getItemReports();
        request.setAttribute("ReportedItems", ReportedItems);
        RequestDispatcher rd = request.getRequestDispatcher("admin/report_view.jsp");
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
