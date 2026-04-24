<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body style="background: linear-gradient(to right, #43e97b, #38f9d7); font-family: Arial;">

<center>

    <div style="background:white; padding:30px; border-radius:15px; width:360px; box-shadow:0px 0px 15px gray; margin-top:100px;">

        <h3 style="color:#555;">UNIVERSIDAD TECNOLOGICA DE LA COSTA</h3>

        <h2 style="color:#990000">Resultado de Validación</h2>

<%
    String edadStr = request.getParameter("edad");

    if (edadStr != null && !edadStr.isEmpty()) {
        try {
            int edad = Integer.parseInt(edadStr);

            if (edad <= 0) {
%>
                <h3 style="color:#FF0000">⚠ Edad no válida</h3>
<%
            } else if (edad >= 18) {
%>
                <h3 style="color:#008000">✅ Eres apto para registrarte</h3>
<%
            } else {
%>
                <h3 style="color:#FF0000">❌ No eres apto (menor de edad)</h3>
<%
            }

        } catch (NumberFormatException e) {
%>
            <h3 style="color:#FF0000">⚠ Ingresa un número válido</h3>
<%
        }
    } else {
%>
        <h3 style="color:#FF0000">⚠ No se recibieron datos</h3>
<%
    }
%>

        <br><br>

        <a href="registro_universidad.jsp" 
           style="text-decoration:none; background:#0B5394; color:white; padding:10px 15px; border-radius:5px;">
           Regresar
        </a>

    </div>

</center>

</body>