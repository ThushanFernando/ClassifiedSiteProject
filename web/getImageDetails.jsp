<%-- 
    Document   : getImageDetails
    Created on : Aug 15, 2015, 8:56:16 PM
    Author     : SithuDewmi
--%>

<%@page import="classes.DbClass"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    </head>
    <body>
        <%
            int img_id = Integer.parseInt(request.getParameter("your_id"));
            DbClass dbc = new DbClass();
            dbc.getConnection();//get your connection object here ;
            ResultSet rs = null;
            PreparedStatement pstmt = null;
            OutputStream oImage;
            try {
                pstmt = dbc.conn.prepareStatement("SELECT  `image` FROM `slider_images` WHERE `img_id`=?");
                pstmt.setInt(1, img_id);
                rs = pstmt.executeQuery();
                if (rs.next()) {
                    byte barray[] = rs.getBytes(1);
                    response.setContentType("image/gif");
                    oImage = response.getOutputStream();
                    oImage.write(barray);
                    oImage.flush();
                    oImage.close();
                }
            } catch (Exception ex) {
    //ex.printStackTrace();
            } finally {
                try {
                    if (dbc.conn != null) {
                        dbc.endConnection();
                    }
                } catch (Exception ex) {
                    // ex.printStackTrace();
                }
            }
        %>
    </body>
</html>
