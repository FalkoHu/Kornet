$(document).ready(function () {


//----------------------TO GET TO THE SIGNUP PAGE--------------------------------
    function signup() {
        window.location.href = "html/signup.jsp";
    }

    $("#signup").click(function () {
        signup();
    });


//--------------------THE SIGN UP PAGE TEXT INPUTS AND BUTTON---------------------------
    function signup2() {
        var password = $("#signpassword").val();
        var email = $("#signemail").val();

        if ($("#fname").val() && $("#lname").val() && $("#signemail").val() && $("#username").val() && $("#signpassword").val()) {
            if (password.length >= 6 && password.length <= 20) {
                if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) {
                    window.location.href = "mainpage.jsp";
                } else {
                    alert("Please enter a valid email")
                }
            } else {
                alert("Password must be between 6 and 20 characters")
            }
        } else {
            alert("Please fill out all fields")
        }
    }

    $("#signUpButton").click(function () {
        signup2();
    });
//----------------------END OF SIGNUP----------------------------------------------------

//----------------------TO GET TO LOGIN PAGE--------------------------------------------------------
    function login() {
        window.location.href = "html/login.jsp";
    }


    $("#login").click(function () {
        login();
    });
//------------------------LOGIN PAGE INPUTS AND BUTTON----------------------------------------------
    function login2() {

        var usernamess = $("#loginUsername").val();
        var password = $("#loginPassword").val();
        if ($("#loginUsername").val() && $("#loginPassword").val()) {
            if (password.length >= 6 && password.length <= 20) {
                window.location.href = "mainpage.jsp";
            } else {
                alert("Invalid password");
//            window.location.href = "login.jsp";
            }
        } else {
            alert("Please fill out both fields")
        }
    }

    $("#loginButton").click(function () {
        login2();
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

//                     var button = [i];

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


                        name.html("<input type='text' name='name' value='" + restaurantArray[i].name + "'>");
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

//-----------------------REVIEW PAGE-----------------------       

//        function reviews(){
//            if(restaurantArray[i] == button[i]){
//                window.location.href= "login.jsp";
//            }
//        }    

//        $(".b").click(function(){
////            reviews();
//              alert("Hello");
//        });





});


