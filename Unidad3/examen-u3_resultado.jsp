<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!-- Página que procesa y muestra resultados -->

<body style="background: linear-gradient(to right, #11998e, #38ef7d); font-family: Arial;">

<center>

<div style="background:white; padding:35px; border-radius:20px; width:450px; box-shadow:0px 10px 25px rgba(0,0,0,0.3); margin-top:40px;">

  
    <h2 style="color:#006400;">Resultados</h2>

<%
    // Obtener datos del formulario
    String nombre = request.getParameter("nombre");
    String paterno = request.getParameter("paterno");
    String materno = request.getParameter("materno");
%>

    <!-- Mostrar nombre completo -->
    <h4>Alumno: <%= nombre %> <%= paterno %> <%= materno %></h4>

<%
    // Validar si los apellidos son iguales
    if(paterno.equalsIgnoreCase(materno)){
%>
        <h4 style="color:red;">Los apellidos son iguales</h4>
<%
    } else {
%>
        <h4 style="color:green;">Los apellidos son diferentes</h4>
<%
    }

    // Variables para mayor y menor
    int mayor = Integer.MIN_VALUE;
    int menor = Integer.MAX_VALUE;

    // Arreglo para almacenar números
    int[] numeros = new int[10];

    // Arreglo contador para saber cuántas veces se repite cada número
    int[] contador = new int[101]; // índices del 1 al 100

    // Leer números ingresados
    for(int i=0; i<10; i++){
        numeros[i] = Integer.parseInt(request.getParameter("num"+(i+1)));

        // Determinar mayor y menor
        if(numeros[i] > mayor) mayor = numeros[i];
        if(numeros[i] < menor) menor = numeros[i];

        // Contar repeticiones
        contador[numeros[i]]++;
    }
%>

    <!-- Mostrar resultados -->
    <h4>Mayor: <%= mayor %></h4>
    <h4>Menor: <%= menor %></h4>

<%
    boolean hayRepetidos = false;

    // Revisar qué números se repiten
    for(int i=1; i<=100; i++){
        if(contador[i] > 1){
            hayRepetidos = true;
%>
            <h4 style="color:red;">
                Número <%= i %> = <%= contador[i] %> veces
            </h4>
<%
        }
    }

    // Si no hay repetidos
    if(!hayRepetidos){
%>
        <h4 style="color:green;">No hay números repetidos</h4>
<%
    }
%>

<br>

<!-- Botón regresar -->
<a href="examen-u3.jsp"
   style="background:#1e3c72; color:white; padding:10px; border-radius:5px; text-decoration:none;">
Regresar
</a>

</div>

</center>

</body>