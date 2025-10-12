<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Vinos - Vinoteca Baque</title>
</head>
<body class="bg-cream min-h-screen">
<jsp:include page="menu.jsp"></jsp:include>

<div class="container mx-auto px-6 py-8">
    <div class="bg-white rounded-xl shadow-lg p-6 border-2 border-vino-light">
        <h2 class="text-3xl font-bold text-vino mb-6 border-b-2 border-vino pb-3">📦 Gestión de Vinos</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
            <c:forEach items="${vinos}" var="vino">
                <div class="bg-white border-2 border-gray-200 rounded-xl shadow-md hover:shadow-xl hover:border-vino transition-all duration-300">
                    <div class="h-48 bg-gradient-to-br from-vino-light to-vino flex items-center justify-center rounded-t-xl">
                        <img src="subidas/${vino.id}.jpg" alt="${vino.nombre}" class="h-40 object-contain"/>
                    </div>
                    <div class="p-5">
                        <h3 class="text-lg font-bold text-vino mb-3">${vino.nombre}</h3>
                        <div class="space-y-1 text-sm text-gray-700 mb-4">
                            <p><span class="font-semibold text-vino">💰 Precio:</span> ${vino.precio}€</p>
                            <p><span class="font-semibold text-vino">📅 Añada:</span> ${vino.anio}</p>
                            <p><span class="font-semibold text-vino">🗺️ Región:</span> ${vino.region}</p>
                            <p><span class="font-semibold text-vino">🍷 Tipo:</span> ${vino.tipo}</p>
                            <p><span class="font-semibold text-vino">🌡️ Alcohol:</span> ${vino.alcohol}%</p>
                        </div>
                        <div class="flex gap-2 mt-4">
                            <a href="modificarVino?id=${vino.id}"
                               class="flex-1 text-center bg-vino hover:bg-vino-dark text-white px-4 py-2 rounded-lg transition-colors font-medium">
                                ✏️ Editar
                            </a>
                            <a href="borrarVino?id=${vino.id}"
                               onclick="return confirm('¿Estás seguro de eliminar este vino?')"
                               class="flex-1 text-center bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-lg transition-colors font-medium">
                                🗑️ Borrar
                            </a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
</body>
</html>
