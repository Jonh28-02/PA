<%-- 
    Document   : leccion2
    Created on : 10/06/2021, 02:00:33 AM
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
!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>LECCION 2</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
¿
    <link rel="stylesheet" href="css/templatemo-style.css" />
   
   
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
    <br><br><br>
 
      
    <div class="columns-bg">
        <!-- Logo & Intro -->
        <section id="logo" class="tm-section-logo">
          <br><br>
          <h1 class="hi">Leccion 2</h1>
          <h1 class="hi">SOBREPESO</h1>
          <hr class="hr">
        </section>
  
        <!-- Section 1 -->
        <section id="section_1" class="tm-p-2-section-1 tm-sm-bg-blue">
          <div class="container-fluid">
            <div class="row flex-column-reverse flex-lg-row">
              <div class="col-md-12 col-lg-6 tm-text-left-container">
                <div class="tm-section-text-container-3 tm-bg-white-alpha h-100">
                  <h2 class="tm-section-title-mb">¿Que es el sobrepeso?</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    El sobrepeso y la obesidad se definen como una acumulación anormal o excesiva de grasa que puede ser perjudicial para la salud. Medir de manera directa ese exceso de grasa del organismo requiere utilizar métodos muy complejos.

                    Una manera aproximada de calcular ese exceso de grasa es utilizar el IMC o índice de masa corporal, un indicador simple de la relación entre el peso y la talla. Se calcula dividiendo el peso de una persona en kilos por el cuadrado de su talla en metros (kg/m2).</p>
                  <div class="text-right">
                    <a href="#section_2" class="btn btn-primary">Leer Mas</a>
                  </div>
                </div>
              </div>
              <div
                class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
              >
                <img
                  src="img/consecuencias-obesidad-infa.jpg"
                  alt="Image"
                  class="img-fluid tm-img-right"
                />
              </div>
            </div>
          </div>
        </section>
  
        <!-- Section 2 -->
        <section id="section_2" class="tm-section-4">
          <div class="container-fluid">
            <div class="row">
              <div
                class="col-md-12 col-lg-6 tm-section-image-container tm-img-left-container"
              >
                <img src="img/mujer-forma-sobrepeso-comida_1308-21454.jpg" alt="Image" class="img-fluid" />
              </div>
              <div class="col-md-12 col-lg-6 pl-lg-0">
                <div class="tm-section-text-container-3 tm-bg-gray h-100">
                  <h2 class="tm-section-title-mb">¿Cuáles son las causas del sobrepeso?</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    Una vida sedentaria y comer demasiado y mal son las causas más comunes. Aun así, puede estar derivado de afecciones genéticas, efectos secundarios de algún medicamento o enfermedades endocrinas.
                  </p>
                  <div class="text-right">
                    <a href="#section_4" class="btn btn-primary">Ver mas</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <section id="section_4" class="tm-p-2-section-1 tm-sm-bg-blue">
            <div class="container-fluid">
              <div class="row flex-column-reverse flex-lg-row">
                <div class="col-md-12 col-lg-6 tm-text-left-container">
                  <div class="tm-section-text-container-3 tm-bg-white-alpha h-100">
                    <h2 class="tm-section-title-mb">¿Como saber si tengo obesidad o sobrepeso?</h2>
                    <hr class="tm-hr-mb" />
                    <p class="tm-p-mb">
                      El indicador que se usa para saber si una persona tiene sobrepeso u obesidad es el índice de masa corporal (IMC). Esta medida se calcula al dividir el peso entre el cuadro de la estatura. Según este indicador, una persona tiene sobrepeso si su IMC es mayor a 25 y sufre de obesidad si es superior a 30.
                    </p>
                    <div class="text-right">
                      <a href="#section_5" class="btn btn-primary">Ver mas</a>
                    </div>
                  </div>
                </div>
                <div
                  class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
                >
                  <img
                    src="img/mujer-forma-sobrepeso-comida_1308-21454.jpg"
                    alt="Image"
                    class="img-fluid tm-img-right"
                  />
                </div>
              </div>
            </div>
          </section>

         
  
        <section id="section_5" class="tm-section-4">
          <div class="container-fluid">
            <div class="row">
              <div class="col-12">
                <div class="tm-section-text-container-7 tm-bg-dark-gray">
                  <h2 class="tm-section-title-mb tm-text-primary-bright">
                    ¿COMO SE TRATA?
                  </h2>
                  <hr
                    class="tm-hr-mb tm-hr-primary-bright tm-section-underline ml-0"
                  />
                  <p class="tm-p-mb">
                    Se recomienda visitar a un equipo médico especializado, que evalúe el grado de sobrepeso u obesidad así como las enfermedades concomitantes, causa o consecuencia de tal estado. Este equipo deberá marcar unos objetivos reales y saludables, y unas pautas de tratamiento.

                    Para tratar el sobrepeso es necesario cambiar el estilo de vida: hacer deporte y empezar a comer sano, en porciones adecuadas.

                    Es muy importante huir de las “dietas milagro” y las pérdidas de peso rápidas que traerán siempre consecuencias negativas a largo plazo.
                </p>
                
              
                  <div class="mb-2">
                    <a href="act_2.jsp" class="btn btn-primary">INCIAR ACTIVIDAD</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>
  
       
      </div>
   
    
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

