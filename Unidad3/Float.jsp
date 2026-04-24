<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    float euro;
    float libra;
    float yen;
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>uso de float en jsp</title>
</head>
<body>
    <%
        euro = 20.40f;
        libra = (float)23.62;
        yen = (float)0.111;
    %>
    <center> 
    
   <h2 style="color:red"> Hoy martes 17 de marzo de 2026 el tipo de divisa esta a: </h2> 
   <h4 style="color:purple"> <%= euro %> pesos el euro </h4>
   <h4 style="color:purple"> <%= libra %> pesos la libra esterlina </h4>
   <h4 style="color:purple"> <%= yen %> pesos el yen </h4>
    <a href="index.jsp">Regresar</a>

    
    </center>
</body>
</html>