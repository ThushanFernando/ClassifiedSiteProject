<%-- 
    Document   : postAD
    Created on : Sep 8, 2015, 11:00:21 PM
    Author     : Indunil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<jsp:include page="BootstrapHeader.jsp"></jsp:include>
<jsp:include page="navbar.jsp"></jsp:include>

    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Post An Advertisement</title>

            <style type="text/css">
                .custom-design{
                    padding: 5px;
                    margin: 15px 0px 15px 0px;
                    border-radius: 5px;
                    -moz-box-shadow:    inset 0 0 5px #000000;
                    -webkit-box-shadow: inset 0 0 5px #000000;
                    box-shadow:         inset 0 0 5px #000000;                  
                }
                .custom-padding{
                    padding: 5px;
                }
            </style>

        </head>

        <body class="container-fluid">

            <form action="" method="POST">

                <!-- test -->
                <div class="row-fluid text-left" style="margin: 15px;"><!-- first section -->

                    <div class="col-lg-4 custom-padding">

                        <!-- Advertisement Type -->
                        <div>                        
                            Advertisement Type Selector
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png"/>
                            <hr>
                        </div>
                        <div class="col custom-design"><!-- Advertisement Type: Content -->
                            <fieldset>

                                <!-- Multiple Radios -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="adType">Item is, </label>
                                    <div class="col-md-4">
                                        <div class="radio">
                                            <label for="adType-0">
                                                <input type="radio" name="adType" id="adType-0" value="1" checked="checked">
                                                For Sale
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label for="adType-1">
                                                <input type="radio" name="adType" id="adType-1" value="2">
                                                For Hire
                                            </label>
                                        </div>
                                        <div class="radio">
                                            <label for="adType-2">
                                                <input type="radio" name="adType" id="adType-2" value="3">
                                                Wanted
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>

                        </div><!-- end of Advertisement Type: Content -->

                    </div>
                    <div class="col-lg-4 custom-padding">

                        <!-- Category -->
                        <div>                        
                            Category Selector
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png"/>
                            <hr>
                        </div>

                        <div class="col custom-design">

                            <fieldset>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="categoryMain">Main Category</label>
                                    <div class="col-md-8">
                                        <select id="categoryMain" name="categoryMain" class="form-control">
                                            <option>-- Select --</option>
                                            <option value="1">Main Category</option>
                                        </select>
                                    </div>
                                </div>

                                <div><br><br></div>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="categorySub">Sub Category</label>
                                    <div class="col-md-8">
                                        <select id="categorySub" name="categorySub" class="form-control">
                                            <option>-- Select --</option>
                                            <option value="1">Sub Category</option>
                                        </select>
                                    </div>
                                </div>

                            </fieldset>

                        </div>

                    </div>
                    <div class="col-lg-4 custom-padding">

                        <!-- Location -->
                        <div>                        
                            Location Selector
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png"/>
                            <hr>
                        </div>

                        <div class="col custom-design">

                            <fieldset>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="locationDistrict">District</label>
                                    <div class="col-md-8">
                                        <select id="locationDistrict" name="locationDistrict" class="form-control">
                                            <option>-- Select --</option>
                                            <option value="1">District</option>
                                        </select>
                                    </div>
                                </div>

                                <div><br><br></div>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="locationCity">City</label>
                                    <div class="col-md-8">
                                        <select id="locationCity" name="locationCity" class="form-control">
                                            <option>-- Select --</option>
                                            <option value="1">City</option>
                                        </select>
                                    </div>
                                </div>

                            </fieldset>

                        </div>

                    </div>
                </div> <!-- end of first section -->

                <br>

                <div class="row-fluid text-left" style="margin: 15px;"> <!-- second section -->                 

                    <div class="col-lg-12 custom-padding">
                        <!-- Images -->
                        <div>                        
                            Image Upload
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png"/>
                            <hr>
                        </div>

                        <div class="col custom-design">
                            Content
                        </div>
                    </div>

                </div> <!-- end of second section --> 

                <br>

                <div class="row-fluid text-left" style="margin: 15px;"> <!-- third section -->                 

                    <div class="col-lg-12 custom-padding">
                        <!-- Main Information -->
                        <div>                        
                            Main Information
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png"/>
                            <hr>
                        </div>

                        <div class="col custom-design">
                            Content
                        </div>
                    </div>

                </div> <!-- end of third section --> 


                <div class="row-fluid" style="margin: 15px;"> <!-- fourth section -->


                    <div class="col-lg-12 custom-design">
                        <!-- Reset Button -->
                        Reset & Submit
                    </div>

                </div> <!-- end of fourth section -->                    

            </form>

            <div class="row-fluid" style="margin-top: 30px;">
                <br>
            </div>

        </body>
    </html>

<jsp:include page="footer_nav.jsp"></jsp:include>