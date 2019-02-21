<%-- 
    Document   : registro
    Created on : 21-feb-2019, 16:28:07
    Author     : Mariojs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>
        <h1>Registro de usuarios</h1>
        <form action="procesar" method="GET">
            <table>
                <tr><td>Nombre:</td><td><input id="nombre" type="text" name="nombre" size="30" maxlength="30" required /></td></tr>
                <tr><td>Edad:</td><td><input id="edad" type="text" name="edad" size="30" maxlength="30" required /></td></tr>
                <tr><td>Email:</td><td><input id="email" type="email" name="email" size="30" maxlength="30" required /></td></tr>
                <tr><td>Contraseña:</td><td><input id="psswd" type="password" name="psswd" size="30" maxlength="30" required /></td></tr>
                <tr><td colspan="2" align="center"><input type="submit" value="Enviar" /></td></tr> 
            </table>
        </form>
        <a href="index.jsp">Volver</a>
    </body>
</html>
