<%--
  Created by IntelliJ IDEA.
  User: Gerson
  Date: 30/09/2025
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vino Registrado - Vinoteca Premium</title>
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
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }

        .success-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            padding: 3rem;
            text-align: center;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.3);
            border: 2px solid #d4af37;
            max-width: 600px;
            width: 100%;
            position: relative;
            overflow: hidden;
        }

        .success-card::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: linear-gradient(45deg, transparent, rgba(212, 175, 55, 0.1), transparent);
            animation: shine 3s infinite;
        }

        @keyframes shine {
            0% { transform: translateX(-100%) translateY(-100%) rotate(45deg); }
            50% { transform: translateX(100%) translateY(100%) rotate(45deg); }
            100% { transform: translateX(-100%) translateY(-100%) rotate(45deg); }
        }

        .success-icon {
            font-size: 5rem;
            color: #d4af37;
            margin-bottom: 1.5rem;
            animation: bounce 1s ease-in-out;
        }

        @keyframes bounce {
            0%, 20%, 50%, 80%, 100% {
                transform: translateY(0);
            }
            40% {
                transform: translateY(-20px);
            }
            60% {
                transform: translateY(-10px);
            }
        }

        .success-title {
            font-size: 2.5rem;
            color: #d4af37;
            margin-bottom: 1rem;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            position: relative;
            z-index: 1;
        }

        .success-message {
            font-size: 1.3rem;
            color: #f0f0f0;
            margin-bottom: 2rem;
            line-height: 1.6;
            position: relative;
            z-index: 1;
        }

        .celebration-icons {
            display: flex;
            justify-content: center;
            gap: 1rem;
            margin: 2rem 0;
            font-size: 2rem;
            position: relative;
            z-index: 1;
        }

        .celebration-icon {
            animation: float 2s ease-in-out infinite;
        }

        .celebration-icon:nth-child(2) {
            animation-delay: 0.5s;
        }

        .celebration-icon:nth-child(3) {
            animation-delay: 1s;
        }

        @keyframes float {
            0%, 100% {
                transform: translateY(0px);
            }
            50% {
                transform: translateY(-10px);
            }
        }

        .action-buttons {
            display: flex;
            gap: 1rem;
            justify-content: center;
            flex-wrap: wrap;
            margin-top: 2rem;
            position: relative;
            z-index: 1;
        }

        .action-button {
            display: inline-block;
            background: linear-gradient(45deg, #8b4513, #a0522d);
            color: white;
            padding: 1rem 2rem;
            text-decoration: none;
            border-radius: 50px;
            font-size: 1rem;
            font-weight: bold;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(139, 69, 19, 0.4);
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .action-button:hover {
            background: linear-gradient(45deg, #a0522d, #cd853f);
            transform: translateY(-2px);
            box-shadow: 0 6px 20px rgba(139, 69, 19, 0.6);
        }

        .action-button.secondary {
            background: linear-gradient(45deg, #2c5530, #3e7b3e);
            box-shadow: 0 4px 15px rgba(44, 85, 48, 0.4);
        }

        .action-button.secondary:hover {
            background: linear-gradient(45deg, #3e7b3e, #4caf50);
            box-shadow: 0 6px 20px rgba(44, 85, 48, 0.6);
        }

        .brand-footer {
            margin-top: 2rem;
            color: #d4af37;
            font-style: italic;
            opacity: 0.8;
            position: relative;
            z-index: 1;
        }

        @media (max-width: 768px) {
            .success-card {
                padding: 2rem;
                margin: 1rem;
            }
            
            .success-title {
                font-size: 2rem;
            }
            
            .success-message {
                font-size: 1.1rem;
            }
            
            .action-buttons {
                flex-direction: column;
                align-items: center;
            }
            
            .action-button {
                width: 100%;
                max-width: 250px;
            }
        }
    </style>
</head>
<body>
    <div class="success-card">
        <div class="success-icon">✓</div>
        <h1 class="success-title">¡Éxito!</h1>
        <p class="success-message">
            El vino ha sido registrado correctamente en tu catálogo.<br>
            Ya está disponible para su gestión y venta.
        </p>
        
        <div class="celebration-icons">
            <span class="celebration-icon">🍷</span>
            <span class="celebration-icon">🎉</span>
            <span class="celebration-icon">🍇</span>
        </div>
        
        <div class="action-buttons">
            <a href="../admin" class="action-button">Panel de Administración</a>
            <a href="crearVino" class="action-button secondary">Añadir Otro Vino</a>
        </div>
        
        <div class="brand-footer">
            Vinoteca Premium - Calidad en cada registro
        </div>
    </div>
</body>
</html>