<%-- 
    Document   : puebra
    Created on : 9/06/2021, 11:30:14 AM
    Author     : river
--%>

<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session = "true"%>

<%

 HttpSession session2 = request.getSession();
 
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
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/style_usu.css">
   
   
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
                <li class=""><a href="">Leccion 1</a></li>
                <li class=""><a href="">Leccion 2</a></li>
                <li class=""><a href="">Leccion 3</a></li>
                <li class="" ><a href="">Leccion 4</a></li>
                <li class="" ><a href="">IMC</a></li>
                <li class="" ><a href="">Puntajes</a></li>
                <li class="" ><a href="">Graficas</a></li>
                <li class=""><a href="#">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden" name="usuario"> <%=nombreUsuario%></a></li>
                
              </ul>
            </div>
          </div>
        </nav>
        
    </header>
    <br><br><br>
    <br><br><br><br><br>
      
    <section id="fh5co-home" data-section="home" style="background-image: url(img/port06.jpg);" data-stellar-background-ratio="0.5">
		<div class="gradient"></div>
		<div class="container">
			<div class="text-wrap">
				<div class="text-inner">
					<div class="row">
						<div class="col-md-8 col-md-offset-2">
							<h1 class="to-animate">BIENVENIDO A ONHEALT LINE</h1>
							<h2 class="to-animate">"El lugar donde tu salud es lo mas importante"</h2>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="slant"></div>
	</section>
    <section id="fh5co-intro">
		<div class="container">
			<div class="row row-bottom-padded-lg">
				<div class="fh5co-block to-animate" style="background-image: url(img/Lecciones.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-bulb"></i>
						<h2>Lecciones</h2>
						<p>Gracias a nuestras seleccionadas lecciones sobre la obesidad, podras aprender mas sobre esta enfermedad que afecta a gran parte de los mexicanos</p>
						
                        <p><a href="#Lecciones" class="btn btn-primary">Lecciones</a></p>
					</div>
				</div>
				<div class="fh5co-block to-animate" style="background-image: url(img/IMC.jpeg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-wrench"></i>
						<h2>IMC</h2>
						<p>Aqui podras tener un registro y seguimiento de tu IMC ingresando solo tu peso y altura.                                          </p>
						<br><br>
                        <p><a href="#" class="btn btn-primary">IMC</a></p>
					</div>
				</div>
				<div class="fh5co-block to-animate" style="background-image: url(img/graficas.jpg);">
					<div class="overlay-darker"></div>
					<div class="overlay"></div>
					<div class="fh5co-text">
						<i class="fh5co-intro-icon icon-rocket"></i>
						<h2>Graficas</h2>
						<p>Aqui puedes ver de una manera grafica datos sobre la prevalencia, nivel de obesidad en el pais, etc.</p>
						<br>
                        <p><a href="#" class="btn btn-primary">GRAFICAS</a></p>
					</div>
				</div>
			</div>
			
		</div>
	</section>

	


	<section id="fh5co-services" data-section="services" name="Lecciones">
		<div class="container">
			<div class="row">
				<div class="col-md-12 section-heading text-left">
				
                    <a name="Lecciones"><h2 class=" left-border to-animate" name="Lecciones">Lecciones</h2></a>
					<div class="row">
						<div class="col-md-8 subtext to-animate">
							<h3>Aqui un pequeño adelanto sobre las lecciones que descubriras mas adelante.</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<i class="icon to-animate-2 icon-anchor"></i>
					<h3>Leccion 1 - ¿Que es la obesidad?</h3>
					<p>Aqui veras datos de la obesidad, efermedades que provoca, como se puede prevenir, tipos de obesidad existentes.</p>
				</div>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<i class="icon to-animate-2 icon-layers2"></i>
					<h3>Leccion 2 - ¿Que es el sobrepeso?</h3>
					<p>Primero aqui veras la diferencia entre obesidad y sobrepes incluso el como diferenciarla, ejercicios para llevar una mejor calidad de vida etc.</p>
				</div>

				<div class="clearfix visible-sm-block"></div>

				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<i class="icon to-animate-2 icon-video2"></i>
					<h3>Leccion 3 - El plato del buen comer</h3>
					<p>Aqui aprenderas mas sobre el plato del buen comer y como generar una buena dieta alimenticia.</p>
				</div>
				<div class="col-md-6 col-sm-6 fh5co-service to-animate">
					<i class="icon to-animate-2 icon-monitor"></i>
					<h3>Leccion 4 - IMC</h3>
					<p>El IMC sirve para medir tu Indice de Masa Corporal, asi que con esta leccion vamos a aprender a calcularlo y saber si sufres de obesidad o sobrepeso.</p>
				</div>
				
			</div>
		</div>
	</section>
   
    <br><br><br><br>
    <footer id="footer">
      <div class="container">
        <div class="row text-center">
          <p>&copy; ON HEALT LINE</p>
          <div class="credits">
        
            REPOSITORIO:<a href="https://github.com/Jonh28-02/PA_EQ8_4IV9"> GitHub</a>
          </div>
        </div>
      </div>
    </footer>

    <script src="js/login.js"></script>
    <script src="js/jquery.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
