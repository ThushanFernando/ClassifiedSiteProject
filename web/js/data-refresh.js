

function refresh_data() {

    $.ajax({
        type: "GET",
        url: "DataCountsXML",
        dataType: "xml",
        success: function (xml) {
            $("#MC").html("");
            $("#MC1").html("");
            $("#MC2").html("");
            $("#RA").html("");
            $("#TA").html("");
            $("#VR").html("");

            $(xml).find('values').each(function () {

                var msgcount = $(this).find('msgcount').text();
                var reviewads = $(this).find('reviewads').text();
                var topads = $(this).find('topads').text();
                var viewreports = $(this).find('viewreports').text();

                $("#MC").append(msgcount);
                $("#MC1").append(msgcount);
                $("#MC2").append(msgcount);
                $("#RA").append(reviewads);
                $("#TA").append(topads);
                $("#VR").append(viewreports);

            });


        }
    });
//    $.ajax({
//        type: "GET",
//        url: "MsgXML",
//        dataType: "xml",
//        success: function (xml) {
//            $("#MsgXML").html("");
//
//            $(xml).find('value').each(function () {
//
//                var sender = $(this).find('sender').text();
//                var content = $(this).find('content').text();
//                var lngth = "";
//                if (content.length > 30) {
//                    lngth = ".....";
//                }
//                var time = $(this).find('time').text();
//                var status = $(this).find('status').text();
//                var item;
//                item = $('<li' + status + '>\n'
//                        + '<a href="javascript:;">\n'
//                        + '<div class="clearfix">\n'
//                        + '<div class="thread-image "><i class="clip-user-5 circle-icon circle-blue" style="background-color:#0099c6;"></i></div>\n'
//                        + '<div class="thread-content">\n'
//                        + '<span class="author">' + sender + '</span>\n'
//                        + '<span class="preview">' + content.substring(0, 30) + lngth + '</span>\n'
//                        + '<span class="time">' + time + '</span>\n'
//                        + '</div>\n'
//                        + '</div>\n'
//                        + '</a>\n'
//                        + '</li>\n');
//                $("#MsgXML").append(item);
//
//
//            });
//
//
//        }
//    });





}
;

function customData() {
    var firstDate = document.getElementById('firstdate').value + ' 00:00:00';
    var secondDate = document.getElementById('seconddate').value + ' 00:00:00';
    $.ajax({
        type: "GET",
        url: "CustomDataXML",
        dataType: "xml",
        data: {
            fd: firstDate,
            sd: secondDate
        },
        success: function (xml) {
            $("#CustomDataXML").html("");

            $(xml).find('value').each(function () {

                var result = $(this).find('Result').text();



                $("#CustomDataXML").append(result);


            });


        }
    });
}
function customDataUser() {
    var firstDate = document.getElementById('firstdateuser').value + ' 00:00:00';
    var secondDate = document.getElementById('seconddateuser').value + ' 00:00:00';
    $.ajax({
        type: "GET",
        url: "CustomDataXMLUser",
        dataType: "xml",
        data: {
            fd: firstDate,
            sd: secondDate
        },
        success: function (xml) {
            $("#CustomDataXMLUser").html("");

            $(xml).find('value').each(function () {

                var result = $(this).find('Result').text();



                $("#CustomDataXMLUser").append(result);


            });


        }
    });
}
function customDataAds() {
    var firstDate = document.getElementById('firstdateads').value + ' 00:00:00';
    var secondDate = document.getElementById('seconddateads').value + ' 00:00:00';
    $.ajax({
        type: "GET",
        url: "CustomDataXMLAds",
        dataType: "xml",
        data: {
            fd: firstDate,
            sd: secondDate
        },
        success: function (xml) {
            $("#CustomDataXMLAds").html("");

            $(xml).find('value').each(function () {

                var result = $(this).find('Result').text();



                $("#CustomDataXMLAds").append(result);


            });


        }
    });
}
function clr() {
    document.getElementById("firstdate").value = "";
    document.getElementById("firstdateuser").value = "";
    document.getElementById("firstdateads").value = "";
    document.getElementById("seconddate").value = "";
    document.getElementById("seconddateuser").value = "";
    document.getElementById("seconddateads").value = "";
    document.getElementById("CustomDataXML").innerHTML = "";
    document.getElementById("CustomDataXMLUser").innerHTML = "";
    document.getElementById("CustomDataXMLAds").innerHTML = "";
    document.getElementById("CheckPassXML").innerHTML = "";
    document.getElementById("username").value = "";
    document.getElementById("password").value = "";
    
}

function login_check() {
    var username = document.getElementById('username').value;

    var password = document.getElementById('password').value;

    if (username === "" || password === "") {
        $("#CheckPassXML").append("<div class=\"alert alert-danger\">\n"
                + "<button data-dismiss=\"alert\" class=\"close\">\n"
                + "&times;\n"
                + "</button>\n"
                + "<i class=\"fa fa-times-circle\"></i>\n"
                + "<strong>Failed!</strong>&nbsp;Enter current login details\n"
                + "</div>");
    } else {

        $.ajax({
            type: "GET",
            url: "CheckPassXML",
            dataType: "xml",
            data: {
                username: username,
                password: password

            },
            success: function (xml) {
                $("#CheckPassXML").html("");

                $(xml).find('value').each(function () {

                    var result = $(this).find('Result').text();
                    if (result === "true") {
                        window.location.replace("change_log-in.jsp");
                    } else {
                        $("#CheckPassXML").append("<div class=\"alert alert-danger\">\n"
                                + "<button data-dismiss=\"alert\" class=\"close\">\n"
                                + "&times;\n"
                                + "</button>\n"
                                + "<i class=\"fa fa-times-circle\"></i>\n"
                                + "<strong>Failed!</strong>&nbsp; Enter current login details\n"
                                + "</div>");
                    }
                });


            }
        });
    }
}
       