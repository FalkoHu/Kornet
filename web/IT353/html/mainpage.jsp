<%@page contentType="text/html" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />

        <title>MainPage</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="../css/mainpage.css" />
        <script src="../javascript/main.js"></script>
    </head>
    <body>

        <h1> Welcome <%= session.getAttribute("username")%> </h1>
        <button id="logout">Logout</button>

        <div id="centerMain">
            <h1 id="h1MainPage">FIND A RESTAURANT</h1>
            <input type="text" id="keyword" placeholder="Enter in a city">
            <button id="searchButton">Search</button>

        </div>
        <div id="middle"></div>
    </body>
</html>


