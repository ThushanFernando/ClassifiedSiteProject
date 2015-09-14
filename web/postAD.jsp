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

                    //-moz-box-shadow:    inset 0 0 5px #000000;
                    //-webkit-box-shadow: inset 0 0 5px #000000;
                    //box-shadow:         inset 0 0 5px #000000;

                    background-color: #ccffcc;
                }
                .custom-padding{
                    padding: 5px;
                }
            </style>

            <script type="text/javascript">
                $(function () {
                    $('[data-toggle="popover"]').popover()
                })
                $('body').on('click', function (e) {
                    $('[data-toggle="popover"]').each(function () {
                        //the 'is' for buttons that trigger popups
                        //the 'has' for icons within a button that triggers a popup
                        if (!$(this).is(e.target) && $(this).has(e.target).length === 0 && $('.popover').has(e.target).length === 0) {
                            $(this).popover('hide');
                        }
                    });
                });
            </script>

        </head>

        <body class="container-fluid">

            <form action="" method="POST">

                <!-- test -->
                <div class="row-fluid text-left" style="margin: 15px;"><!-- first section -->

                    <div class="col-lg-4 custom-padding custom-design">

                        <!-- Advertisement Type -->
                        <div>                        
                            Advertisement Type Selector
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png" data-toggle="popover" data-placement="bottom" title="Advertisement Type Selector" data-content="Specify the type of your advertisment."/>
                            <hr>
                        </div>
                        <div class="col"><!--custom-design--><!-- Advertisement Type: Content -->
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
                    <div class="col-lg-4 custom-padding custom-design">

                        <!-- Category -->
                        <div>                        
                            Category Selector
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png" data-toggle="popover" data-placement="bottom" title="Category Selector" data-content="Specify the Main and Sub categories of the item."/>
                            <hr>
                        </div>

                        <div class="col"><!--custom-design-->

                            <fieldset>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="categoryMain">Main Category</label>
                                    <div class="col-md-8">
                                        <select required="" id="categoryMain" name="categoryMain" class="form-control">
                                            <option value="Not Selected">-- Select --</option>
                                        </select>
                                    </div>
                                </div>

                                <div><br><br></div>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="categorySub">Sub Category</label>
                                    <div class="col-md-8">
                                        <select id="categorySub" name="categorySub" class="form-control">
                                            <option value="Not Selected">-- Select --</option>
                                        </select>
                                    </div>
                                </div>

                            </fieldset>

                        </div>

                    </div>
                    <div class="col-lg-4 custom-padding custom-design">

                        <!-- Location -->
                        <div>                        
                            Location Selector
                            <img style="display: inline-block;" class="img-circle img-responsive" width="15" height="15" src="media/images/Other Icons/Help Documentation.png" data-toggle="popover" data-placement="bottom" title="Location Selector" data-content="Specify the District and City."/>
                            <hr>
                        </div>

                        <div class="col"><!--custom-design-->

                            <fieldset>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="locationDistrict">District</label>
                                    <div class="col-md-8">
                                        <select id="locationDistrict" name="locationDistrict" class="form-control">
                                            <option value="Not Selected">-- Select --</option>
                                        </select>
                                    </div>
                                </div>

                                <div><br><br></div>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-4 control-label" for="locationCity">City</label>
                                    <div class="col-md-8">
                                        <select id="locationCity" name="locationCity" class="form-control">
                                            <option value="Not Selected">-- Select --</option>
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

                            <fieldset>

                                <!-- Title-->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="title">Title</label>  
                                    <div class="col-md-10">
                                        <input id="title" name="title" type="text" placeholder="Title of the advertisement " class="form-control input-md" required="">
                                        <span class="help-block"> </span>
                                    </div>
                                </div>

                                <br>

                                <!-- Description -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="description">Description</label>
                                    <div class="col-md-10">                     
                                        <textarea class="form-control" required="" id="description" name="description" placeholder="Item Description"></textarea>
                                        <span class="help-block"> </span>
                                    </div>
                                </div>

                                <br>

                                <!-- Item Price-->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="price">Price</label>  
                                    <div class="col-md-10">
                                        <input id="price" name="price" type="number" placeholder="Price of the item" class="form-control input-md" required="">
                                        <span class="help-block"> </span>  
                                    </div>                                  
                                </div>

                                <br>

                                <!-- Select Basic -->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="negotiable">Negotiable</label>
                                    <div class="col-md-10">
                                        <select id="negotiable" name="negotiable" class="form-control">
                                            <option value="No">No - Not Negotiable</option>
                                            <option value="Yes">Yes - Negotiable</option>
                                        </select>
                                    </div>
                                </div>

                                <br>

                                <!-- Mobile Number-->
                                <div class="form-group">
                                    <label class="col-md-2 control-label" for="voice">Mobile Number</label>  
                                    <div class="col-md-10">
                                        <input id="voice" name="voice" type="number" placeholder="Enter 10 Digit Mobile Number" class="form-control input-md" required="">
                                        <span class="help-block"> </span>  
                                    </div>
                                </div>

                            </fieldset>

                        </div>
                    </div>

                </div> <!-- end of third section --> 


                <div class="row-fluid" style="margin: 15px;"> <!-- fourth section -->


                    <div class="col-lg-12"><!--custom-design-->
                        <!-- Reset Button -->
                        <div class="btn-group btn-group-justified" role="group">
                            <div class="btn-group btn-group-lg" role="group">
                                <button type="reset" class="btn btn-danger">Reset Fields</button>
                            </div>
                            <div class="btn-group btn-group-lg" role="group">
                                <button type="submit" class="btn btn-primary">Post AD</button>
                            </div>
                        </div>
                    </div>

                </div> <!-- end of fourth section -->

                <div class="row-fluid">
                    <div class="col-lg-12">
                        <br>
                        <br>
                        <br>
                    </div>
                </div>

            </form>

        </body>
    </html>

<jsp:include page="footer_nav.jsp"></jsp:include>