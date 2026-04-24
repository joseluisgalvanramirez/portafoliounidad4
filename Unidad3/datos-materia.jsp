<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
 String materia = "Programacioes web orientadas a servicios";
 String profesor = "Dr. Leonardo Hernandez Peña";
 int unidades = 4;
 double calificacion = 9.99;
 String direccion = "Direccion de tecnologias de la informacion";
 float promedio = (float)10.0;
 String universidad = "Universidad Tecnologica de la costa";
 String carrera = "Desarrollo de Software Multiplataforma";
 String alumnos = "Jose Luis Galvan Ramirez";
%>

<title>Datos Materia</title>
<center>
    <h1 style="color:red">Cuatrimestre enero - abril 2026</h1>

    <h2 style="color:navy">
        <%= universidad %><br>
        <%= direccion %><br>
        <%= carrera %><br>
        <%= materia %><br>
        <%= profesor %><br>
        Alumnos: <%= alumnos %><br>
        Unidades: <%= unidades %><br>
        Calificacion: <%= calificacion %><br>
        Promedio: <%= promedio %>
    </h2>

    <br>
    <a href="index.jsp">Regresar</a> 
</center>