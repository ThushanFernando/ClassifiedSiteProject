/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets;

import classes.AdminClass_Overviewstats;
import java.io.IOException;
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
public class Dashboard extends HttpServlet {

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
        AdminClass_Overviewstats ao=new AdminClass_Overviewstats();
        
        ArrayList categoriesPresentage=ao.categoriesPresentage();
        request.setAttribute("categoriesPresentage", categoriesPresentage);
        
        ArrayList pagevisitMonth=ao.pagevisitMonth();
        request.setAttribute("pagevisitMonth", pagevisitMonth);
        
        ArrayList usersMonth=ao.usersMonth();
        request.setAttribute("usersMonth", usersMonth);
        
        ArrayList adsMonth=ao.adsMonth();
        request.setAttribute("adsMonth", adsMonth);
        
        ArrayList pagevisitYear=ao.pagevisitYear();
        request.setAttribute("pagevisitYear", pagevisitYear);
        
        ArrayList usersYear=ao.usersYear();
        request.setAttribute("usersYear", usersYear);
        
        ArrayList adsYear=ao.adsYear();
        request.setAttribute("adsYear", adsYear);
        
        
        RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
        rd.forward(request, response);
       
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
