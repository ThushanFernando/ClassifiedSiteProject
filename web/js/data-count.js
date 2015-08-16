
                                        google.load("visualization", "1", {packages: ["corechart"]});
                                        google.setOnLoadCallback(drawChart);

                                        function abc() {

                                            $.ajax({
                                                type: "GET",
                                                url: "DataCountsXML",
                                                dataType: "xml",
                                                success: function (xml) {
                                                    $("#MC").html("");

                                                    $(xml).find('values').each(function () {

                                                        var msgcount = $(this).find('msgcount').text();
                                                        var notcount = $(this).find('notcount').text();
                                                        var reviewads = $(this).find('reviewads').text();
                                                        var topads = $(this).find('topads').text();
                                                        var viewreports = $(this).find('viewreports').text();

                                                        $("#MC").append(msgcount);
                                                        $("#MC1").append(msgcount);
                                                        $("#MC2").append(msgcount);
                                                        $("#NC").append(notcount);
                                                        $("#RA").append(reviewads);
                                                        $("#TA").append(topads);
                                                        $("#VR").append(viewreports);

                                                    });


                                                }
                                            });
                                            $.ajax({
                                                type: "GET",
                                                url: "MsgXML",
                                                dataType: "xml",
                                                success: function (xml) {
                                                    $("#MsgXML").html("");

                                                    $(xml).find('value').each(function () {

                                                        var sender = $(this).find('sender').text();
                                                        var content = $(this).find('content').text();
                                                        var time = $(this).find('time').text();
                                                        var status = $(this).find('status').text();
                                                        var item;
                                                        item = $('<li' + status + '>\n'
                                                                + '<a href="javascript:;">\n'
                                                                + '<div class="clearfix">\n'
                                                                + '<div class="thread-image "><i class="clip-user-5 circle-icon circle-blue" style="background-color:#0099c6;"></i></div>\n'
                                                                + '<div class="thread-content">\n'
                                                                + '<span class="author">' + sender + '</span>\n'
                                                                + '<span class="preview">' + content.substring(0, 50) + '.....</span>\n'
                                                                + '<span class="time">' + time + '</span>\n'
                                                                + '</div>\n'
                                                                + '</div>\n'
                                                                + '</a>\n'
                                                                + '</li>\n');
                                                        $("#MsgXML").append(item);


                                                    });


                                                }
                                            });





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
                                       
        