$(document).ready(function () {


//----------------------TO GET TO THE SIGNUP PAGE--------------------------------
    function signup() {
        window.location.href = "html/signup.jsp";
    }

    $("#signup").click(function () {
        signup();
    });

//----------------------TO GET TO LOGIN PAGE--------------------------------------------------------
    function login() {
        window.location.href = "html/login.jsp";
    }


    $("#login").click(function () {
        login();
    });

//----------------------------MAIN PAGE STARTS HERE---------------------------------------
    function logout() {
        window.location.href = "../home.html";
        alert("You succesfully logged out");
    }

    $("#logout").click(function () {
        logout();
    });



    function search() {
        $("#middle").empty();


        var keyword = $("#keyword").val();

        $.get("http://opentable.herokuapp.com/api/restaurants?city=" + keyword).done(
                function (response) {

                    var restaurantArray = response.restaurants;


                    for (var i = 0; i < restaurantArray.length; i++) {

                        var restaurantDiv = $("<div class='restaurantDiv'></div>");

                        var img = $("<img></img>");
                        img.attr("src", restaurantArray[i].image_url);
                        var form = $("<form method='post' action='review.jsp'></form>");
                        var name = $("<p class='imgText'></p>");
                        var phone = $("<p class='imgText'></p>");
                        var address = $("<p class='imgText'></p>");
                        var city = $("<p class='imgText'></p>");
                        var zip = $("<p class='imgText'></p>");
                        var input = $("<div class='reviews'></div>");
                        var btn = $("<input class='submit' type='submit' value='Submit'>");


                        name.html("<b>Name:</b> <input id='restInput' type='text' name='restaurant' value='" + restaurantArray[i].name + "' readonly>");
                        phone.html("<b>Phone number:</b> " + restaurantArray[i].phone);
                        address.html("<b>Address:</b> " + restaurantArray[i].address);
                        city.html("<b>Zip:</b> " + restaurantArray[i].postal_code);
                        zip.html("<b>City:</b> " + restaurantArray[i].city);
                        input.html("<textarea placeholder='Enter your review here' name='review' rows='10' cols='50'>");

                        restaurantDiv.append(img);
                        restaurantDiv.append(form);
                        form.append(name);
                        form.append(phone);
                        form.append(address);
                        form.append(zip);
                        form.append(city);
                        form.append(input);
                        form.append(btn);
                        $("#middle").append(restaurantDiv);
                    }
                })
    }



    $("#searchButton").click(function () {
        search();
    });


    $("#back").click(function () {
        window.location.href = "mainpage.jsp";
    });


});


