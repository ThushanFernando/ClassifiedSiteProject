/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_XML;

import classes.AdminClass_Message;
import classes.AdminClass_Overviewstats;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Iterator;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SithuDewmi
 */
public class ConversationXML extends HttpServlet {

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
            out.println("<title>Servlet ConversationXML</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ConversationXML at " + request.getContextPath() + "</h1>");
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
        AdminClass_Message am = new AdminClass_Message();
        String sender;
        ArrayList al = am.getConversation(request.getParameter("selected_ListItem"));
        Iterator itr = al.iterator();
        AdminClass_Message received = null;
        String content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                + "<values>\n";
        while (itr.hasNext()) {
            Object a = itr.next();
            received = (AdminClass_Message) a;

            String time = received.getTimeStamp();
            if ("Admin".equals(received.getSender())) {
                sender = "You";
            } else {
                sender = received.getSender();
            }
            content = content
                    + "	<value>\n"
                    + "		<id>" + received.getId()+ "</id>\n"
                    + "		<sender>" + sender + "</sender>\n"
                    + "		<content>" + received.getContent() + "</content>\n"
                    + "		<time>" + time + "</time>\n"
                    + "	</value>\n";

        }
        content = content + "</values>";
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
