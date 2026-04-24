<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    double a , b, c;
    float m, n, l;
%>

<%
    a = 12.345;
    b = 3.1415;
    c = a * b;
    m = 2.7136f;
    n = (float)9.876;
    l = m * n;

%>
<center>
   <h2 style="color:#DAOF74">Multiplicaccion de double y float</h2>
   <h3 style="color:#1E9BFF"> double: a = <%= a %> * b = <%= b %> = <%= c %></h3> 
    <h3 style="color:purple"> float: m = <%= m %> * n = <%= n %> = <%= l %></h3>
</center>
