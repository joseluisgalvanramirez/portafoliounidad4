<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Página principal que solicita datos al usuario -->

<body style="background: linear-gradient(to right, #1e3c72, #2a5298); font-family: Arial;">

<center>

<!-- Contenedor principal -->
<div style="background:white; padding:35px; border-radius:20px; width:420px; box-shadow:0px 10px 25px rgba(0,0,0,0.3); margin-top:40px;">

   
    <h2 style="color:#1e3c72;">Examen Unidad 3</h2>

    <!-- Formulario que envía datos al archivo resultado -->
    <form action="examen-u3_resultado.jsp" method="post">

   <!-- Nombre -->
<h4>Nombre</h4>
<input type="text" name="nombre" required
       pattern="[A-Za-zÁÉÍÓÚáéíóúñÑ ]+"
       title="Solo se permiten letras"
       style="padding:8px; width:80%; border-radius:8px;"><br>

<!-- Apellido Paterno -->
<h4>Apellido Paterno</h4>
<input type="text" name="paterno" required
       pattern="[A-Za-zÁÉÍÓÚáéíóúñÑ ]+"
       title="Solo se permiten letras"
       style="padding:8px; width:80%; border-radius:8px;"><br>

<!-- Apellido Materno -->
<h4>Apellido Materno</h4>
<input type="text" name="materno" required
       pattern="[A-Za-zÁÉÍÓÚáéíóúñÑ ]+"
       title="Solo se permiten letras"
       style="padding:8px; width:80%; border-radius:8px;"><br>

        <!-- Entrada de 10 números -->
        <h4>Ingresa 10 números (1 - 100)</h4>

        <%
            // Ciclo para generar 10 inputs dinámicamente
            for(int i=1; i<=10; i++){
        %>
            <input type="number" name="num<%=i%>" min="1" max="100" required><br>
        <%
            }
        %>

        <br>

        <!-- Botón de envío -->
        <input type="submit" value="Procesar"
               style="background:#1e3c72; color:white; padding:10px; border:none; border-radius:5px;">

    </form>

</div>
   <a href="index.jsp">Regresar</a>

</center>

</body>