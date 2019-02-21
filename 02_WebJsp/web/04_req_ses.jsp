<%-- 
    Document   : 04_req_ses
    Created on : 20-feb-2019, 9:26:59
    Author     : Mario Jimenez Santamaria
--%>

<%@page import="java.io.IOException"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.FileWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Gestion de peticiones y respuestas</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
    </head>
    <body class="container">
        <h1>Gestion de peticiones y respuestas JSP</h1>
        <%@ include file="cabecera.jsp" %>
        <%= dameTitulo("Gestión de petciciones y respuestas JSP") %>
        <%
            String nomApell = request.getParameter("nombre_apell");
            String desc = request.getParameter("descripcion");
            String email = request.getParameter("email");
            
            if (nomApell == null || desc == null || email == null) {
        %>
        <div class="col-lg-2"></div>
        <div class="col-lg-8">
            <script>
                function preguntarSiEnviar() {
                    if (document.getElementById("nombre_apell").value() != ""
                            && document.getElementById("nombre_apell").value().length > 1) {
                            let siQuiereEnviar = window.confirm("¿Seguro que quiere enviar?");
                            return siQuiereEnviar;
                    } else {
                        alert("Nombre debe ser mayor de 1 caracter");
                        return false;
                    }
                }
            </script>
            <form action="04_req_ses.jsp" method="get" class="form-inline" onsubmit="return preguntarSiEnviar()">
                <p>Nombre y apellidos:</p>
                <p><input id="nombre_apell" type="text" name="nombre_apell" 
                          autocomplete="true" size="50" maxlength="100"
                          required="true"
                          placeholder="Introduzca nombre y apellidos" class="form-control"/></p>
                <p>Descripcion:</p>
                <p><textarea id="descripcion" name="descripcion" required="true" cols="100" rows="100" 
                             placeholder="Introduzca una descripción detallada">
                </textarea></p>
                <p>Email:</p>
                <p><input id="email" type="email" name="email" 
                          autocomplete="true" size="100" maxlength="100"/></p>
                <input type="submit" value="enviar"/>
            </form>
        </div>
        <div class="col-lg-2"></div>
        <%  
            } else { //cuando parece que todo esta OK
                
                if (nomApell != "" && desc != "" && email != "") {
                    if (nomApell.length() > 1) {
                        if (desc.length() > 5 ) {
                            //Validacion del mail
                            if (email.matches("^[_a-z0-9-]+(\\.[_a-z0-9-]+)*@[a-z0-9-]+(\\.[a-z0-9-]+)*(\\.[a-z]{2,4})$)")) {
                                try {
                                    FileWriter fileWriter = new FileWriter("C:/Users/USUARIO/DESKTOP/solicitudes.txt");
                                    PrintWriter printWriter = new PrintWriter(fileWriter);
                                    printWriter.printf("Nombre='%s'\r\nDescripcion='%s'\r\nE-mail='%s'\r\n", 
                                            nomApell, desc, email);
                                    printWriter.close();
                                    out.println("<h2>Ouh Yeah! Ha funcionado!</h2>");
                                } catch (IOException e) {
                                    %> <h2 style="color: red">Fallo en el fichero!</h2><%
                                }
                            } else out.println("<h3>E-Mail no valido.</h3>");
                        } else out.println("<h3>Pon una descripcion...so vago.</h3>");
                    } else { %> <h3>¿Qué pasa, no tienes nombre?</h3> <% }
                }         
            }   
        %>
        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </body>
</html>
