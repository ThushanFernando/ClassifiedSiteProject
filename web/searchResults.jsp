<%-- 
    Document   : searchResults
    Created on : Sep 16, 2015, 10:10:47 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="BootstrapHeader.jsp"></jsp:include>

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Search Results</title>
        </head>

        <body class="text-center"  style="background-color: #cccccc;">        
        <jsp:include page="navbar.jsp"></jsp:include>

            <div class="container-fluid">

                <div class="row"><!--upper row-->

                    <div class="col-md-12">
                        locations, categories & Sorting
                    </div>

                </div><!--upper row end-->

                <hr>

                <div class="row">

                    <div class="col-md-3"><!--filter-->
                        filter
                    </div><!--filter end-->

                    <div class="col-md-9">

                        <div class="row"><!--selected districts-->

                            <div class="col-md-12">
                                selected districts
                            </div>

                        </div><!--selected districts end-->

                        <hr>

                        <div class="row"><!--search results-->

                            <div class="col-md-12">
                                results
                            </div>

                        </div><!--search results end-->

                        <hr>

                        <div class="row"><!--pagination-->

                            <div class="col-md-12">
                                <center>
                                    <ul class="pagination">
                                        <li>
                                            <a href="#">Prev</a>
                                        </li>
                                        <li>
                                            <a href="#">1</a>
                                        </li>
                                        <li>
                                            <a href="#">2</a>
                                        </li>
                                        <li>
                                            <a href="#">3</a>
                                        </li>
                                        <li>
                                            <a href="#">Next</a>
                                        </li>
                                    </ul>
                                </center>
                            </div>

                        </div><!--pagination end-->

                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <br>
                        <br>
                    </div>
                </div>

            </div>


        <jsp:include page="footer_nav.jsp"></jsp:include>
    </body>
</html>
