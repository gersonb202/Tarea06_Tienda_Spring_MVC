<%--
  Created by IntelliJ IDEA.
  User: gbaque
  Date: 30/09/2025
  Time: 20:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vinoteca Premium - Bienvenido</title>
</head>
<body>
<a href="admin">Acceder a administración</a>
<div>Bienvenido a mi tienda</div>

<div>
    <a id="enlace_productos" href="#">PRODUCTOS</a> <br>
    <a id="enlace_identificarme" href="#">IDENTIFICARME</a> <br>
    <a id="enlace_registrarme" href="#">REGISTRARME</a> <br>
    <a id="" onclick="alert('por hacer...')" href="#">CARRITO</a> <br>
    <a id="" onclick="alert('por hacer...')" href="#">MIS PEDIDOS</a> <br>
</div>

<div id="contenedor"></div>

    <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/mustache.js"></script>
    <script type="text/javascript">
        var plantilla_registro = ""
        var plantilla_login = ""
        var plantilla_vinos = ""

        $.get("plantillas_mustache/registrarme.html", function(valor){
            plantilla_registro = valor
        })

        $.get("plantillas_mustache/login.html", function(valor){
            plantilla_login = valor
        })

        $.get("plantillas_mustache/vinos.html", function(valor){
            plantilla_vinos = valor
        })

        function obtenerVinos(){
            $.get("vinosREST/obtener", function(valor){
                var vinos = JSON.parse(valor)
                console.log(vinos)
                var info = Mustache.render(plantilla_vinos, {xxx:"hola desde mustache", array_vinos: vinos})
                $("#contenedor").html(info)
            })
            $("#contenedor").html("cargando...");
        }

        function mostrarLogin(){
            $("#contenedor").html(plantilla_login)
        }

        function mostrarRegistro(){
            $("#contenedor").html(plantilla_registro)
            // Vamos a interceptar el envío de formulario
            $("#form_registro").submit(function(evento){
                evento.preventDefault()
                //alert("Se intenta enviar el formulario")
                // Recoger los datos del form y mandarlos a UsuariosREST
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

        obtenerVinos()

    </script>
</body>
</html>