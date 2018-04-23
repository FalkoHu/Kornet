<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <title>Login</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="../css/login.css" />
        <script src="../javascript/main.js"></script>
    </head>
    <body>
        <div class="tocenterlogin">
            <h1>Login</h1>
            <form action="../javascript/mainpage.js">
                <input type="text" id="loginUsername" placeholder="Username" name="username"><br>
                <input type="password" id="loginPassword" placeholder="Password" name="logPassword"><br>
                <button id="loginButton">Login</button>
            </form>
        </div>

        <div class="footer">   
            <p>Contact Us</p>
            <p>About Us</p>
            <p>Site Map</p>
        </div>

    </body>
</html>