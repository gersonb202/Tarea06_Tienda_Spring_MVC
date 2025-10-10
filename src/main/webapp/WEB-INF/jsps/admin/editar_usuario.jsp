<%--
  Created by IntelliJ IDEA.
  User: gerson
  Date: 10/10/25
  Time: 21:57
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
Editar los datos del usuario: <br>
<springform:form modelAttribute="usuarioEditar" action="guardarCambiosUsuario">
    Nombre: <springform:input path="nombre"/> <br>
    Apellido: <springform:input path="apellido"/> <br>
    Edad: <springform:input path="edad"/> <br>
    Pais: <springform:input path="pais"/> <br>
    Contraseña: <springform:input path="pass"/> <br>
    Email: <springform:input path="email"/> <br>
    <springform:hidden path="id"/>
    <input type="submit" value="Guardar Cambios"/>
    <input type="reset" value="Borrar"/>
</springform:form>
</body>
</html>
