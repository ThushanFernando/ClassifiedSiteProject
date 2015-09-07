<%-- 
    Document   : home
    Created on : Aug 3, 2015, 11:19:07 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <jsp:include page="BootstrapHeader.jsp"></jsp:include>
    <body class="container-fluid">
        <div class="row-fluid">
            <jsp:include page="navbar.jsp"></jsp:include>
        </div>
        <jsp:include page="home_sidebar.jsp"></jsp:include>
    </body>
</html>
