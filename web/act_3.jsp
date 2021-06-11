<%-- 
    Document   : act_3
    Created on : 10/06/2021, 03:22:50 PM
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
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Actividad 3</title>
    <link rel="stylesheet" href="css/1/style.css">
    <link rel="stylesheet" href="css/1/font-awesome.min.css">
    <link rel="stylesheet" href="css/1/estilos.css">
    <link rel="stylesheet" href="css/1/bootstrap.min.css">
    <link rel="stylesheet" href="css/1/templatemo-style.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
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
                <li class="" ><a href="leccion4.jsp">Leccion 4</a></li>
                <li class="" ><a href="imc.jsp">IMC</a></li>
                <li class="" ><a href="puntajes.jsp">Puntajes</a></li>
                <li class="" ><a href="">Graficas</a></li>
                <li class=""><a href="perfil.jsp">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden" name="usuario"> <%=nombreUsuario%></a></li>
                
              </ul>
            </div>
          </div>
        </nav>
        
    </header>
    <!-- start Quiz button -->
    <div class="start_btn"><button>Empezar </button></div>
    <!-- Info Box -->
    <div class="info_box">
        <div class="info-title"><span>Reglas del cuestionario</span></div>
        <div class="info-list">
            <div class="info">1. Par este quiz tendras solamente <span>15 segundos</span> para cada pregunta</div>
            <div class="info">2. Una vez que elijas una respuesta, no tienes otra oportunidad.</div>
            <div class="info">3. Tampoco podras elegir despues de tiempo</div>
            <div class="info">4. Sera mucha comedia si intentas reiniciar durante el quiz.</div>
            <div class="info">5. En base a tus respuestas, tendras un puntaje</div>
        </div>
        <div class="buttons">
            <button class="quit">Salir</button>
            <button class="restart">Continuar</button>
        </div>
    </div>
    <!-- Quiz Box -->
    <div class="quiz_box">
        <header>
            <div class="title">Asombroso quiz</div>
            <div class="timer">
                <div class="time_left_txt">Tiempo</div>
                <div class="timer_sec">15</div>
            </div>
            <div class="time_line"></div>
        </header>
        <section>
            <div class="que_text">
                <!-- Here I've inserted question from JavaScript -->
            </div>
            <div class="option_list">
                <!-- Here I've inserted options from JavaScript -->
            </div>
        </section>
        <!-- footer of Quiz Box -->
        <footer>
            <div class="total_que">
                <!-- Here I've inserted Question Count Number from JavaScript -->
            </div>
            <button class="next_btn">Siguiente</button>
        </footer>
    </div>
    <!-- Result Box -->
    <div class="result_box">
        <div class="icon">
            <i class="fas fa-crown"></i>
        </div>
        <div class="complete_text">Excelente trabajo</div>
        <div class="score_text">
            <!-- Here I've inserted Score Result from JavaScript -->
        </div>
        <div class="buttons">
            <button class="restart">Repetir cuestionario</button>
            <button class="quit">Quit Quiz</button>
            <form action="actualizarP2">
                <button type="submit">Guardar</button>
            </form>
        </div>
    </div>
    <!-- Inside this JavaScript file I've inserted Questions and Options only -->
    <script src="js/script2.js"></script>
    <!-- Inside this JavaScript file I've coded all Quiz Codes -->
    <script src="js/questions2.js"></script>
</body>
</html>
</html>