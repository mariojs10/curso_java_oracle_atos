<%-- 
    Document   : 03_ejer_scriptlet
    Created on : 19-feb-2019, 17:14:33
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tablas de multiplicar</title>
    </head>
    <body>
        <h1 align="center">Tablas de multiplicar</h1>
        <%!
        // Declaraciones
        %>
        <%-- Muestra una Table cons sus TRs, TDs,
                de la tabla de multiplicar del 7 con JSP --%>
        
            <% for (int k = 1; k < 11; k++) { %>
            
                <table style="border-width: 4px; border-style: double; display: inline-block;">
                    <th colspan="5">tabla del <%= k %></th>
                <% for (int i = 1; i < 11; i++){ %>
                    <tr>
                        <td><%= k %></td>
                        <td>x</td>
                        <td><%= i %></td>
                        <td>=</td>
                        <td><%= k * i %></td>
                    </tr>
                    <% } %>
                </table><br/>    
                <% } %>
        </table> 
    </body>
</html>
