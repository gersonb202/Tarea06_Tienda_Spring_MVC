<%--
  Created by IntelliJ IDEA.
  User: gerson
  Date: 10/10/25
  Time: 22:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<div>
    <jsp:include page="menu.jsp"></jsp:include>
    <div>
        <h2>Gestión de Usuarios Registrados</h2>
        <div>
            <c:forEach items="${usuarios}" var="usuario">
                <div>
                    <div>
                        <div><strong>Nombre:</strong> ${usuario.nombre}</div>
                        <div><strong>Apellido:</strong> ${usuario.apellido}</div>
                        <div><strong>Edad:</strong> ${usuario.edad}</div>
                        <div><strong>País:</strong> ${usuario.pais}</div>
                        <div><strong>Email:</strong> ${usuario.email}</div>
                    </div>
                    <div>
                        <a class="btn btn-editar" href="editarUsuario?id=${usuario.id}">Editar</a>
                        <a class="btn btn-borrar" onclick="return confirm('¿Estás seguro?')" href="borrarUsuario?id=${usuario.id}">Borrar</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

</body>
</html>
