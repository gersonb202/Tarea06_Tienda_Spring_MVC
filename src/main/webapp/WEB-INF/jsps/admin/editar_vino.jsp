<%--
  Created by IntelliJ IDEA.
  User: gbaque
  Date: 10/10/2025
  Time: 16:13
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
    <div>
        Editar productos:
    </div>

    <springform:form modelAttribute="vinoEditar" method="post" action="guardarCambiosVino">
        Nombre: <springform:input path="nombre"/> <br>
        Precio: <springform:input path="precio"/> <br>
        Añada: <springform:input path="anio"/> <br>
        Region: <springform:input path="region"/> <br>
        Tipo: <springform:input path="tipo"/> <br>
        Alcohol: <springform:input path="alcohol"/> <br>
        <springform:hidden path="id"/>
        <input type="submit" value="Guardar Cambios"/>
    </springform:form>

</body>
</html>
