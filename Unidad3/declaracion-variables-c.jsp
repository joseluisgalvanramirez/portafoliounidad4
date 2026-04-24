<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    String pais;
    int moneda;
    float paridad;
    double total;

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <center>

    <%
    pais = "Mexico";
    moneda = 10;
    paridad = 17.8f;
    total = 178.0;
    %>
        <h1 style="color:purple;">Declaración de Variables JSP C)</h1>
        <h2 style="color:blue;">En <%= pais %> el dolar tiene $<%= paridad %> y yo tengo <%= moneda %> dolares.
        Entonces, tengo <%= total %> pesos</h2>
        <h2> </h2>

     

        <a href="index.jsp">Regresar</a>
</body>
</html>