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
<div class="contenedor-principal">
    <jsp:include page="menu.jsp"></jsp:include>
    <div class="contenido">
        <h2>Gestión de Vinos</h2>
        <div class="grid-items">
            <c:forEach items="${vinos}" var="vino">
                <div class="item-card">
                    <img src="subidas/${vino.id}.jpg" alt="${vino.nombre}"/>
                    <div class="item-info">
                        <div><strong>Nombre:</strong> ${vino.nombre}</div>
                        <div><strong>Precio:</strong> ${vino.precio}€</div>
                        <div><strong>Añada:</strong> ${vino.anio}</div>
                        <div><strong>Región:</strong> ${vino.region}</div>
                        <div><strong>Tipo:</strong> ${vino.tipo}</div>
                        <div><strong>Alcohol:</strong> ${vino.alcohol}%</div>
                    </div>
                    <div class="botones">
                        <a class="btn btn-editar" href="modificarVino?id=${vino.id}">Editar</a>
                        <a class="btn btn-borrar" onclick="return confirm('¿Estás seguro?')" href="borrarVino?id=${vino.id}">Borrar</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
