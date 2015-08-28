<%-- 
    Document   : newjsp
    Created on : Aug 21, 2015, 12:22:17 PM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <style>
            .loader {
                position: fixed;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                z-index: 9999;
                background: url('images/page-loader.gif') 50% 50% no-repeat rgb(249,249,249);
            }
        </style>
    </head>
    <body>
        <div class="loader"></div>
    </body>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript">
        $(window).load(function () {
            $(".loader").fadeOut("slow");
        })
    </script>
</html>
