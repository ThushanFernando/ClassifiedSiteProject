<%-- 
    Document   : slider
    Created on : Jul 19, 2015, 12:56:11 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slider</title>
        <!--Image size: 1200x400-->
    </head>
    <body>
        <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
            <!-- Indicators -->

            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                <li data-target="#myCarousel" data-slide-to="2" class=""></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active"> <img class="img-thumbnail" src="http://www.radiostudio97.it/wp-content/uploads/2013/09/politics12.jpg" style="width:100%; opacity: 0.8;" alt="First slide">
                    <div class="container">
                        <div class="carousel-caption" style="padding-top: 5px;">
                            <h1>Main Category</h1>
                            <p>Sub Category</p>
                        </div>
                    </div>
                </div>
                <div class="item"> <img class="img-thumbnail" src="http://www.beeaccessorized.co.uk/Static/Images/BI02070001V001.jpg" style="width:100%; opacity: 0.8" data-src="" alt="Second slide">
                    <div class="container">
                        <div class="carousel-caption" style="padding-top: 5px;">
                            <h1>Main Category</h1>
                            <p>Sub Category</p>
                        </div>
                    </div>
                </div>
                <div class="item"> <img class="img-thumbnail" src="http://www.hortoncomputerservices.co.uk/wp-content/uploads/2014/07/Low-cost-computer-and-laptop-repairs-hagleyjpg-1200x400.jpg" style="width:100%; opacity: 0.8" data-src="" alt="Third slide">
                    <div class="container">
                        <div class="carousel-caption" style="padding-top: 5px;">
                            <h1>Main Category</h1>
                            <p>Sub Category</p>
                        </div>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> </div>
    </body>
</html>
