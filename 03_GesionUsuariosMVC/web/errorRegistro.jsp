<%-- 
    Document   : errorRegistro
    Created on : 21-feb-2019, 17:17:26
    Author     : Mariojs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error</title>
    </head>
    <body>
        <% if (request.getParameter("nombre") == "" || request.getParameter("edad") == ""
                || request.getParameter("email") == "" || request.getParameter("psswd") == "") { %>
            <h2>Rellene todos los campos</h2>
        <% } else { 
            if (request.getParameter("nombre") == "") { %>
                <h3 color="red">Falta nombre</h3>
            <% } else if (request.getParameter("edad") == ""){ %>
                <h3 color="red">Falta edad</h3>
            <% } else if (request.getParameter("email") == ""){ %>
                <h3 color="red">Falta email</h3>
            <% } else if (request.getParameter("psswd") == ""){ %>
                <h3 color="red">Falta la contraseña</h3>
            <% }
            } 
        %>
    </body>
</html>
