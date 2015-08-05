<%-- 
    Document   : newjsp
    Created on : Jul 31, 2015, 4:00:24 PM
    Author     : SithuDewmi
--%>

<%@page import="classes.AdminClass_NavbarTools"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           

        %>
        <div class="row">
            <div class="col-sm-6"  style="padding-top:  5px;">

                <table class="table table-striped table-hover pull-right" id="sample_1">
                    <thead>
                        <tr>

                            <th>Type</th>
                            <th>ID</th>


                        </tr>
                    </thead>
                    <tbody>
                        <%

                           for(int i=0; i<5; i++){
                        %>
                        <tr>
                            
                            <td><a style="cursor:pointer"><clickedID id="<%=i%>">sd</clickedid></a></td>
                        </tr>
                        <%}%>

                    </tbody>
                </table>
            </div>
            <div class="col-md-6" >
                <div id="PlaceData"> 

                </div>


            </div>            
        </div>
    </body>
    <script>
                                $(document).on('click', 'clickedID', function () {

                                    var selection = this.id;
                                    $("#PlaceData").append(selection);
                                    
                                    });
                                </script>
</html>
