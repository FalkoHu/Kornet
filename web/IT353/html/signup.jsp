<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <title>Signup</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="../css/signup.css" />
        <script src="../javascript/main.js"></script>
    </head>
    <body>
        <div class="tocentersignup">
            <h1>Sign Up</h1>
            <form action="mainpage.jsp">
                <input type="text" id="fname" placeholder="Firstname" name="fname" value="">
                <input type="text" id="lname" placeholder="Lastname" name="lname" value=""><br>
                <input type="text" id="signemail" placeholder="Email" name="email" value=""><br>
                <input type="text" id="username" placeholder="Username" name="username" value=""><br>
                <input type="password" id="signpassword" placeholder="Password"><br>
                <button id="signUpButton">Sign Up</button>
            </form>
        </div>    

        <div class="footer">   
            <p>Contact Us</p>
            <p>About Us</p>
            <p>Site Map</p>
        </div>
    </body>

</html>