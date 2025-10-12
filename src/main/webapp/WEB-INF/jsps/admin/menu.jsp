<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://cdn.tailwindcss.com"></script>
<script>
    tailwind.config = {
        theme: {
            extend: {
                colors: {
                    'vino': '#722F37',
                    'vino-dark': '#4A1F25',
                    'vino-light': '#A84452',
                    'cream': '#F5F1E8'
                }
            }
        }
    }
</script>

<div class="bg-vino-dark text-white shadow-lg">
    <div class="container mx-auto px-6 py-4">
        <h1 class="text-2xl font-bold mb-4 border-b border-vino-light pb-2">🍷 Zona de Administración - Vinoteca Premium</h1>
        <nav class="flex flex-wrap gap-3">
            <a href="crearVino" class="bg-vino hover:bg-vino-light text-white px-4 py-2 rounded-lg transition-colors font-medium">
                ➕ Nuevo Producto
            </a>
            <a href="listarVinos" class="bg-vino hover:bg-vino-light text-white px-4 py-2 rounded-lg transition-colors font-medium">
                📦 Gestionar Productos
            </a>
            <a href="crearUsuario" class="bg-vino hover:bg-vino-light text-white px-4 py-2 rounded-lg transition-colors font-medium">
                👤 Nuevo Usuario
            </a>
            <a href="listarUsuarios" class="bg-vino hover:bg-vino-light text-white px-4 py-2 rounded-lg transition-colors font-medium">
                👥 Gestionar Usuarios
            </a>
            <a href="" class="bg-vino hover:bg-vino-light text-white px-4 py-2 rounded-lg transition-colors font-medium">
                🏷️ Categorías
            </a>
            <a href="inicio" class="bg-vino hover:bg-vino-light text-white px-4 py-2 rounded-lg transition-colors font-medium">
                Inicio
            </a>
        </nav>
    </div>
</div>
