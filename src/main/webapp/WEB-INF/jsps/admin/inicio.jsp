<%--
  Created by IntelliJ IDEA.
  User: gbaque
  Date: 30/09/2025
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administración - Vinoteca Premium</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Georgia', serif;
            background: linear-gradient(135deg, #2c1810 0%, #5d4037 100%);
            color: #f5f5f5;
            min-height: 100vh;
        }

        .header {
            background: rgba(139, 69, 19, 0.9);
            padding: 1.5rem 0;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
        }

        .header h1 {
            font-size: 2.5rem;
            color: #d4af37;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-bottom: 0.5rem;
        }

        .header p {
            color: #f5f5f5;
            font-style: italic;
        }

        .container {
            max-width: 1200px;
            margin: 3rem auto;
            padding: 0 2rem;
        }

        .welcome-banner {
            background: rgba(212, 175, 55, 0.2);
            border: 2px solid #d4af37;
            border-radius: 15px;
            padding: 2rem;
            text-align: center;
            margin-bottom: 3rem;
            backdrop-filter: blur(10px);
        }

        .welcome-banner h2 {
            font-size: 2rem;
            color: #d4af37;
            margin-bottom: 1rem;
        }

        .admin-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 2rem;
            margin-top: 2rem;
        }

        .admin-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 2rem;
            text-align: center;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.2);
            transition: all 0.3s ease;
        }

        .admin-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.4);
            border-color: #d4af37;
        }

        .card-icon {
            font-size: 3rem;
            color: #d4af37;
            margin-bottom: 1rem;
            display: block;
        }

        .card-title {
            font-size: 1.3rem;
            color: #d4af37;
            margin-bottom: 1rem;
            font-weight: bold;
        }

        .card-description {
            color: #f0f0f0;
            margin-bottom: 1.5rem;
            line-height: 1.5;
        }

        .admin-button {
            display: inline-block;
            background: linear-gradient(45deg, #8b4513, #a0522d);
            color: white;
            padding: 0.8rem 1.5rem;
            text-decoration: none;
            border-radius: 25px;
            font-weight: bold;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(139, 69, 19, 0.4);
            margin: 0.5rem;
        }

        .admin-button:hover {
            background: linear-gradient(45deg, #a0522d, #cd853f);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(139, 69, 19, 0.6);
        }

        .admin-button.disabled {
            background: #666;
            cursor: not-allowed;
            opacity: 0.6;
        }

        .admin-button.disabled:hover {
            transform: none;
            box-shadow: 0 4px 15px rgba(102, 102, 102, 0.4);
        }

        .back-link {
            display: inline-block;
            margin-top: 2rem;
            color: #d4af37;
            text-decoration: none;
            font-size: 1.1rem;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #ffd700;
        }

        @media (max-width: 768px) {
            .header h1 {
                font-size: 2rem;
            }
            
            .admin-grid {
                grid-template-columns: 1fr;
            }
            
            .admin-card {
                padding: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <h1>🍷 Panel de Administración</h1>
        <p>Gestión completa de tu vinoteca</p>
    </header>

    <div class="container">
        <div class="welcome-banner">
            <h2>Bienvenido a la zona de administración</h2>
            <p>Gestiona todos los aspectos de tu vinoteca desde este panel central</p>
        </div>

        <div class="admin-grid">
            <!-- Gestión de Productos -->
            <div class="admin-card">
                <span class="card-icon">🍷</span>
                <h3 class="card-title">Gestión de Vinos</h3>
                <p class="card-description">Administra tu catálogo de vinos, añade nuevos productos y gestiona el inventario existente.</p>
                <a href="crearVino" class="admin-button">Registrar Nuevo Vino</a>
                <a href="listarVinos" class="admin-button">Gestionar Catálogo</a>
            </div>

            <!-- Gestión de Usuarios -->
            <div class="admin-card">
                <span class="card-icon">👥</span>
                <h3 class="card-title">Gestión de Usuarios</h3>
                <p class="card-description">Controla el acceso de usuarios, registra nuevos administradores y gestiona permisos.</p>
                <a href="" class="admin-button disabled">Registrar Usuario</a>
                <a href="" class="admin-button disabled">Gestionar Usuarios</a>
                <small style="color: #999; display: block; margin-top: 0.5rem;">Próximamente disponible</small>
            </div>

            <!-- Reportes y Análisis -->
            <div class="admin-card">
                <span class="card-icon">📈</span>
                <h3 class="card-title">Reportes y Estadísticas</h3>
                <p class="card-description">Visualiza el rendimiento de tu tienda, ventas y estadísticas de productos populares.</p>
                <a href="" class="admin-button disabled">Ver Reportes</a>
                <a href="" class="admin-button disabled">Estadísticas</a>
                <small style="color: #999; display: block; margin-top: 0.5rem;">Próximamente disponible</small>
            </div>

            <!-- Configuración -->
            <div class="admin-card">
                <span class="card-icon">⚙️</span>
                <h3 class="card-title">Configuración</h3>
                <p class="card-description">Ajusta la configuración general de la tienda, precios, impuestos y opciones avanzadas.</p>
                <a href="" class="admin-button disabled">Configuración General</a>
                <a href="" class="admin-button disabled">Preferencias</a>
                <small style="color: #999; display: block; margin-top: 0.5rem;">Próximamente disponible</small>
            </div>
        </div>

        <div style="text-align: center;">
            <a href="../tienda" class="back-link">← Volver a la tienda principal</a>
        </div>
    </div>
</body>
</html>