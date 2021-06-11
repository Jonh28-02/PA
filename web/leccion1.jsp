<%-- 
    Document   : leccion1
    Created on : 10/06/2021, 01:56:32 AM
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
    <title>LECCION 1</title>
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
                <li class=""><a href="puebra.jsp">Leccion 1</a></li>
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
          <h1 class="hi">Leccion 1</h1>
          <h1 class="hi">OBESIDAD</h1>
          <hr class="hr">
        </section>
  
        <!-- Section 1 -->
        <section id="section_1" class="tm-p-2-section-1 tm-sm-bg-blue">
          <div class="container-fluid">
            <div class="row flex-column-reverse flex-lg-row">
              <div class="col-md-12 col-lg-6 tm-text-left-container">
                <div class="tm-section-text-container-3 tm-bg-white-alpha h-100">
                  <h2 class="tm-section-title-mb">¿Que es la obesidad?</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    La Organización Mundial de Salud (OMS) define a la obesidad como una acumulación anormal o excesiva de grasa que puede ser perjudicial para la salud.

La obesidad es una enfermedad crónica, de origen multifactorial, de alta prevalencia,  que se asocia con un mayor riesgo de desarrollar enfermedades cardiovasculares, de una disminución de la calidad de vida y de un incremento de la mortalidad.
                  </p>
                  <div class="text-right">
                    <a href="#section_2" class="btn btn-primary">Leer Mas</a>
                  </div>
                </div>
              </div>
              <div
                class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
              >
                <img
                  src="img/obe.jpg"
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
                <img src="img/que_es_obesidad.jpeg" alt="Image" class="img-fluid" />
              </div>
              <div class="col-md-12 col-lg-6 pl-lg-0">
                <div class="tm-section-text-container-3 tm-bg-gray h-100">
                  <h2 class="tm-section-title-mb">Tipos de obesidad</h2>
                  <hr class="tm-hr-mb" />
                  <p class="tm-p-mb">
                    La clasificación internacional de la obesidad en adultos es la propuesta por la OMS y se basa en el Índice de Masa Corporal (IMC). Las personas que tienen un IMC igual o superior a 30 kg/m2 (igual para ambos sexos), tienen obesidad.
                    <br>
                    La obesidad también se clasifica de acuerdo con la distribución del tejido adiposo en:
                  </p>
                  <div class="text-right">
                    <a href="#section_4" class="btn btn-primary">Ver tipos de obesidad</a>
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
                    <h2 class="tm-section-title-mb">Obesidad abdominal, visceral.</h2>
                    <hr class="tm-hr-mb" />
                    <p class="tm-p-mb">
                      También denominada tipo androide con predominio de adiposidad en la mitad superior del cuerpo: cuello, hombros y abdomen. Este tipo de obesidad se asocia con un aumento del riesgo de enfermedades metabólicas (diabetes tipo 2, aterosclerosis, etc.).
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
                    src="img/obesidad_abdominal.svg"
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
                    <h2 class="tm-section-title-mb">Obesidad femoro glútea o ginoide. </h2>
                    <hr class="tm-hr-mb" />
                    <p class="tm-p-mb">
                      Con predominio de adiposidad en los glúteos, las caderas, los muslos y la mitad inferior del cuerpo.
                      <br>
                      La medición de la circunferencia de la cintura se utiliza como indicador de referencia en Europa debido a la relación que existe entre la distribución de la grasa a nivel abdominal y las enfermedades cardiovasculares. En el caso de los hombres no debe superar los 102 centímetros y en las mujeres los 88 centímetros.
                    </p>
                    <div class="text-right">
                      <a href="#section_6" class="btn btn-primary">Ver mas</a>
                    </div>
                  </div>
                </div>
                <div
                  class="col-md-12 col-lg-6 tm-section-image-container tm-img-right-container"
                >
                  <img
                    src="img/obesidad_femoreo.svg"
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
                  <img src="img/comun_obesidad.png" alt="Image" class="img-fluid" />
                </div>
                <div class="col-md-12 col-lg-6 pl-lg-0">
                  <div class="tm-section-text-container-3 tm-bg-gray h-100">
                    <h2 class="tm-section-title-mb">¿Es muy común la Obesidad?</h2>
                    <hr class="tm-hr-mb" />
                    <p class="tm-p-mb">
                      Según las estimaciones de la OMS, en 2016, más de 1,900 millones de adultos de 18 o más años tenían sobrepeso, de los cuales, más de 650 millones tenían obesidad.

                      En general, en 2016 alrededor del 13% de la población adulta mundial (un 11% de los hombres y un 15% de las mujeres) tenían obesidad.
                      
                      Entre 1975 y 2016, la prevalencia mundial de la obesidad se ha casi triplicado.
                      
                      En España, según un estudio realizado entre el 2008 – 2010 en población española adulta, la prevalencia de obesidad era del 22,9% en hombres, del 22,4% en mujeres y aumentaba su prevalencia con la edad (21,4%). Este estudio también mostró que el 36% tienen obesidad abdominal, 39% en mujeres y 32% en hombres. 
                      
                      
                    </p>
                    <div class="text-right">
                      <a href="#section_8" class="btn btn-primary">Ver tipos de obesidad</a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
  
        <section id="section_8" class="tm-section-4">
          <div class="container-fluid">
            <div class="row">
              <div class="col-12">
                <div class="tm-section-text-container-7 tm-bg-dark-gray">
                  <h2 class="tm-section-title-mb tm-text-primary-bright">
                    ¿COMO PREVENIR LA OBESIDAD
                  </h2>
                  <hr
                    class="tm-hr-mb tm-hr-primary-bright tm-section-underline ml-0"
                  />
                  <p class="tm-p-mb">
                    Hay dos áreas concretas y claras para la prevención de la obesidad, una es la dieta equilibrada y la otra el ejercicio físico.

                    Dieta
                    En la dieta sana deben primar los alimentos bajos en calorías como fruta y vegetales, pero sin abandonar el equilibrio alimentario con alimentos ricos en proteínas hidratos de carbono y grasas.
                  </p>
                  <p class="tm-p-mb">
                    Una dieta equilibrada debe consistir en:
                    <ol type="circle">
                   <li type="disc">Los hidratos de carbono nos aportarán al menos un 55-60 % del aporte calórico total.</li> 
                    <li type="disc"> Las proteínas un 15 % del aporte calórico total, no siendo nunca inferior la cantidad total de proteínas ingeridas a 0,75 gr/día y de alto valor biológico.</li> Las proteínas un 15 % del aporte calórico total, no siendo nunca inferior la cantidad total de proteínas ingeridas a 0,75 gr/día y de alto valor biológico.
                     <li type="disc">Las grasas no sobrepasarán el 30 % de las calorías totales ingeridas.</li> 
                </ol>    
                </p>
                <p class="tm-p-mb">
                  Los hidratos de carbono sirven como material combustible o energético inmediato, por ello debe de tomarse antes de
                   hacer ejercicio, es frecuente el comer pasta antes de ejercicios intensos. Lo que no se consume de ellos se 
                   trasforma en grasa por ello es importante calcular el gasto de energía para saber cuantos hidratos de carbono son necesarios. En esta área es muy adecuado incluir los cereales integrales o completos como el pan integral o el arroz integral, los cereales de granos múltiples, etc…
                </p>
                <p class="tm-p-mb">
                  Las proteínas son importantes para el crecimiento de los tejidos, además sirven para formar enzimas que actúan en todos los mecanismos del metabolismo (actúan como catalizadores en los fenómenos de formar energía), y sirven para mantener la inmunidad. Sirven como soporte de estructuras y en la función de mantener la actividad de los músculos, mantener la temperatura, etc...Las proteínas las encontraremos en la carne, los huevos, el pescado, la leche y derivados pero descremados, las legumbres, etc...Las proteínas no se acumulan por ello hay que tomarlas a diario, si se hace ejercicio son necesarias unos 50 a 70 gramos diarios.
<br><br>
                  Las grasas se acumulan y se utilizarán como reserva de energía para cuando falten los hidratos de carbono, pero es mejor que se utilicen unos principios y otros en cada momento para lo que son, por ello una dieta equilibrada tendrá un aporte bajo en grasas, y mayor en hidratos de carbono cuando sean necesarios. Para tomar grasas se dará prioridad a las no saturadas que se encuentran en los aceites vegetales (de oliva, maíz, soja y girasol) y las de alto contenido en ácidos grasos saturados de origen animal (manteca, nata, tocino, etc.).
                  No se debe olvidar la necesidad de beber agua al menos 1,5 litros al día, teniendo en cuenta que parte de los alimentos también la contienen.
    <br><br>              
                  La fibra es muy importante y al menos se debe de tomar 22 gramos al día. Esta se encuentra en las frutas, verduras y en los cereales integrales. Luego hay “alimentos” que se debe evitar o tomar en pequeñas cantidades como la sal o el alcohol. Solo se recomienda un vaso de vino al día en una dieta correcta.
                </p>
                  <div class="mb-2">
                    <a href="act_1.jsp" class="btn btn-primary">INCIAR ACTIVIDAD</a>
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
