<%-- 
    Document   : slider
    Created on : Jul 19, 2015, 12:56:11 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Slider</title>
        <!--Image size: 1200x400-->

        <style type="text/css">
            .text-glow {
                color: #FFFFFF;
                -webkit-stroke-width: 5px;
                -webkit-stroke-color: #FFFFFF;
                -webkit-fill-color: #FFFFFF;
                text-shadow: 1px 0px 20px white;
                -webkit-transition: width 0.3s; /*Safari & Chrome*/
                transition: width 0.3s;
                -moz-transition: width 0.3s; /* Firefox 4 */
                -o-transition: width 0.3s; /* Opera */

                background-color: rgba(100,200,255,0.75);
                border-radius: 10px;
                -webkit-box-shadow: inset 0px 0px 175px -55px rgba(0,0,0,0.80);
                -moz-box-shadow: inset 0px 0px 175px -55px rgba(0,0,0,0.80);
                box-shadow: inset 0px 0px 175px -55px rgba(0,0,0,0.80);
            }
        </style>

        <div id="myCarousel" class="carousel slide" data-ride="carousel"> 
            <!-- Indicators -->

            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active" style="background-color: black; opacity: 0.8; border-radius: 100px; box-shadow: 0px 0px 2px 1px white;"></li>
                <li data-target="#myCarousel" data-slide-to="1" class="" style="background-color: black; opacity: 0.8; border-radius: 100px; box-shadow: 0px 0px 2px 1px white;"></li>
                <li data-target="#myCarousel" data-slide-to="2" class="" style="background-color: black; opacity: 0.8; border-radius: 100px; box-shadow: 0px 0px 2px 1px white;"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img class="img-thumbnail" src="media/images/slider_images/1312626488_fashion-designer-handbags-coach-fall-winter-2011-2012-2.jpg" style="width:100%;" alt="First slide">
                </div>
                <div class="item">
                    <img class="img-thumbnail" src="media/images/slider_images/6a3a2ba0e9eb3bf8e541f06826b1ec55_f608.jpg" style="width:100%;" data-src="" alt="Second slide">
                </div>
                <div class="item">
                    <img class="img-thumbnail" src="media/images/slider_images/msurface.jpg" style="width:100%;" data-src="" alt="Third slide">
                </div>
            </div>
            <a class="left carousel-control" href="#myCarousel" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a> <a class="right carousel-control" href="#myCarousel" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a> </div>

