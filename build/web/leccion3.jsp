<%-- 
    Document   : leccion3
    Created on : 10/06/2021, 02:03:16 AM
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
    <title>LECCION 3</title>
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
          <h1 class="hi">Leccion 3</h1>
          <h1 class="hi">EL PLATO DEL BUEN COMER</h1>
          <hr class="hr">
        </section>
  
        <!-- Section 1 -->
        <section id="section_1" class="tm-p-2-section-1 tm-sm-bg-blue">
          <div class="container-fluid">
            <div class="row flex-column-reverse flex-lg-row">
              <div class="col-md-12 col-lg-6 tm-text-left-container">
                <div class="tm-section-text-container-3 tm-bg-white-alpha h-100">
                  <h2 class="tm-section-title-mb">¿Que es el plato del buen comer?</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    El plato del buen comer es una guía de alimentación que forma parte de la Norma Oficial Mexicana para la promoción y educación para la salud en materia alimentaria, la cual establece criterios para la orientación nutritiva en México. Consiste en un gráfico donde se representan y resumen estos criterios, dirigidos a brindar a la población opciones prácticas, con respaldo científico, para tener una alimentación correcta que pueda adecuarse a sus necesidades y posibilidades.

El plato del buen comer facilita la identificación de los tres grupos de alimentos (verduras y frutas, cereales y tubérculos, leguminosas y proteínas de origen animal), la combinación y variación de la alimentación, la selección de menús diarios con los tres grupos de alimentos y el aporte de energía y nutrientes a través de la alimentación correcta.

Con base en los lineamientos de dicha guía, una alimentación debe ser completa; es decir, que incluya por lo menos un elemento de cada grupo alimenticio en cada desayuno, comida y cena; también debe ser equilibrada, lo cual significa que los nutrimentos guarden las proporciones entre sí, al integrar alimentos de los tres grupos cada vez que uno se sienta a la mesa.</p>
                  <div class="text-right">
                    <a href="#section_2" class="btn btn-primary">Leer Mas</a>
                  </div>
                </div>
              </div>
              <div
                class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
              >
                <img
                  src="img/plato_bien_comer_2.jpg"
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
                <img src="img/platodelbuencomer.jpg" alt="Image" class="img-fluid" />
              </div>
              <div class="col-md-12 col-lg-6 pl-lg-0">
                <div class="tm-section-text-container-3 tm-bg-gray h-100">
                  <h2 class="tm-section-title-mb">¿COMO SE CLASIFICA?</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    Para cubrir las necesidades nutricionales de cada persona de acuerdo a edad, sexo, estatura, actividad física o estado fisiológico, la guía plantea que la alimentación debe ser suficiente. En el mismo sentido, se establece incluir diferentes alimentos de los tres grupos en cada tiempo de comida; es decir, que sea variada.

                    Por último, se indica que la alimentación debe ser higiénica y adecuada; en otras palabras, que los alimentos se preparen, sirvan y consuman con limpieza y que sean preparados de acuerdo a los gustos, costumbres y disponibilidad de los alimentos en la región.
                  </p>
                  <div class="text-right">
                    <a href="#section_4" class="btn btn-primary">Verduras y frutas</a>
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
                    <h2 class="tm-section-title-mb">VERDURAS Y FRUTAS</h2>
                    <hr class="tm-hr-mb" />
                    <p class="tm-p-mb">
                        Las verduras y las frutas son fuente de vitaminas, minerales y fibra que ayudan al buen funcionamiento del cuerpo humano, permitiendo un adecuado crecimiento, desarrollo y estado de salud. La naturaleza proporciona los nutrientes que necesitamos en frutas y verduras de cada estación. El consumo de frutas y verduras de temporada ayuda a nuestra economía y salud. Cuando las frutas se consumen durante las estaciones que les corresponden tienen un mejor sabor y los beneficios para la familia son más evidentes.
                    </p>
                    <div class="text-right">
                      <a href="#section_5" class="btn btn-primary">CEREALES</a>
                    </div>
                  </div>
                </div>
                <div
                  class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
                >
                  <img
                    src="img/las_frutas_y_verduras_tambien_fueron_domesticadas.jpg"
                    alt="Image"
                    class="img-fluid tm-img-right"
                  />
                </div>
              </div>
            </div>
          </section>

          <section id="section_5" class="tm-p-2-section-1 tm-sm-bg-blue">
            <div class="container-fluid">
              <div class="row flex-column-reverse flex-lg-row">
                <div class="col-md-12 col-lg-6 tm-text-left-container">
                  <div class="tm-section-text-container-3 tm-bg-white-alpha h-100">
                    <h2 class="tm-section-title-mb">CEREALES</h2>
                    <hr class="tm-hr-mb" />
                    <p class="tm-p-mb">
                        Los cereales son imprescindibles en nuestra alimentación por su alto contenido de vitaminas y minerales y, sobre todo, por su aporte de hidratos de carbono complejos (almidón), que son una fuente de energía de alta calidad. También son la principal fuente de hierro y una fuente importante de fibra.</p>
                    <div class="text-right">
                      <a href="#section_6" class="btn btn-primary">Leguminosas y alimentos de origen animal</a>
                    </div>
                  </div>
                </div>
                <div
                  class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
                >
                  <img
                    src="img/cereales.jpg"
                    alt="Image"
                    class="img-fluid tm-img-right"
                  />
                </div>
              </div>
            </div>
          </section>

          <section id="section_6" class="tm-section-4">
            <div class="container-fluid">
              <div class="row">
                <div
                  class="col-md-12 col-lg-6 tm-section-image-container tm-img-left-container"
                >
                  <img src="img/Alimentos-altos-en-primer-plano-de-proteína-.jpg" alt="Image" class="img-fluid" />
                </div>
                <div class="col-md-12 col-lg-6 pl-lg-0">
                  <div class="tm-section-text-container-3 tm-bg-gray h-100">
                    <h2 class="tm-section-title-mb">LEGUMINOSAS Y ALIMENTOS DE ORIGEN ANIMAL</h2>
                    <hr class="tm-hr-mb" />
                    <p class="tm-p-mb">
                        Se encuentran en el mismo grupo porque ambos tienen un alto contenido de proteína y son fuente importante de energía y fibra. No obstante, aunque los productos de origen animal son fuente de proteínas, tienen un alto contenido de grasa saturada y colesterol. Por eso, conviene consumir carne blanca (pescados y aves), de preferencia sin piel, por su bajo contenido de grasa saturada. Debe fomentarse un bajo consumo de carne roja y, al consumirla, elegir cortes magros (con poca grasa).
                    </p>
                    <div class="text-right">
                      <a href="#section_7" class="btn btn-primary">BENEFICIOS</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>

         
  
        <section id="section_7" class="tm-section-4">
          <div class="container-fluid">
            <div class="row">
              <div class="col-12">
                <div class="tm-section-text-container-7 tm-bg-dark-gray">
                  <h2 class="tm-section-title-mb tm-text-primary-bright">
                    BENEFICIOS DE SEGUIR EL PLATO DEL BUEN COMER
                  </h2>
                  <hr
                    class="tm-hr-mb tm-hr-primary-bright tm-section-underline ml-0"
                  />
                  <img src="img/el-plato-del-buen-comer.jpg" alt="Image" class="img-fluid" />
                  <p class="tm-p-mb">
                      <br><br>
                    El Plato del Bien Comer es una guía alimentaria que te permite:
                         <ul>
                         <li type="disc">Elegir con inteligencia las comidas y colaciones de cada día.</li> 
                        <li type="disc">Combinar los grupos alimenticios de forma correcta.</li> 
                        <li type="disc">Integrar una variedad de alimentos en la dieta.</li> 
                       <li type="disc">Asegurar una ingesta adecuada de carbohidratos, proteínas, grasas buenas, vitaminas, minerales y fibra dietética.</li> 
                        <li type="disc">Aumentar la cantidad de alimentos ricos en nutrientes y bajos en calorías.</li> 
                           <li type="disc">Lograr un equilibrio energético de acuerdo a tus necesidades. Esto se refiere a un balance entre la energía que ingieres (calorías de alimentos y bebidas) y la energía que gastas (calorías que gastas en actividades diarias y deportes).</li> 
                       <li type="disc">Prevenir el sobrepeso y la obesidad.</li> 
                    </ul>
                    <br><br><br>
                </p>
                
              
                  <div class="mb-2">
                    <a href="act_3.jsp" class="btn btn-primary">INCIAR ACTIVIDAD</a>
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
