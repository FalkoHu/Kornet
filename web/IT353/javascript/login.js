//$(window).load(function() {
//       location.replace('../html/login.jsp');
//});
//
//$(document).ready(function () {
//------------------------LOGIN PAGE INPUTS AND BUTTON----------------------------------------------
    function login2() {

        var password = $("#loginPassword").val();
        if ($("#loginUsername").val() && $("#loginPassword").val()) {
            if (password.length >= 6 && password.length <= 20) {
                //window.location.href = "mainpage.jsp";
                window.location.replace('../html/mainpage.jsp');
            } else {
                alert("Invalid password");
                 window.location.replace('../html/login.jsp');
                //window.location.href = "../html/login.jsp";
            }
        } else {
            alert("Please fill out both fields");
            location.replace("../html/login.jsp");
            //window.location.href = "../html/login.jsp";
        }
    }

    $("#loginButton").click(function () {
        login2();
    });
    
    
//});
