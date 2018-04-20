<%-- 
    Document   : review
    Created on : Apr 19, 2018, 8:20:06 PM
    Author     : Falko
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <link rel="stylesheet" type="text/css" media="screen" href="../css/review.css" />
        <script src="../javascript/main.js"></script>
    </head>
    
    
    
    <body>
        <div id="restName"><%= request.getParameter("name") %> </div>
        <div id="reviewRes"> <%= request.getParameter("review") %> </div>
    </body>
</html>
