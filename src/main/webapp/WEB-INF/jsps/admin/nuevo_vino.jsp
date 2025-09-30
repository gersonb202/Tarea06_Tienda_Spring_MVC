<%--
  Created by IntelliJ IDEA.
  User: Gerson
  Date: 30/09/2025
  Time: 20:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springform" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar Nuevo Vino - Vinoteca Premium</title>
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
            padding: 2rem 0;
        }

        .header {
            background: rgba(139, 69, 19, 0.9);
            padding: 1.5rem 0;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.3);
            margin-bottom: 2rem;
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
            max-width: 800px;
            margin: 0 auto;
            padding: 0 2rem;
        }

        .form-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 3rem;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .form-title {
            text-align: center;
            color: #d4af37;
            font-size: 2rem;
            margin-bottom: 2rem;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
        }

        .form-subtitle {
            text-align: center;
            color: #f0f0f0;
            margin-bottom: 2.5rem;
            font-style: italic;
        }

        .form-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
            margin-bottom: 2rem;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        .form-group.full-width {
            grid-column: 1 / -1;
        }

        label {
            color: #d4af37;
            font-weight: bold;
            margin-bottom: 0.5rem;
            font-size: 1rem;
        }

        input[type="text"], input[type="number"] {
            background: rgba(255, 255, 255, 0.1);
            border: 2px solid rgba(212, 175, 55, 0.3);
            border-radius: 10px;
            padding: 0.8rem 1rem;
            color: #f5f5f5;
            font-size: 1rem;
            transition: all 0.3s ease;
            backdrop-filter: blur(5px);
        }

        input[type="text"]:focus, input[type="number"]:focus {
            outline: none;
            border-color: #d4af37;
            box-shadow: 0 0 15px rgba(212, 175, 55, 0.3);
            background: rgba(255, 255, 255, 0.15);
        }

        input[type="text"]::placeholder, input[type="number"]::placeholder {
            color: rgba(245, 245, 245, 0.6);
        }

        .submit-container {
            text-align: center;
            margin-top: 2.5rem;
        }

        .submit-button {
            background: linear-gradient(45deg, #8b4513, #a0522d);
            color: white;
            padding: 1rem 3rem;
            border: none;
            border-radius: 50px;
            font-size: 1.1rem;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(139, 69, 19, 0.4);
            text-transform: uppercase;
            letter-spacing: 1px;
            font-family: 'Georgia', serif;
        }

        .submit-button:hover {
            background: linear-gradient(45deg, #a0522d, #cd853f);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(139, 69, 19, 0.6);
        }

        .back-link {
            display: inline-block;
            margin-top: 2rem;
            color: #d4af37;
            text-decoration: none;
            font-size: 1rem;
            transition: color 0.3s ease;
        }

        .back-link:hover {
            color: #ffd700;
        }

        .wine-icon {
            text-align: center;
            font-size: 4rem;
            color: #d4af37;
            margin-bottom: 1rem;
            opacity: 0.8;
        }

        @media (max-width: 768px) {
            .header h1 {
                font-size: 2rem;
            }
            
            .form-card {
                padding: 2rem;
                margin: 0 1rem;
            }
            
            .form-grid {
                grid-template-columns: 1fr;
            }
            
            .form-title {
                font-size: 1.5rem;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <h1>🍷 Registrar Nuevo Vino</h1>
        <p>Añade un nuevo producto a tu catálogo</p>
    </header>

    <div class="container">
        <div class="form-card">
            <div class="wine-icon">🍷</div>
            <h2 class="form-title">Datos del Nuevo Vino</h2>
            <p class="form-subtitle">Completa todos los campos para registrar un nuevo vino en tu catálogo</p>
            
            <springform:form modelAttribute="vino" method="post" action="guardarNuevoVino">
                <div class="form-grid">
                    <div class="form-group">
                        <label for="nombre">Nombre del Vino:</label>
                        <springform:input path="nombre" id="nombre" placeholder="Ej: Reserva Cabernet Sauvignon" />
                    </div>
                    
                    <div class="form-group">
                        <label for="precio">Precio (€):</label>
                        <springform:input path="precio" id="precio" type="number" step="0.01" min="0" placeholder="Ej: 25.99" />
                    </div>
                    
                    <div class="form-group">
                        <label for="anio">Año de Cosecha:</label>
                        <springform:input path="anio" id="anio" type="number" min="1900" max="2025" placeholder="Ej: 2020" />
                    </div>
                    
                    <div class="form-group">
                        <label for="region">Región:</label>
                        <springform:input path="region" id="region" placeholder="Ej: Rioja, Burdeos, Toscana" />
                    </div>
                    
                    <div class="form-group">
                        <label for="tipo">Tipo de Vino:</label>
                        <springform:input path="tipo" id="tipo" placeholder="Ej: Tinto, Blanco, Rosado, Espumoso" />
                    </div>
                    
                    <div class="form-group">
                        <label for="alcohol">Graduación Alcohólica (%):</label>
                        <springform:input path="alcohol" id="alcohol" type="number" step="0.1" min="0" max="50" placeholder="Ej: 13.5" />
                    </div>
                </div>
                
                <div class="submit-container">
                    <input type="submit" value="Registrar Nuevo Vino" class="submit-button"/>
                </div>
            </springform:form>
            
            <div style="text-align: center;">
                <a href="../admin" class="back-link">← Volver al panel de administración</a>
            </div>
        </div>
    </div>
</body>
</html>