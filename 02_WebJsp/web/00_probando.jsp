<%-- 
    Document   : 00_probando
    Created on : 19-feb-2019, 16:30:13
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Probando JSP</h1>
        <%
            double num = Math.random();
            if (num > 0.8) {
        %>
        <H2>Que tengas un buen dia</H2>
        <p>100</p>
        <% } else { %>
        <H2>Bueno, la vida continua...</H2>
        <% } %>
        <a href="00_probando.jsp"><h3>Prueba de nuevo</h3></a>
    </body>
</html>
