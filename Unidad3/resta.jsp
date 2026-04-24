<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
float n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, resta;
%>

<%
    n1 = 50.5f;
    n2 = 10.2f;
    n3 = 5.0f;
    n4 = 3.5f;
    n5 = 2.0f;
    n6 = 1.5f;
    n7 = 4.0f;
    n8 = 6.0f;
    n9 = 2.3f;
    n10 = 1.0f;

    resta = n1 - n2 - n3 - n4 - n5 - n6 - n7 - n8 - n9 - n10;

    out.println("<center><h1>Resta de FLOAT......</h1>");
%>

<h2 style="color:red">
    La resta de <%= n1 %> - <%= n2 %> - <%= n3 %> - <%= n4 %> - <%= n5 %> 
    - <%= n6 %> - <%= n7 %> - <%= n8 %> - <%= n9 %> - <%= n10 %> es: <%= resta %>
</h2>

<a href="index.jsp">Regresar</a>
</center>