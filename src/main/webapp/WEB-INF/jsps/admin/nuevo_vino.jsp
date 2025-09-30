<%--
  Created by IntelliJ IDEA.
  User: Gerson
  Date: 30/09/2025
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

Introduce los datos del nuevo vino: <br>
Vamos a usar un form de spring: <br>
<springform:form modelAttribute="vino" method="post" action="guardarNuevoVino">
    nombre: <springform:input path="nombre"/> <br>
    precio: <springform:input path="precio"/> <br>
    año: <springform:input path="anio"/> <br>
    región: <springform:input path="region"/> <br>
    tipo: <springform:input path="tipo"/> <br>
    alcohol: <springform:input path="alcohol"/> <br>
    <input type="submit" value="REGISTRAR NUEVO VINO"/>
</springform:form>

</body>
</html>
