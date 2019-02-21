<%-- 
    Document   : 05_sesiones
    Created on : 20-feb-2019, 14:03:40
    Author     : USUARIO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de sesiones JSP</title>
    </head>
    <body>
        <%! int totalPeticiones = 0; //Variable estática %>
        <h1>Gestion de sesiones JSP</h1>
        <h2>Calculo de un factorial</h2>
        <form action="05_sesiones.jsp" method="get">
            <p>N&uacute;mero:
                <input id="numero" name="numero" type="number" />
                <input type="submit" value="calcular"/>
            </p>
        </form>
        <% 
            String numeroGet = request.getParameter("numero");
            if (numeroGet != null) {
                int numero = 0;
                double factorial = 1;
                boolean error = false;
                try {
                    numero = Integer.valueOf(numeroGet);
                    if(numero < 1) {
                        error = true;
                    } else { //Todo correcto, calculamos el factorial
                        for (int i = numero; i > 1; i--) {
                            factorial *= 1;
                        }
                    }
                } catch (NumberFormatException e) {
                    error = true;
                }
                if (error) {
                    out.println("<p style='color: red'>Indicar un numero entero mayor que cero</p>");
                } else {
                    out.println("<p>Resultado: " + numero + "! = " + factorial + "</p>");

                }
            }
                session.setMaxInactiveInterval(300);
            Integer contador = (Integer) session.getAttribute("contadorVisitas");
            if (contador != null) {
                contador = Integer.valueOf(contador);
            } else {
                contador = 0;
            }
            if (contador != 0) {
                %> <p>Ejecuciones de este JSP en esta sesión: <%= contador %> </p> <%
            }
            contador++;
            session.setAttribute("contadorVisitas", contador);
            
            totalPeticiones++;
        %>
        <p>Ejecuciones totales de este JSP: <%= totalPeticiones %> </p>
    </body>
</html>
