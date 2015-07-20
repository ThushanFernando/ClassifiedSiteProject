<%-- 
    Document   : browse_categories
    Created on : Jul 20, 2015, 11:25:19 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <jsp:include page="BootstrapHeader.jsp"></jsp:include>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <style type="text/css">
            .cus-box-shadow{
                -webkit-box-shadow: inset 0px 0px 175px -55px rgba(0,0,0,0.66);
                -moz-box-shadow: inset 0px 0px 175px -55px rgba(0,0,0,0.66);
                box-shadow: inset 0px 0px 175px -55px rgba(0,0,0,0.66);
            }
        </style>

    </head>
    <body class="container-fluid text-center">
        <h1 class="header">
            All Advertisements By Category            
        </h1>

        <hr>

        <div class="row cus-box-shadow" id="row1">
            <br/>

            <div class="col-lg-4" id="Electronics">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Electronics.png" alt="Electronics" width="100" height="100"/>
                    <h3>Electronics</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>
            <div class="col-lg-4" id="Vehicles">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Vehicles.png" alt="Vehicles" width="100" height="100"/>
                    <h3>Vehicles</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>
            <div class="col-lg-4" id="Property">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Property.png" alt="Property" width="100" height="100"/>
                    <h3>Property</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>

            <br/>
        </div>

        <div class="row cus-box-shadow" id="row2">
            <br/>

            <div class="col-lg-4" id="JobVacancies">               
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Job Vacancies.png" alt="Job Vacancies" width="100" height="100"/>
                    <h3>Job Vacancies</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>
            <div class="col-lg-4" id="BusinessServicesIndustry">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Business, Services & Industry.png" alt="Business, Services & Industry" width="100" height="100"/>
                    <h3>Business, Services & Industry</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>
            <div class="col-lg-4" id="Education">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Education.png" alt="Education" width="100" height="100"/>
                    <h3>Education</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>

            <br/>
        </div>

        <div class="row cus-box-shadow" id="row3">
            <br/>

            <div class="col-lg-4" id="HomeGarden">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Home & Garden.png" alt="Home & Garden" width="100" height="100"/>
                    <h3>Home & Garden</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>
            <div class="col-lg-4" id="PetsAnimals">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Pets & Animals.png" alt="Pets & Animals" width="100" height="100"/>
                    <h3>Pets & Animals</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>
            <div class="col-lg-4" id="FoodAgriculture">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Food & Agriculture.png" alt="Food & Agriculture" width="100" height="100"/>
                    <h3>Food & Agriculture</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>

            <br/>
        </div>

        <div class="row cus-box-shadow" id="row4">
            <br/>

            <div class="col-lg-6" id="FashionHealthBeauty">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Fashion, Health & Beauty.png" alt="Fashion, Health & Beauty" width="100" height="100"/>
                    <h3>Fashion, Health & Beauty</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>
            <div class="col-lg-6" id="Sports">
                <div class="caption text-center">
                    <hr>
                    <img class="img-rounded" src="media/images/Category Icons/Sports.png" alt="Sports" width="100" height="100"/>
                    <h3>Sports</h3>
                    <p>Total Ads: #</p>
                    <hr>
                </div>
            </div>

            <br/>
        </div>
    </body>
</html>
