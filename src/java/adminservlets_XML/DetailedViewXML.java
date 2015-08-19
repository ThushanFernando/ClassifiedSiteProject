/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package adminservlets_XML;

import classes.AdminClass_DetailedView;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SithuDewmi
 */
public class DetailedViewXML extends HttpServlet {

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
            out.println("<title>Servlet DetailedViewXML</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet DetailedViewXML at " + request.getContextPath() + "</h1>");
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
        response.setContentType("text/xml");
        response.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
        ArrayList al;
        AdminClass_DetailedView ad = new AdminClass_DetailedView();
        String content = null;
        if ("U".equals(String.valueOf(id.charAt(0)))) {

            al = ad.userDetailedView(id.substring(1));

            content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                    + "<values>\n"
                    + "	<value>\n"
                    + "		<username>" + al.get(0) + "</username>\n"
                    + "		<email>" + al.get(1) + "</email>\n"
                    + "		<tel>" + al.get(2) + "</tel>\n"
                    + "		<reg>" + al.get(3) + "</reg>\n"
                    + "		<status>" + al.get(4) + "</status>\n"
                    + "		<activation>" + al.get(5) + "</activation>\n"
                    + "		<login>" + al.get(6) + "</login>\n"
                    + "		<ads>" + al.get(7) + "</ads>\n"
                    + "	</value>\n"
                    + "</values>";

        } else if ("M".equals(String.valueOf(id.charAt(0)))) {

            al = ad.messageDetailedView(id.substring(1));

            content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                    + "<values>\n"
                    + "	<value>\n"
                    + "		<id>" + al.get(0) + "</id>\n"
                    + "		<sender>" + al.get(1) + "</sender>\n"
                    + "		<reciever>" + al.get(2) + "</reciever>\n"
                    + "		<content>" + al.get(3) + "</content>\n"
                    + "		<time>" + al.get(4) + "</time>\n"
                    + "	</value>\n"
                    + "</values>";

        } else if ("1".equals(String.valueOf(id.charAt(0)))) {

            al = ad.reportItemDetailedView(id.substring(1));

            content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                    + "<values>\n"
                    + "	<value>\n"
                    + "		<id>" + al.get(0) + "</id>\n"
                    + "		<email>" + al.get(1) + "</email>\n"
                    + "		<reason>" + al.get(2) + "</reason>\n"
                    + "		<message>" + al.get(3) + "</message>\n"
                    + "		<item>" + al.get(4) + "</item>\n"
                    + "		<title>" + al.get(5) + "</title>\n"
                    + "	</value>\n"
                    + "</values>";

        } else if ("2".equals(String.valueOf(id.charAt(0)))) {
            al = ad.reportInquiryDetailedView(id.substring(1));
            content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                    + "<values>\n"
                    + "	<value>\n"
                    + "		<id>" + al.get(0) + "</id>\n"
                    + "		<user>" + al.get(1) + "</user>\n"
                    + "		<reason>" + al.get(2) + "</reason>\n"
                    + "		<item>" + al.get(3) + "</item>\n"
                    + "		<message_to>" + al.get(4) + "</message_to>\n"
                    + "		<message_from>" + al.get(5) + "</message_from>\n"
                    + "		<message>" + al.get(6) + "</message>\n"
                    + "		<message_time>" + al.get(7) + "</message_time>\n"
                    + "		<response>" + al.get(8) + "</response>\n"
                    + "		<response_time>" + al.get(9) + "</response_time>\n"
                    + "	</value>\n"
                    + "</values>";
        } else if ("3".equals(String.valueOf(id.charAt(0)))) {
            al = ad.reportMessageDetailedView(id.substring(1));
            content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                    + "<values>\n"
                    + "	<value>\n"
                    + "		<id>" + al.get(0) + "</id>\n"
                    + "		<sender>" + al.get(1) + "</sender>\n"
                    + "		<reciever>" + al.get(2) + "</reciever>\n"
                    + "		<content>" + al.get(3) + "</content>\n"
                    + "		<message_time>" + al.get(4) + "</message_time>\n"
                    + "		<reason>" + al.get(5) + "</reason>\n"
                    + "		<reported_time>" + al.get(6) + "</reported_time>\n"
                    + "	</value>\n"
                    + "</values>";

        } else {
            String tilte = ad.itemDetailedView(String.valueOf(id.charAt(0)));
            content = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
                    + "<values>\n"
                    + "	<value>\n"
                    + "		<id>" + tilte + "</id>\n"
                    + "	</value>\n"
                    + "</values>";

        }

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
