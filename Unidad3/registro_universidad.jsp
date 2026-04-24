<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<body style="background: linear-gradient(to right, #4facfe, #00f2fe); font-family: Arial;">

<center>

    <div style="background:white; padding:30px; border-radius:15px; width:320px; box-shadow:0px 0px 15px gray; margin-top:100px;">
        
        <h3 style="color:#555;">UNIVERSIDAD TECNOLOGICA DE LA COSTA</h3>

        <h2 style="color:#0B5394">Registro de Aspirante</h2>

        <form action="registro_validacion.jsp" method="post">

            <h4 style="color:#38761D">Ingresa tu edad:</h4>

            <input type="number" name="edad" required min="1" max="100"
                   style="padding:8px; width:80%; border-radius:5px; border:1px solid gray;"><br><br>

            <input type="submit" value="Validar Registro" 
                   style="background-color:#0B5394; color:white; padding:10px; border:none; border-radius:5px; cursor:pointer;">

        </form>

    </div>

</center>

</body>