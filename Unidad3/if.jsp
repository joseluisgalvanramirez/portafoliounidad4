<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    int promedio = 100;
    String universidad ="UT de la costa";
%>

<center>
<h1 style="color:#111CCB">Uso de IF en JSP</h1>

<%
    if(promedio > 90){
%>
    <h2 style="color:#8A0A39">Obtuviste una beca $20,000 USD</h2>
<%
    } else {
%>
    <h2 style="color:#E7081C">No obtuviste la beca</h2>
<%
    }

    if(universidad.equals("UT de la costa")){
%>
    <h2 style="color:#047883">Estudio en la UTC</h2>
<%
    } else {
%>
    <h2 style="color:#047883">Estudio en otra universidad</h2>
<%
    }
%>

<a href="index.jsp">Regresar</a><br><br>
</center>
