<%-- 
    Document   : errorCampos
    Created on : 21-feb-2019, 9:58:00
    Author     : Mario Jimenez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Complete los campos</h1>
        <a href="index.jsp">Volver</a>
        <% if (request.getParameter("nombre") == "") { %>
        <h2>Falta nombre</h2>
        <% } %>
        <% if (request.getParameter("edad") == "") { %>
            <h2>Falta edad</h2>
        <% } %>
    </body>
</html>
