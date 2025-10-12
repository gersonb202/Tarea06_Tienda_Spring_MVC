<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Usuarios - Vinoteca Baque</title>
</head>
<body class="bg-cream min-h-screen">
<jsp:include page="menu.jsp"></jsp:include>

<div class="container mx-auto px-6 py-8">
    <div class="bg-white rounded-xl shadow-lg p-6 border-2 border-vino-light">
        <h2 class="text-3xl font-bold text-vino mb-6 border-b-2 border-vino pb-3">👥 Gestión de Usuarios Registrados</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <c:forEach items="${usuarios}" var="usuario">
                <div class="bg-white border-2 border-gray-200 rounded-xl shadow-md hover:shadow-xl hover:border-vino transition-all duration-300 p-6">
                    <div class="flex items-center justify-center w-20 h-20 bg-gradient-to-br from-vino-light to-vino rounded-full mx-auto mb-4">
                        <span class="text-4xl text-white">👤</span>
                    </div>
                    <div class="space-y-2 text-sm mb-4">
                        <p class="text-center text-lg font-bold text-vino mb-3">${usuario.nombre} ${usuario.apellido}</p>
                        <p><span class="font-semibold text-vino">📧 Email:</span> ${usuario.email}</p>
                        <p><span class="font-semibold text-vino">🎂 Edad:</span> ${usuario.edad} años</p>
                        <p><span class="font-semibold text-vino">🌍 País:</span> ${usuario.pais}</p>
                    </div>
                    <div class="flex gap-2 mt-4">
                        <a href="editarUsuario?id=${usuario.id}"
                           class="flex-1 text-center bg-vino hover:bg-vino-dark text-white px-4 py-2 rounded-lg transition-colors font-medium">
                            ✏️ Editar
                        </a>
                        <a href="borrarUsuario?id=${usuario.id}"
                           onclick="return confirm('¿Estás seguro de eliminar este usuario?')"
                           class="flex-1 text-center bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-lg transition-colors font-medium">
                            🗑️ Borrar
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
