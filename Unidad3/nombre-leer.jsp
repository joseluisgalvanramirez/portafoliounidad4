<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String name = request.getParameter("nom");
%>

<center>
    <h2 style="color:#0E7DA1">Tu nombre es:</h2>

    <h3 style="color:#3b7309">
        <%= (name != null && !name.isEmpty()) ? name : "No ingresaste nombre" %>
    </h3>

    <a href="nombre-pedir.jsp">Regresar</a><br><br>
</center>