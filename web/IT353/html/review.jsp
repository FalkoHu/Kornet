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
    </head>
    <body>
        <h1>Hello World!</h1>
         <h2> Hello <%= request.getParameter("name") %> </h2>
    </body>
</html>
