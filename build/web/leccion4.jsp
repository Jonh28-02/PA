<%-- 
    Document   : leccion4
    Created on : 10/06/2021, 02:06:17 AM
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
    <title>LECCION 4</title>
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
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
          <h1 class="hi">Leccion 4</h1>
          <h1 class="hi">IMC</h1>
          <hr class="hr">
        </section>
  
        <!-- Section 1 -->
        <section id="section_1" class="tm-p-2-section-1 tm-sm-bg-blue">
          <div class="container-fluid">
            <div class="row flex-column-reverse flex-lg-row">
              <div class="col-md-12 col-lg-6 tm-text-left-container">
                <div class="tm-section-text-container-3 tm-bg-white-alpha h-100">
                  <h2 class="tm-section-title-mb">¿Que es el IMC?</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    El índice de masa corporal, también conocido como IMC, es una de las fórmulas más extendidas para evaluar si una persona está en su peso ideal . Para evitar los problemas de salud relacionados con la falta o exceso de peso, es conveniente mantenerse dentro de unos valores saludables, y el IMC proporciona una guía fácil y rápida para identificar estos valores. Mediante un sencillo cálculo utilizando la altura de una persona y su peso, puede darse un margen orientativo del peso ideal de esa persona, además de identificar si existe una desviación, con respecto a la norma, que pueda resultar patológica o peligrosa.</p>
                  <div class="text-right">
                    <a href="#section_2" class="btn btn-primary">Leer Mas</a>
                  </div>
                </div>
              </div>
              <div
                class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
              >
                <img
                  src="img/escala-de-obesidad-02.png"
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
                <img src="img/imc_dob.jpg" alt="Image" class="img-fluid" />
              </div>
              <div class="col-md-12 col-lg-6 pl-lg-0">
                <div class="tm-section-text-container-3 tm-bg-gray h-100">
                  <h2 class="tm-section-title-mb">¿COMO SE CALCULA?</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    La sencillez de cálculo del IMC es una de las características que más facilita su implementación y explica su uso tan extendido: consiste en dividir el peso, calculado en kilos, entre la altura de la persona en metros elevada al cuadrado. La fórmula sería la siguiente:

                    kg/m^2

                    Tomemos como ejemplo a una mujer adulta de 1,70 m de altura y un peso de 65 kilos: 65/1,70^2 = 22,5

                    El IMC de esta mujer sería 22,5. Pero ¿qué quiere decir esto? Cada valor del IMC se sitúa en una escala que indica el estado físico de la persona, que va desde el infrapeso hasta la obesidad mórbida:

                    Los valores inferiores a 18,5 se consideran infrapeso <br>
                    Los valores comprendidos entre 18,5 y 24,9 representan a una persona que está en su peso ideal <br>
                    <br> Entre el 25 y el 30 hay cierto margen que dependerá de cada tipo de cuerpo, por lo que podría ser o no indicador de un ligero sobrepeso
                    <br> Los valores superiores al 30 se consideran obesidad, que se subdivide en tipo I, tipo II y tipo III, según su gravedad
                    <br> La mujer del ejemplo anterior, con un 22,5, estaría en peso normal según este índice. Su peso ideal estaría entre los 54 y los 71 kilos.


                  </p>
                  <div class="text-right">
                    <a href="#section_4" class="btn btn-primary">Ver mas</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

 
        <section id="section_4" class="tm-section-4">
          <div class="container-fluid">
            <div class="row">
              <div class="col-12">
                <div class="tm-section-text-container-7 tm-bg-dark-gray">
                  <h2 class="tm-section-title-mb tm-text-primary-bright">
                    ¿COMO SE INTERPRETA?
                  </h2>
                  <hr
                    class="tm-hr-mb tm-hr-primary-bright tm-section-underline ml-0"
                  />
                  <img src="img/tabla-IMC-624x411.png" alt="Image" class="img-fluid" />
                  <p class="tm-p-mb">
                      <br><br>
                      El IMC es esencialmente una guía orientativa. Precisamente por su sencillez, es la forma ideal de hacer un cálculo rápido, pero no es infalible. Su aplicación a cada caso individual debe hacerse con las consideraciones oportunas, ya que no tiene en cuenta ciertas variables en la relación entre salud y peso.
<br><br>
                      En primer lugar, la fórmula del IMC solo incluye altura y peso. No tiene en cuenta la musculatura, por lo que una medallista olímpica de halterofilia podría quedar por encima de los niveles considerados normales y estar técnicamente en sobrepeso. También puede ocurrir lo contrario, que un IMC normal oculte una musculatura muy reducida con mayor porcentaje de grasa, ya que el músculo pesa más que la grasa.
    <br>   <br>               
                      Teniendo esto en cuenta, es conveniente utilizar esta herramienta de forma consciente: en caso de duda, una consulta con profesionales de la salud puede ayudar a discernir aquellos casos que el IMC no consiga abordar con claridad. En caso de tener valores muy cercanos a los límites, tanto del infrapeso como del sobrepeso, conviene evaluar otros parámetros además del IMC.
                    <br><br><br>
                </p>
                
              
                  <div class="mb-2">
                    <a href="act_4.jsp" class="btn btn-primary">INCIAR ACTIVIDAD</a>
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
