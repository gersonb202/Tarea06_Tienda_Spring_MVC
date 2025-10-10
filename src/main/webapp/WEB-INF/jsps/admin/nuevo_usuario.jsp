<%--
  Created by IntelliJ IDEA.
  User: gerson
  Date: 10/10/25
  Time: 22:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<jsp:include page="menu.jsp"></jsp:include>
Introduce los datos de nuevo usuario: <br>

<springform:form modelAttribute="nuevoUsuario" action="guardarNuevoUsuario">
    Nombre: <springform:input path="nombre"/> <br>
    Apellido: <springform:input path="apellido"/> <br>
    Edad: <springform:input path="edad"/> <br>
    Pais: <springform:input path="pais"/> <br>
    Contraseña: <springform:input path="pass"/> <br>
    Email: <springform:input path="email"/> <br>
    <input type="submit" value="Registar nuevo usuario"/>
    <input type="reset" value="Borrar"/>
</springform:form>

</body>
</html>
