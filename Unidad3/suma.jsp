<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
int x, y, z, suma;
%>

<%
   x = 30;
    y = 23;
    z = 3;
    suma = x + y + z;

out.println("<center><h1>Suma de INT......</h1>");
%>
   <h2 style="color:orange">
        La suma de <%= x %> + <%= y %> + <%= z %> es: <%= suma %>
    </h2>
    <a href="index.jsp">Regresar</a>
   </center>
