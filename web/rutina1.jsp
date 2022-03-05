<%-- 
    Document   : rutina1
    Created on : 9/12/2021, 07:23:15 PM
    Author     : river
--%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session = "true"%>
<%

 
 //String nombre = (String)session.getAttribute("Usuario");
 //session2.setAttribute("Usuario", usuario);
 String nombreUsuario = (String)session.getAttribute("Usuario");
 //Usuario e  = new Usuario();
 //sessionUSU.setAttribute("Usuario", e.getNombre_usu());
 

 
 



%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LECCION 1</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/1/estilos.css">
    <link rel="stylesheet" href="css/estilos01.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/templatemo-style2.css" />
    
   
   
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
              <a class="navbar-brand" href="#">FIT<span class="logo-dec">LINE</span></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav navbar-right" id="nab">
                <li class="active"><a href="MenuUsu.jsp">Inicio</a></li>
                <li class=""><a href="">Rutina</a>
                  
                </li>
                <li class=""><a href="perfil.jsp">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden" name="usuario"> <%=nombreUsuario%></a></li>   
              </ul>
            </div>
          </div>
        </nav>      
    </header>

    <div id="cronom2">
      
      <div class="cronometro">
        <span class="titulo2-ejercicio" id="minutos">00</span>
        : <span class="titulo2-ejercicio" id="segundos">00</span>
        : <span class="titulo2-ejercicio" id="centesimas">00</span>
      </div>
    
    <div class="boton-ejercicio">
      <a class="btn btn-primary" id="boton1">Comenzar</a>
    </div>
    <div class="boton-ejercicio2">
      <a class="btn btn-primary" id="boton0">Reiniciar</a>
    </div>
    <div class="boton-ejercicio2">
      <a class="btn btn-primary" onclick="ocultar()" id="boton3">Ocultar</a>
    </div>
    
  </div>


  <div class="cronom">
    <button onclick="mostrar()" class="btn btn-primary boton2 asd" id="bcron">Cronometro</button>
  </div>

  <script>
    function mostrar(){
      document.getElementById('cronom2').style.display = "block";
    }
    function ocultar(){
      document.getElementById('cronom2').style.display = "none";
    }
  </script>


    <br><br><br>
    <div class="div-titulo">
      <div class="titulo-rutina">
        <h1>RUTINA</h1>
        <hr id="hr-rutina">
        <h2>SEMANA DIAS(LUNES, MARTES, MIERCOLES, VIERNES, SABADO)</h2>
      </div>
    </div>

    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio de calentamiento</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Movimiento de cabeza:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Mueve tu cabeza de lado a lado, de modo que tu oreja trate de tocar el hombro correspondiente. Luego, haz movimientos de cabeza circulares para la izquierda y después para la derecha. Cierra tus ojos mientras haces estos ejercicios de calentamiento para no marearte.
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/cabeza.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>


    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio de calentamiento</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Movimiento de hombros:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Mueve los hombros estirados en 45° en forma circular con la espalda recta. (30 segundos)</p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/hombros.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>


    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio de calentamiento</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Movimiento de cadera:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Estando parado y con la espalda derecha, girar acompasadamente los brazos extendidos hacia adelante y hacia atrás. Luego, con los brazos flexionados horizontalmente hacer girar los hombros primero hacia adelante y luego hacia atrás, de este modo se movilizan también los músculos de la zona dorsal.
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/cadera.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>


    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio de calentamiento</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Estiramiento:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Manteniendo el tronco recto hay que desplazarlo hacia un lado de modo que se flexione la pierna de ese lado con la rodilla hacia adelante y se estire totalmente la otra. Hacer varias series a ambos lados.
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/estiramiento.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>


    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio aeróbico</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Saltos de tijera:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Ponte de pie con las piernas juntas y los brazos a ambos lados, dobla ligeramente las rodillas y salta al aire. Al saltar, separa las piernas para separarte del ancho de los hombros, y estira los brazos sobre la cabeza. Vuelve a la posición inicial y repite. (30 segundos)
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/tijera.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>

    <br><br><br><br><br>


    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio aeróbico</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Step en silla:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Apoyamos un pie en la silla, al mismo tiempo que elevamos el cuerpo y estiramos la otra pierna hacia atrás. Contrayendo el glúteo mayor, vamos alternando con la pierna contraria. Con este ejercicio ganamos fuerza y tono en piernas y glúteos. (30 segundos)
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/silla.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>

    
    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio muscular</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Abdominales inversos:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Recuesta la espalda sobre el suelo. Dobla las rodillas a 90° y sube las piernas al pecho. Regresa a la posición de las rodillas a 90°. Repite. (30 segundos)
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/muscular.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>

    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio muscular</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Tijeras verticales:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Abre tus piernas a una distancia de 60 cm y luego ciérralas, de tal forma que el pie derecho pase por encima del izquierdo y luego al revés, un movimiento similar al que hacen las tijeras, hazlo uniforme y pausado. (30 segundos)
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/muscular.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>


    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio respiratorio</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Estiramiento de cobra:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Túmbate boca abajo, con las manos debajo de los hombros. Luego, manteniendo las piernas estiradas, empuja hacia arriba con las manos para levantar la parte superior del cuerpo. (30 segundos)
        </p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/respiratorio.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>

    <br><br><br><br><br>

    <div class="fondo-ejercicio">
      <div class="div-titulo-ejercicio">
        <h2 class="titulo1-ejercicio">Ejercicio respiratorio</h2>
        <hr>
        <h2 class="titulo2-ejercicio">Elevación de brazos:</h2>
      </div>
      <div>
        <p class="texto-ejercicio">
          Respira profundamente. Luego, eleva tus brazos lentamente. (30 segundos)</p>
      </div>
      <div class="div-imagen">
        <img class="imagen-ejercicio" src="img/respiratorio.gif" alt="imagen1">
      </div>
      <div class="boton-ejercicio">
        <a href="#section_2" class="btn btn-primary">Comenzar</a>
      </div>
    </div>

      <br>
    
   
    
    

    <script src="js/login.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/cronometro.js"></script>
</body>
</html>