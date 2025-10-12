<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Usuario - Vinoteca Baque</title>
</head>
<body class="bg-cream min-h-screen">
<jsp:include page="menu.jsp"></jsp:include>

<div class="container mx-auto px-6 py-8">
    <div class="max-w-2xl mx-auto bg-white rounded-xl shadow-lg p-8 border-2 border-vino-light">
        <div class="mb-6">
            <h2 class="text-3xl font-bold text-vino mb-2">✏️ Editar Usuario</h2>
            <p class="text-gray-600">Modifica los datos del cliente seleccionado</p>
        </div>

        <springform:form modelAttribute="usuarioEditar" action="guardarCambiosUsuario" class="space-y-5">

            <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">Nombre</label>
                    <springform:input path="nombre"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>

                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">Apellido</label>
                    <springform:input path="apellido"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">🎂 Edad</label>
                    <springform:input path="edad" type="number"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>

                <div>
                    <label class="block text-sm font-semibold text-vino mb-2">🌍 País</label>
                    <springform:input path="pais"
                                      class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
                </div>
            </div>

            <div>
                <label class="block text-sm font-semibold text-vino mb-2">📧 Email</label>
                <springform:input path="email" type="email"
                                  class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
            </div>

            <div>
                <label class="block text-sm font-semibold text-vino mb-2">🔒 Contraseña</label>
                <springform:input path="pass" type="password"
                                  class="w-full px-4 py-2 border-2 border-gray-300 rounded-lg focus:border-vino focus:outline-none transition-colors"/>
            </div>

            <springform:hidden path="id"/>

            <div class="flex gap-3 pt-4">
                <input type="submit" value="💾 Guardar Cambios"
                       class="flex-1 bg-vino hover:bg-vino-dark text-white font-semibold py-3 px-6 rounded-lg transition-colors cursor-pointer shadow-md hover:shadow-lg"/>
                <a href="listarUsuarios"
                   class="flex-1 text-center bg-gray-500 hover:bg-gray-600 text-white font-semibold py-3 px-6 rounded-lg transition-colors shadow-md hover:shadow-lg flex items-center justify-center">
                    ❌ Cancelar
                </a>
            </div>

        </springform:form>
    </div>
</div>
</body>
</html>
