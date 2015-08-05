/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_NavbarTools;
import classes.AdminClass_Overviewstats;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SithuDewmi
 */
public class DataCountsXML extends HttpServlet {

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
            out.println("<title>Servlet DataCountsXML</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DataCountsXML at " + request.getContextPath() + "</h1>");
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
       response.setContentType("test/xml");
       response.setCharacterEncoding("UTF-8");
        AdminClass_NavbarTools an=new AdminClass_NavbarTools();
        AdminClass_Overviewstats ao=new AdminClass_Overviewstats();
        
       String messageCount=String.valueOf(an.messageCount());
       if("0".equals(messageCount)){
           messageCount="";
       }
       String ads=ao.reviewAdsCount();
       if("0".equals(ads)){
           ads="";
       }
       String temp="111";
       String content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
               +"<values>\n"
               +"   <msgcount>"+messageCount+"</msgcount>\n"
               +"   <notcount>"+temp+"</notcount>\n"
               +"   <reviewads>"+ads+"</reviewads>\n"
               +"   <topads>N/A</topads>\n"
               +"   <viewreports>"+temp+"</viewreports>\n"
               +"</values>\n";
       
               
       response.getWriter().write(content);
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
        processRequest(request, response);
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
