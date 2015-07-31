<%-- 
    Document   : newjsp
    Created on : Jul 31, 2015, 4:00:24 PM
    Author     : SithuDewmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="abc()">        
        
        
        <clickedID id="Utest3" >click to get id1</clickedID>
        <clickedID id="Utest2" class="get_clicked">click to get id2</clickedID>
        <clickedID id="M2" class="get_clicked">click to get id2</clickedID>
        <clickedID id="R2" class="get_clicked">click to get id2</clickedID>
        <clickedID id="A2" class="get_clicked">click to get id2</clickedID>
        <div id="PlaceData">            
            <hr>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
        <script>
            $(document).on('click', 'clickedID', function () {
                alert(this.id);
                var selection =this.id;
                $.ajax({
                    type: "GET",
                    url: "../DetailedView",
                    data: {
                        id: selection
                    },
                    dataType: "xml",
                    success: function (xml) {
                        $("#PlaceData").html("<hr>");

                        $(xml).find('value').each(function () {
                           if(selection.charAt(0)==="U"){
                            var username = $(this).find('username').text();
                            var email = $(this).find('email').text();
                            var tel = $(this).find('tel').text();
                            var status = $(this).find('status').text();
                            var activation = $(this).find('activation').text();
                            var login = $(this).find('login').text();
                            var ads = $(this).find('ads').text();

                            $("#PlaceData").append(username + "<br>");
                            $("#PlaceData").append(email + "<br>");
                            $("#PlaceData").append(tel + "<br>");
                            $("#PlaceData").append(status + "<br>");
                            $("#PlaceData").append(activation + "<br>");
                            $("#PlaceData").append(login + "<br>");
                            $("#PlaceData").append(ads + "<br>");
                            $("#PlaceData").append("<hr>");
                        }
                        else if(selection.charAt(0)==="M"){
                            var id = $(this).find('id').text();
                            var sender = $(this).find('sender').text();
                            var reciever = $(this).find('reciever').text();
                            var content = $(this).find('content').text();
                            var time = $(this).find('time').text();
                            var state = $(this).find('state').text();
                           

                            
                            $("#PlaceData").append(id + "<br>");
                            $("#PlaceData").append(sender + "<br>");
                            $("#PlaceData").append(reciever + "<br>");
                            $("#PlaceData").append(content + "<br>");
                            $("#PlaceData").append(time + "<br>");
                            $("#PlaceData").append(state + "<br>");
                            $("#PlaceData").append("<hr>");
                        }
                        else if(selection.charAt(0)==="R"){
                           var id = $(this).find('id').text(); 
                           $("#PlaceData").append(id + "<br>");
                           $("#PlaceData").append("<hr>");
                        }else{
                           var id = $(this).find('id').text(); 
                           $("#PlaceData").append("<a href='' target='blank'>click to view "+id +"</a><br>");
                           $("#PlaceData").append("<hr>");
                        }
                        });

                        $("#GetData").html('AJAX Request is succeded!');
                    },
                    error: function () {
                        $("#GetData").html('An error occurred while processing XML file!');
                    }
                });
             });

        </script>
    </body>
</html>
