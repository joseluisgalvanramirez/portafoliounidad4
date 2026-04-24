<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<center>
    <h4 style="color:#9E22C6">Uso del método GET</h4>

    <form action="nombre-leer.jsp" method="get">
        <table>
            <tr>
                <td>Nombre:</td>
                <td>
                    <input type="text" name="nom" required maxlength="30">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Enviar">
                    <input type="reset" value="Borrar">
                    <input type="button" value="Restablecer" onclick="location.href='nombre-pedir.jsp'">
                </td>
            </tr>
        </table>
    </form>

    <a href="index.jsp">Regresar</a><br><br>
</center>

