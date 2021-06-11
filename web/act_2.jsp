<%-- 
    Document   : act_2
    Created on : 10/06/2021, 09:55:13 AM
    Author     : river
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session = "true"%>

<%

 
 //String nombre = (String)session.getAttribute("Usuario");
 //session2.setAttribute("Usuario", usuario);
 String nombreUsuario = (String)session.getAttribute("Usuario");
 //Usuario e  = new Usuario();
 //sessionUSU.setAttribute("Usuario", e.getNombre_usu());
 
 



%>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <title>Actividad 2</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ahorcado</title>
    <link rel="stylesheet" href="css/estilos2.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style_usu.css">
    <style>
        body {
            width: 960px;
            margin: 0 auto;
        }

        h1 {
            text-align: center;
        }

        #pantalla {
            border: groove 8px gold;
            background: lightgreen;
        }

        #boton {
            background-color: red;
            color: white;
            font-size: 20px;
            text-align: center;
            font-weight: bolder;
            padding: 3px;
            border: solid 2px black;
        }

        #boton:hover {
            /* Estilo que se activa al pasar el puntero sobre el boton */
            background-color: lightcoral;
            font-size: 22px;
            border: groove 4px red;
        }
    </style>
</head>

<body>
    <header id="main-header">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">ON HEALT<span class="logo-dec">LINE</span></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li class="active"><a href="MenuUsu.jsp">Inicio</a></li>
                        <li class=""><a href="leccion1.jsp">Leccion 1</a></li>
                        <li class=""><a href="leccion2.jsp">Leccion 2</a></li>
                        <li class=""><a href="leccion3.jsp">Leccion 3</a></li>
                        <li class=""><a href="leccion4.jsp">Leccion 4</a></li>
                        <li class=""><a href="imc.jsp">IMC</a></li>
                        <li class=""><a href="puntajes.jsp">Puntajes</a></li>
                        <li class=""><a href="">Graficas</a></li>
                        <li class=""><a href="perfil.jsp">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden"
                                    name="usuario">
                                <%=nombreUsuario%>
                            </a></li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <div class="container">
        <h1>-El juego del ahorcado-</h1>
        <canvas id="pantalla" width="960px" height="450px">
            <!-- etiqueta del canvas con sus medidas en la pantalla -->
            Tu navegador no soporta Canvas.
        </canvas>
        <!-- El boton que nos sirve para recargar la pagina y asi generar una nueva palabra y volver a jugar -->
        <button id="boton" type="reset" onclick="javascript:window.location.reload();">Volver a Jugar</button>
        <form action="actualizarP"><button type="submit">COMPLETAR LECCION</button></form>
        <script>

            /* Variables */
            var ctx;
            var canvas;
            var palabra;
            var letras = "QWERTYUIOPASDFGHJKLÑZXCVBNM";
            var colorTecla = "#585858";
            var colorMargen = "red";
            var inicioX = 200;
            var inicioY = 300;
            var lon = 35;
            var margen = 20;
            var pistaText = "";

            /* Arreglos */
            var teclas_array = new Array();
            var letras_array = new Array();
            var palabras_array = new Array();

            /* Variables de control */
            var aciertos = 0;
            var errores = 0;

            /* Palabras */
            palabras_array.push("SEDENTARISMO");
            palabras_array.push("CHATARRA");
            palabras_array.push("EJERCICIO");
            palabras_array.push("DAÑINOS");
            palabras_array.push("AZUCARES");

            /* Objetos */
            function Tecla(x, y, ancho, alto, letra) {
                this.x = x;
                this.y = y;
                this.ancho = ancho;
                this.alto = alto;
                this.letra = letra;
                this.dibuja = dibujaTecla;
            }

            function Letra(x, y, ancho, alto, letra) {
                this.x = x;
                this.y = y;
                this.ancho = ancho;
                this.alto = alto;
                this.letra = letra;
                this.dibuja = dibujaCajaLetra;
                this.dibujaLetra = dibujaLetraLetra;
            }

            /* Funciones */

            /* Dibujar Teclas*/
            function dibujaTecla() {
                ctx.fillStyle = colorTecla;
                ctx.strokeStyle = colorMargen;
                ctx.fillRect(this.x, this.y, this.ancho, this.alto);
                ctx.strokeRect(this.x, this.y, this.ancho, this.alto);

                ctx.fillStyle = "white";
                ctx.font = "bold 20px courier";
                ctx.fillText(this.letra, this.x + this.ancho / 2 - 5, this.y + this.alto / 2 + 5);
            }

            /* Dibua la letra y su caja */
            function dibujaLetraLetra() {
                var w = this.ancho;
                var h = this.alto;
                ctx.fillStyle = "black";
                ctx.font = "bold 40px Courier";
                ctx.fillText(this.letra, this.x + w / 2 - 12, this.y + h / 2 + 14);
            }
            function dibujaCajaLetra() {
                ctx.fillStyle = "white";
                ctx.strokeStyle = "black";
                ctx.fillRect(this.x, this.y, this.ancho, this.alto);
                ctx.strokeRect(this.x, this.y, this.ancho, this.alto);
            }


            /// Funcion para dar una pista la usuario ////
            function pistaFunction(palabra) {
                let pista = ""; // Se crea la variable local pista que contendra nuestra frase de pista
                switch (palabra) {  // Se crea un switch para poder controlar las pistas segun la palabra 
                    case 'SEDENTARISMO':   // Se debera hacer un case por cada palabra 
                        pista = "Es la falta de actividades";
                        break;     // Es importante el break en cada case 
                    case 'CHATARRA':
                        pista = "Yipos de comida dañinas";
                        break;
                    case 'EJERCICIO':
                        pista = "Metodo para reducir grasas en el cuerpo";
                        break;
                    case 'DAÑINOS':
                        pista = "Todos los exesos son...";
                        break;
                    default:  // El defaul se puede omitir // 
                        pista = "No hay pista aun xP";
                }
                // Pintamos la palabra en el canvas , en este ejemplo se pinta arriba a la izquierda //
                ctx.fillStyle = "black";  // Aqui ponemos el color de la letra
                ctx.font = "bold 20px Courier";  // aqui ponemos el tipo y tamaño de la letra
                ctx.fillText(pista, 10, 15);  // aqui ponemos la frase en nuestro caso la variable pista , seguido de la posx y posy
            }


            /* Distribuir nuestro teclado con sus letras respectivas al acomodo de nuestro array */
            function teclado() {
                var ren = 0;
                var col = 0;
                var letra = "";
                var miLetra;
                var x = inicioX;
                var y = inicioY;
                for (var i = 0; i < letras.length; i++) {
                    letra = letras.substr(i, 1);
                    miLetra = new Tecla(x, y, lon, lon, letra);
                    miLetra.dibuja();
                    teclas_array.push(miLetra);
                    x += lon + margen;
                    col++;
                    if (col == 10) {
                        col = 0;
                        ren++;
                        if (ren == 2) {
                            x = 280;
                        } else {
                            x = inicioX;
                        }
                    }
                    y = inicioY + ren * 50;
                }
            }


            /* aqui obtenemos nuestra palabra aleatoriamente y la dividimos en letras */
            function pintaPalabra() {
                var p = Math.floor(Math.random() * palabras_array.length);
                palabra = palabras_array[p];

                pistaFunction(palabra);

                var w = canvas.width;
                var len = palabra.length;
                var ren = 0;
                var col = 0;
                var y = 230;
                var lon = 50;
                var x = (w - (lon + margen) * len) / 2;
                for (var i = 0; i < palabra.length; i++) {
                    letra = palabra.substr(i, 1);
                    miLetra = new Letra(x, y, lon, lon, letra);
                    miLetra.dibuja();
                    letras_array.push(miLetra);
                    x += lon + margen;
                }
            }

            /* dibujar cadalzo y partes del pj segun sea el caso */
            function horca(errores) {
                var imagen = new Image();
                imagen.src = "imagenes/ahorcado" + errores + ".png";
                imagen.onload = function () {
                    ctx.drawImage(imagen, 390, 0, 230, 230);
                }
                /*************************************************
                // Imagen 2 mas pequeña a un lado de la horca //       
                var imagen = new Image();
                imagen.src = "imagenes/ahorcado"+errores+".png";
                imagen.onload = function(){
                    ctx.drawImage(imagen, 620, 0, 100, 100);
                }
                *************************************************/
            }

            /* ajustar coordenadas */
            function ajusta(xx, yy) {
                var posCanvas = canvas.getBoundingClientRect();
                var x = xx - posCanvas.left;
                var y = yy - posCanvas.top;
                return { x: x, y: y }
            }

            /* Detecta tecla clickeada y la compara con las de la palabra ya elegida al azar */
            function selecciona(e) {
                var pos = ajusta(e.clientX, e.clientY);
                var x = pos.x;
                var y = pos.y;
                var tecla;
                var bandera = false;
                for (var i = 0; i < teclas_array.length; i++) {
                    tecla = teclas_array[i];
                    if (tecla.x > 0) {
                        if ((x > tecla.x) && (x < tecla.x + tecla.ancho) && (y > tecla.y) && (y < tecla.y + tecla.alto)) {
                            break;
                        }
                    }
                }
                if (i < teclas_array.length) {
                    for (var i = 0; i < palabra.length; i++) {
                        letra = palabra.substr(i, 1);
                        if (letra == tecla.letra) { /* comparamos y vemos si acerto la letra */
                            caja = letras_array[i];
                            caja.dibujaLetra();
                            aciertos++;
                            bandera = true;
                        }
                    }
                    if (bandera == false) { /* Si falla aumenta los errores y checa si perdio para mandar a la funcion gameover */
                        errores++;
                        horca(errores);
                        if (errores == 5) gameOver(errores);
                    }
                    /* Borra la tecla que se a presionado */
                    ctx.clearRect(tecla.x - 1, tecla.y - 1, tecla.ancho + 2, tecla.alto + 2);
                    tecla.x - 1;
                    /* checa si se gano y manda a la funcion gameover */
                    if (aciertos == palabra.length) gameOver(errores);
                }
            }

            /* Borramos las teclas y la palabra con sus cajas y mandamos msj segun el caso si se gano o se perdio */
            function gameOver(errores) {
                ctx.clearRect(0, 0, canvas.width, canvas.height);
                ctx.fillStyle = "black";

                ctx.font = "bold 50px Courier";
                if (errores < 5) {
                    ctx.fillText("Muy bien, la palabra es: ", 110, 280);
                } else {
                    ctx.fillText("Lo sentimos, la palabra era: ", 110, 280);
                }

                ctx.font = "bold 80px Courier";
                lon = (canvas.width - (palabra.length * 48)) / 2;
                ctx.fillText(palabra, lon, 380);
                horca(errores);
            }

            /* Detectar si se a cargado nuestro contexco en el canvas, iniciamos las funciones necesarias para jugar o se le manda msj de error segun sea el caso */
            window.onload = function () {
                canvas = document.getElementById("pantalla");
                if (canvas && canvas.getContext) {
                    ctx = canvas.getContext("2d");
                    if (ctx) {
                        teclado();
                        pintaPalabra();
                        horca(errores);
                        canvas.addEventListener("click", selecciona, false);
                    } else {
                        alert("Error al cargar el contexto!");
                    }
                }
            }
        </script>
    </div>
    <br><br><br><br><br>
   
</body>
</html>