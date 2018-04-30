<%-- 
    Document   : setAttribute
    Created on : Apr 30, 2018, 6:19:35 PM
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
        <%
            String user = request.getParameter("username");
            session.setAttribute("username", user);
            response.sendRedirect("mainpage.jsp");
        %>
    </body>
</html>
