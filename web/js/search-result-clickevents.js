$(document).on('click', 'clickedID', function () {

    var selection = this.id;
    $.ajax({
        type: "GET",
        url: "DetailedViewXML",
        data: {
            id: selection
        },
        dataType: "xml",
        success: function (xml) {
            $("#PlaceData").html("<br>");
            $("#PlaceHeader").html("");
            $(xml).find('value').each(function () {
                if (selection.charAt(0) === "U") {
                    var username = $(this).find('username').text();
                    var email = $(this).find('email').text();
                    var tel = $(this).find('tel').text();
                    var reg = $(this).find('reg').text();
                    var status = $(this).find('status').text();
                    var activation = $(this).find('activation').text();
                    var login = $(this).find('login').text();
                    var ads = $(this).find('ads').text();
                    $("#PlaceHeader").append("<h3>User Detailed view</h3>");
                    $("#PlaceData").append("<b>User name: </b>" + username + "<br><br>"
                            + "<b>Email: </b>" + email + "<br><br>"
                            + "<b>Tel: </b>" + tel + "<br><br>"
                            + "<b>Registration: </b>" + reg + "<br><br>"
                            + "<b>Status: </b>" + status + "<br><br>"
                            + "<b>Activation: </b>" + activation + "<br><br>"
                            + "<b>Last login: </b>" + login + "<br><br>"
                            + "<b>No. of ads: </b>" + ads + "<br>"
                            + "<hr>");
                    $("#PlaceData").append();
                }
                else if (selection.charAt(0) === "M") {
                    var id = $(this).find('id').text();
                    var sender = $(this).find('sender').text();
                    var reciever = $(this).find('reciever').text();
                    var content = $(this).find('content').text();
                    var time = $(this).find('time').text();
                    $("#PlaceHeader").append("<h3>Message Detailed view</h3>");
                    $("#PlaceData").append("<b>Id: </b>" + id + "<br><br>"
                            + "<b>Sender: </b>" + sender + "<br><br>"
                            + "<b>Reciever: </b>" + reciever + "<br><br>"
                            + "<b>Content: </b>" + content + "<br><br>"
                            + "<b>Sent on: </b>" + time + "<br><br>"
                            + "<hr>");
                }
                else if (selection.charAt(0) === "1") {
                    var id = $(this).find('id').text();
                    var email = $(this).find('email').text();
                    var reason = $(this).find('reason').text();
                    var message = $(this).find('message').text();
                    var item = $(this).find('item').text();
                    var title = $(this).find('title').text();
                    $("#PlaceHeader").append("<h3>Item report Detailed view</h3>");
                    $("#PlaceData").append("<b>Id: </b>" + id + "<br><br>"
                            + "<b>Reporter's email: </b>" + email + "<br><br>"
                            + "<b>Reason for the report: </b>" + reason + "<br><br>"
                            + "<b>Reporter's message: </b>" + message + "<br><br>"
                            + "<b>Item id: </b>" + item + "<br><br>"
                            + "<b>Item title: </b>" + title + "<br><br>"
                            + "<hr>");
                }
                else if (selection.charAt(0) === "2") {
                    var id = $(this).find('id').text();
                    var user = $(this).find('user').text();
                    var reason = $(this).find('reason').text();
                    var item = $(this).find('item').text();
                    var message_to = $(this).find('message_to').text();
                    var message_from = $(this).find('message_from').text();
                    var message = $(this).find('message').text();
                    var message_time = $(this).find('message_time').text();
                    var response = $(this).find('response').text();
                    var response_time = $(this).find('response_time').text();
                    $("#PlaceHeader").append("<h3>Inquiry report Detailed view</h3>");
                    $("#PlaceData").append("<b>Id: </b>" + id + "<br><br>"
                            + "<b>Reported user: </b>" + user + "<br><br>"
                            + "<b>Reason: </b>" + reason + "<br><br>"
                            + "<b>Item id: </b>" + item + "<br><br>"
                            + "<b>Inquiry to: </b>" + message_to + "<br><br>"
                            + "<b>Inquiry from: </b>" + message_from + "<br><br>"
                            + "<b>Inquiry: </b>" + message + "<br><br>"
                            + "<b>Inquiry time: </b>" + message_time + "<br><br>"
                            + "<b>Response: </b>" + response + "<br><br>"
                            + "<b>Response time: </b>" + response_time + "<br><br>"
                            + "<hr>");

                } else if (selection.charAt(0) === "3") {
                    var id = $(this).find('id').text();
                    var sender = $(this).find('sender').text();
                    var reciever = $(this).find('reciever').text();
                    var content = $(this).find('content').text();
                    var message_time = $(this).find('message_time').text();
                    var reason = $(this).find('reason').text();
                    var reported_time = $(this).find('reported_time').text();
                    $("#PlaceHeader").append("<h3>Message report Detailed view</h3>");
                    $("#PlaceData").append("<b>Id: </b>" + id + "<br><br>"
                            + "<b>Sender: </b>" + sender + "<br><br>"
                            + "<b>Reciever: </b>" + reciever + "<br><br>"
                            + "<b>Content: </b>" + content + "<br><br>"
                            + "<b>Messaged time: </b>" + message_time + "<br><br>"
                            + "<b>Reported reason: </b>" + reason + "<br><br>"
                            + "<b>Reported timee: </b>" + reported_time + "<br><br>"
                            + "<hr>");

                } else {
                    var id = $(this).find('id').text();
                    $("#PlaceHeader").append("<h3>Item Detailed view</h3>");
                    $("#PlaceData").append("<a href='www.google.com' target='blank'>Click to view the ad \"" + id + "\"</a><br>"
                            + "<hr>");
                }
            });
            $("#GetData").html('AJAX Request is succeded!');
        },
        error: function () {
            $("#GetData").html('An error occurred while processing XML file!');
        }
    });
});