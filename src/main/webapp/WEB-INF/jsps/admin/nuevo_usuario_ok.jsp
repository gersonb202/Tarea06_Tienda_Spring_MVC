<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Usuario Registrado - Vinoteca Baque</title>
</head>
<body class="bg-cream min-h-screen">
<jsp:include page="menu.jsp"></jsp:include>

<div class="container mx-auto px-6 py-8">
    <div class="max-w-md mx-auto bg-white rounded-xl shadow-lg p-8 border-2 border-vino-light text-center">
        <div class="mb-6">
            <div class="w-20 h-20 bg-green-500 rounded-full flex items-center justify-center mx-auto mb-4">
                <svg class="w-12 h-12 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="3" d="M5 13l4 4L19 7"/>
                </svg>
            </div>
            <h2 class="text-3xl font-bold text-vino mb-3">¡Registro Exitoso! 🎉</h2>
            <p class="text-gray-600 text-lg mb-6">El usuario se ha registrado correctamente en el sistema.</p>
        </div>

        <div class="space-y-3">
            <a href="listarUsuarios"
               class="block w-full bg-vino hover:bg-vino-dark text-white font-semibold py-3 px-6 rounded-lg transition-colors shadow-md hover:shadow-lg">
                👥 Ver Todos los Usuarios
            </a>
            <a href="crearUsuario"
               class="block w-full bg-vino-light hover:bg-vino text-white font-semibold py-3 px-6 rounded-lg transition-colors shadow-md hover:shadow-lg">
                ➕ Registrar Otro Usuario
            </a>
            <a href="inicio"
               class="block w-full bg-gray-500 hover:bg-gray-600 text-white font-semibold py-3 px-6 rounded-lg transition-colors shadow-md hover:shadow-lg">
                🏠 Volver al Inicio
            </a>
        </div>
    </div>
</div>
</body>
</html>
