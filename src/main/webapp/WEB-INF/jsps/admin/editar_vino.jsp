<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Vino - Vinoteca Baque</title>
</head>
<body class="bg-cream min-h-screen">
<jsp:include page="menu.jsp"></jsp:include>

<div class="container mx-auto px-6 py-8">
    <div class="max-w-2xl mx-auto bg-white rounded-xl shadow-lg p-8 border-2 border-vino-light">
        <div class="mb-6">
            <h2 class="text-3xl font-bold text-vino mb-2">✏️ Editar Producto</h2>
            <p class="text-gray-600">Modifica los datos del vino seleccionado</p>
        </div>

        <springform:form modelAttribute="vinoEditar" method="post" action="guardarCambiosVino" class="space-y-5">

            <div>
                <label class="block text-sm font-semibold text-vino mb-2">Nombre del Vino</label>
                <springform:input path="nombre"
                                  class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">💰 Precio (€)</label>
                    <springform:input path="precio" type="number" step="0.01"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>

                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">📅 Añada</label>
                    <springform:input path="anio" type="number"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">🗺️ Región</label>
                    <springform:input path="region"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>

                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">🍷 Tipo de Vino</label>
                    <springform:input path="tipo"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>
            </div>

            <div>
                <label class="block text-sm font-semibold text-vino mb-2">🌡️ Grado Alcohólico (%)</label>
                <springform:input path="alcohol" type="number" step="0.1"
                                  class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
            </div>

            <springform:hidden path="id"/>

            <div class="flex gap-3 pt-4">
                <input type="submit" value="💾 Guardar Cambios"
                       class="flex-1 bg-vino hover:bg-vino-dark text-white font-semibold py-3 px-6 rounded-lg transition-colors cursor-pointer shadow-md hover:shadow-lg"/>
                <a href="listarVinos"
                   class="flex-1 text-center bg-gray-500 hover:bg-gray-600 text-white font-semibold py-3 px-6 rounded-lg transition-colors shadow-md hover:shadow-lg">
                    ❌ Cancelar
                </a>
            </div>

        </springform:form>
    </div>
</div>
</body>
</html>
