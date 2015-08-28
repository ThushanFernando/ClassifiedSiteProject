/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_interfaces;

import classes.AdminClass_SliderItems;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author SithuDewmi
 */
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
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
        HttpSession session = request.getSession();
        if (session.getAttribute("loggin_state") == "success") {

            if (request.getParameter("slider_id") != null) {
                AdminClass_SliderItems as = new AdminClass_SliderItems();
                int result = 0;
                InputStream inputStream = null; // input stream of the upload file
                // obtains the upload file part in this multipart request
                Part filePart = request.getPart("slider_item");
                String itemId = request.getParameter("slider_id");
                if (filePart != null) {
                    // obtains input stream of the upload file
                    inputStream = filePart.getInputStream();
                    result = as.setSlider(inputStream, itemId);
                }
                if (result == 1) {
                    String alert = "<button class=\"btn btn-green\"><i  class=\"glyphicon glyphicon-ok-sign\"></i></button><br><strong>Updated !</strong> Slider item successfully.";
                    request.setAttribute("alert", alert);
                } else {
                    String alert = "<button class=\"btn btn-red\"><i  class=\"glyphicon glyphicon-remove-circle\"></i></button><br><strong>Failed!</strong> Slider item updating.";
                    request.setAttribute("alert", alert);

                }
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
