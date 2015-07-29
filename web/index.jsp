<%-- 
    Document   : index
    Created on : Jun 17, 2015, 10:26:45 AM
    Author     : Indunil
--%>

<jsp:include page="BootstrapHeader.jsp"></jsp:include>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome To Superb.lk</title>

        <style type="text/css">
            .hr-black{
                border: 1px solid rgb(0, 0, 0);
                border: 1px solid rgba(0, 0, 0, .5);

                -webkit-background-clip: padding-box; /* for Safari */
                background-clip: padding-box; /* for IE9+, Firefox 4+, Opera, Chrome */
            }
            .hr-blue{
                border: 1px solid rgb(0, 0, 127);
                border: 1px solid rgba(0, 0, 255, .5);

                -webkit-background-clip: padding-box; /* for Safari */
                background-clip: padding-box; /* for IE9+, Firefox 4+, Opera, Chrome */
            }      
            .hr-green{
                border: 1px solid rgb(0, 127, 0);
                border: 1px solid rgba(0, 255, 0, .5);

                -webkit-background-clip: padding-box; /* for Safari */
                background-clip: padding-box; /* for IE9+, Firefox 4+, Opera, Chrome */
            }
            .hr-red{
                border: 1px solid rgb(127, 0, 0);
                border: 1px solid rgba(255, 0, 0, .5);

                -webkit-background-clip: padding-box; /* for Safari */
                background-clip: padding-box; /* for IE9+, Firefox 4+, Opera, Chrome */
            }
        </style>

    </head>

    <jsp:include page="navbar_start.jsp"></jsp:include>
    <jsp:include page="slider.jsp"></jsp:include>

    <body class="container-fluid text-center">

        <hr class="hr-red">
        
        <div class="row-fluid">
            <div class="col-lg-12">
                <div class="caption text-center">
                    <h3>Map</h3>
                    <p>Sri Lanka</p>
                </div>
            </div>
        </div>

        <hr class="hr-blue"/>

        <div class="row-fluid container">
            <jsp:include page="browse_categories.jsp"></jsp:include>                
            </div>
            
            <div class="row-fluid">
                <br>
                <br>
                <br>
            </div>
        </body>

    <jsp:include page="footer_nav.jsp"></jsp:include>

</html>
