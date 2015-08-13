<%-- 
    Document   : index
    Created on : Jun 22, 2015, 6:48:51 PM
    Author     : SithuDewmi
--%>

<%@page import="classes.AdminClass_NavbarTools"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
    <!--<![endif]-->
    <!-- start: HEAD -->
    <head>
        <title>Superb.lk-Admin</title>
        <!-- start: META -->
        <meta charset="utf-8" />
        <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta content="" name="description" />
        <meta content="" name="author" />

    </head>
    <!-- end: HEAD -->
    <!-- start: BODY -->
    <body>


        
        <clickedAction id="test"><form id="test">
            <input type="text" name="test" id="test" onkeyup="formy()">
        </form>
        </clickedaction>

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>

        <script>
                $(document).on('click', 'clickedAction', function () {

                    var form = document.getElementById("test");
                    var e = form.elements[0].value;
                    alert(e);
                    
                });</script>


    </body>
    <!-- end: BODY -->
</html>
