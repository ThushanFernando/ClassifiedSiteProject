<%-- 
    Document   : detailed_view
    Created on : Jul 31, 2015, 6:37:56 PM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detailed View</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        out.println("<h1>Superb.lk- User detailed view</h1>");
            out.println("<br><b></b>"+al.get(0));
            out.println("<br><b>User email: </b>"+al.get(1));
            out.println("<br><b>User tel: </b>"+al.get(2));
            out.println("<br><b>Status: </b>"+al.get(3));
            out.println("<br><b>Activation: </b>"+al.get(4));
            out.println("<br><b>Last loggin: </b>"+al.get(5));
            out.println("<br><b>Number of ads: </b>"+al.get(6));
    </body>
</html>
