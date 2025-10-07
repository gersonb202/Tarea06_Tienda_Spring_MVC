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
    <title>Vinoteca Premium - Bienvenido</title>
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
            display: flex;
            flex-direction: column;
        }

        .header {
            background: rgba(139, 69, 19, 0.9);
            padding: 2rem 0;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
        }

        .header h1 {
            font-size: 3rem;
            color: #d4af37;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-bottom: 0.5rem;
        }

        .header p {
            font-size: 1.2rem;
            color: #f5f5f5;
            font-style: italic;
        }

        .main-content {
            flex: 1;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 4rem 2rem;
        }

        .welcome-section {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 3rem;
            text-align: center;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.2);
            max-width: 600px;
        }

        .welcome-title {
            font-size: 2.5rem;
            color: #d4af37;
            margin-bottom: 1.5rem;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        .welcome-description {
            font-size: 1.1rem;
            line-height: 1.6;
            margin-bottom: 2.5rem;
            color: #f0f0f0;
        }

        .admin-button {
            display: inline-block;
            background: linear-gradient(45deg, #8b4513, #a0522d);
            color: white;
            padding: 1rem 2.5rem;
            text-decoration: none;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: bold;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(139, 69, 19, 0.4);
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .admin-button:hover {
            background: linear-gradient(45deg, #a0522d, #cd853f);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(139, 69, 19, 0.6);
        }

        .wine-icons {
            display: flex;
            justify-content: center;
            gap: 2rem;
            margin-top: 2rem;
            opacity: 0.7;
        }

        .wine-icon {
            font-size: 3rem;
            color: #d4af37;
        }

        .footer {
            background: rgba(44, 24, 16, 0.9);
            text-align: center;
            padding: 1.5rem;
            color: #d4af37;
        }

        @media (max-width: 768px) {
            .header h1 {
                font-size: 2rem;
            }
            
            .welcome-section {
                margin: 2rem 1rem;
                padding: 2rem;
            }
            
            .welcome-title {
                font-size: 2rem;
            }
            
            .wine-icons {
                gap: 1rem;
            }
            
            .wine-icon {
                font-size: 2rem;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <h1>🍷 Vinoteca Premium</h1>
        <p>Selección exclusiva de vinos de calidad</p>
    </header>

    <main class="main-content">
        <div class="welcome-section">
            <h2 class="welcome-title">Bienvenido a nuestra tienda</h2>
            <p class="welcome-description">
                Descubre nuestra exclusiva colección de vinos seleccionados de las mejores bodegas del mundo. 
                Cada botella cuenta una historia única de tradición, pasión y excelencia.
            </p>
            <a href="admin" class="admin-button">Acceder a Administración</a>
            
            <div class="wine-icons">
                <span class="wine-icon">🍇</span>
                <span class="wine-icon">🍷</span>
                <span class="wine-icon">🥂</span>
            </div>
        </div>
    </main>

    <footer class="footer">
        <p>&copy; 2025 Vinoteca Premium - Donde cada copa es una experiencia</p>
    </footer>
</body>
</html>