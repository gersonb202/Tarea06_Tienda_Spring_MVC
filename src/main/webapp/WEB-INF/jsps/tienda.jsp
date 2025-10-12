<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vinoteca Baque - Bienvenido</title>
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
</head>
<body class="bg-cream min-h-screen">
<!-- Header -->
<header class="bg-vino text-white shadow-lg">
    <div class="container mx-auto px-4 py-6">
        <div class="flex justify-between items-center">
            <div>
                <h1 class="text-3xl font-bold">🍷 Vinoteca Baque</h1>
                <p class="text-vino-light text-sm mt-1">Selección premium de vinos</p>
            </div>
            <div class="text-right">
                <div id="login_usuario" class="text-sm bg-vino-dark px-4 py-2 rounded-full">
                    Usuario no identificado
                </div>
                <a href="admin" class="text-md text-sm hover:text-vino-light mt-3 inline-block bg-vino-dark px-4 py-2 rounded-full">Administración</a>
            </div>
        </div>
    </div>
</header>

<!-- Navigation -->
<nav class="bg-white shadow-md sticky top-0 z-50">
    <div class="container mx-auto px-4">
        <div class="flex justify-center space-x-6 py-4">
            <a id="enlace_productos" href="#" class="flex items-center px-6 py-2 rounded-lg bg-vino text-white hover:bg-vino-dark transition-colors">
                <span>🍇 Productos</span>
            </a>
            <a id="enlace_identificarme" href="#" class="flex items-center px-6 py-2 rounded-lg border-2 border-vino text-vino hover:bg-vino hover:text-white transition-colors">
                <span>👤 Identificarme</span>
            </a>
            <a id="enlace_registrarme" href="#" class="flex items-center px-6 py-2 rounded-lg border-2 border-vino text-vino hover:bg-vino hover:text-white transition-colors">
                <span>📝 Registrarme</span>
            </a>
            <a onclick="alert('por hacer...')" href="#" class="flex items-center px-6 py-2 rounded-lg border-2 border-vino text-vino hover:bg-vino hover:text-white transition-colors">
                <span>🛒 Carrito</span>
            </a>
            <a onclick="alert('por hacer...')" href="#" class="flex items-center px-6 py-2 rounded-lg border-2 border-vino text-vino hover:bg-vino hover:text-white transition-colors">
                <span>📦 Mis Pedidos</span>
            </a>
        </div>
    </div>
</nav>

<main class="container mx-auto px-4 py-8">
    <div id="contenedor" class="min-h-96"></div>
</main>

<footer class="bg-vino-dark text-white mt-12 py-6">
    <div class="container mx-auto px-4 text-center">
        <p class="text-sm">© 2025 Vinoteca Baque - Todos los derechos reservados</p>
    </div>
</footer>

<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/mustache.js"></script>
<script type="text/javascript">
    var nombre_login = ""
    var plantilla_registro = ""
    var plantilla_login = ""
    var plantilla_vinos = ""
    var plantillas_cargadas = 0

    function verificar_plantillas_cargadas(){
        plantillas_cargadas++
        if(plantillas_cargadas === 3){
            // Todas las plantillas están listas, ahora sí cargar vinos
            obtenerVinos()
        }
    }

    $.get("plantillas_mustache/registrarme.html", function(valor){
        plantilla_registro = valor
        verificar_plantillas_cargadas()
    })

    $.get("plantillas_mustache/login.html", function(valor){
        plantilla_login = valor
        verificar_plantillas_cargadas()
    })

    $.get("plantillas_mustache/vinos.html", function(valor){
        plantilla_vinos = valor
        verificar_plantillas_cargadas()
    })

    function comprar_producto(){
        if(nombre_login == ""){
            alert("Tienes que identificarte para comprar productos")
        }else{
            var id_producto = $(this).attr("id-producto")
            alert("Añadir producto de id: " + id_producto + " al carrito")
        }
    }

    function obtenerVinos(){
        $("#contenedor").html('<div class="text-center py-12"><div class="inline-block animate-spin rounded-full h-12 w-12 border-4 border-vino border-t-transparent"></div><p class="mt-4 text-vino">Cargando vinos...</p></div>');
        $.get("vinosREST/obtener", function(valor){
            var vinos = JSON.parse(valor)
            var info = Mustache.render(plantilla_vinos, {array_vinos: vinos})
            $("#contenedor").html(info)
            $(".enlace_comprar_producto").click(comprar_producto)
        })
    }

    function mostrarLogin(){
        $("#contenedor").html(plantilla_login)
        $("#form_login").submit(function(evento){
            evento.preventDefault()
            var email = $("#email").val()
            var pass = $("#pass").val()
            $.post("usuariosREST/login", {
                email: email,
                pass: pass
            }).done(function (res){
                var parte1 = res.split(",")[0]
                var parte2 = res.split(",")[1]
                if(parte1 == "ok"){
                    alert("Bienvenido " + parte2 + " ya puedes comprar")
                    nombre_login = parte2
                    $("#login_usuario").html("👋 Hola " + parte2)
                }else{
                    alert(res)
                }
            })
        })
    }

    function mostrarRegistro(){
        $("#contenedor").html(plantilla_registro)
        $("#form_registro").submit(function(evento){
            evento.preventDefault()
            var nombre = $("#nombre").val()
            var apellido = $("#apellido").val()
            var edad = $("#edad").val()
            var pais = $("#pais").val()
            var email = $("#email").val()
            var pass = $("#pass").val()
            $.post("usuariosREST/registrar", {
                nombre: nombre,
                apellido: apellido,
                edad: edad,
                pais: pais,
                email: email,
                pass: pass
            }).done(function(res){
                alert(res)
            })
        })
    }

    $("#enlace_productos").click(obtenerVinos)
    $("#enlace_identificarme").click(mostrarLogin)
    $("#enlace_registrarme").click(mostrarRegistro)

    // Se elimina obtenerVinos()
</script>
</body>
</html>
