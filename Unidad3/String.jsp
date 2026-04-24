<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String mes, anio;

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>uso de string en jsp</title>
</head>
<body>
    <%
        String dia = "Viernes 13";
        String siglo  = "XXI";
        mes ="MARZO";
        anio = "2026";
    %>
    <center> 
    
    <h2 style="color:blue">
    Hoy es <%= dia %>  de <%= mes %> del <%= anio %> y siglo <%= siglo %> 
    </h2>

    <a href="index.jsp">Regresar</a>

    
    </center>
</body>
</html>