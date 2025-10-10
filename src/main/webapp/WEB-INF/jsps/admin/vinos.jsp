<%--
  Created by IntelliJ IDEA.
  User: Gerson
  Date: 30/09/2025
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

Gestión de los vinos de la tienda: <br>
<c:forEach items="vinos" var="vino">
    <div style="margin: 10px">
        <img src="subidas/${vino.id}.jpg" height="80px"/> <br>
        Nombre: ${vino.nombre} <br>
        Precio: ${vino.precio} <br>
        Añada: ${vino.anio} <br>
        Región: ${vino.region} <br>
        Tipo: ${vino.tipo} <br>
        Alcohol: ${vino.alcohol} <br>
        <a onclick="return confirm('¿Estás seguro?')" href="borrarVino?id=${vino.id}">Borrar</a>
        <a href="modificarVino?id=${vino.id}">Editar</a>
    </div>
</c:forEach>

</body>
</html>
