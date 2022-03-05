<%-- 
    Document   : MenuUsu
    Created on : 8/06/2021, 04:53:59 PM
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
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LECCIONES</title>
    <link rel="stylesheet" href="css/1/estilos.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    
	<link rel="stylesheet" href="css/estilos3.css">
   
   
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
              <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="MenuUsu.jsp">Inicio</a></li>
                <li class=""><a href="rutina.jsp">RUTINAS</a></li>
                <li class=""><a href="registroprogreso.jsp">PROGRESO</a></li>
                <li class=""><a href="http://localhost:3000/">FORO</a></li>
                
                <li class=""><a href="perfil.jsp">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden" name="usuario"> <%=nombreUsuario%></a></li>
                
              </ul>
            </div>
          </div>
        </nav>
        
    </header>
    <br><br><br>
  
      
	<body>

	 <br><br><br><br>
	<div class="container-card">
		
	<div class="card">
		<figure>
			<img src="img/rutinas.png.crdownload">
		</figure>
		<div class="contenido-card">
			<h3>RUTINAS DE EJERCICIO</h3>
			<p>LAS RUTINAS SON TOTALMENTE PERSONALIDADES DE ACUERDO A LAS NECESIDADES DE TU CUERPO LAS CUALES TE AYUDARAN A BAJAR DE PESO</p>
			<a href="https://www.youtube.com/watch?v=NYiclAwfuU8">VER VIDEO</a>
		</div>
	</div>
	<div class="card">
		<figure>
			<img src="img/gestion.jpg">
		</figure>
		<div class="contenido-card">
			<h3>GESTION DE PROGRESO</h3>
			<p>PODRAS LLEVAR TU PROGRESO MENSUAL DE SOBRE COMO HAS AVANZADO CON LAS RUTINAS, CON MENSAJE MOTIVACIONALES SI LO HAS HECHO</p>
			<a href="https://www.youtube.com/watch?v=NYiclAwfuU8">VER VIDEO</a>
		</div>
	</div>
	<div class="card">
		<figure>
			<img src="img/motivacion.jpg">
		</figure>
		<div class="contenido-card">
			<h3>MOTIVACION</h3>
			<p>HAY DISTINTAS FORMAS DE MOTIVACION EN NUESTRO SISTEMAS COMO UN FORO DONDE PUEDAS COMPARTIR EXPERENCIAS Y MEJORAR TU CUERPO Y SENTIRME MAS SEGURO</p>
			<a href="https://www.youtube.com/watch?v=NYiclAwfuU8">VER VIDEO</a>
		</div>
	</div>
	</div>
		
	</body>

	


	

    <script src="js/login.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
