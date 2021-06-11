<%-- 
    Document   : act_4
    Created on : 10/06/2021, 03:19:32 AM
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
    <title>ACTIVIDAD-4</title>
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script type="text/javascript">
      //definimos la funcion
      function calculaIMC()
      {
      //declaramos las variables
     var peso, altura, imc, leyenda;
     //hacemos la llamada a los datos introducidos
      peso=document.getElementById("peso").value;
      altura=document.getElementById("altura").value/100;
     //calculamos el imc
      imc=peso/(altura*altura);
     //enviamos el resultado a la caja correspondiente y lo reducimos a 2 decimales
      document.getElementById("imc").value=imc.toFixed(2);
     //mediante if comparamos el resultado para determinar si es correcto el peso
     if(imc<=20.5)
      {
      //determinamos el defecto en peso y definimos el comentario
      leyenda="Estas delgado. Debes engordar " + (altura*altura*20.5-peso).toFixed(1) + " kilos";
      }
      else if(imc>=25.5)
     {
     //determinamos el exceso en peso y definimos el comentario
     leyenda="Tienes sobrepeso. Debes adelgazar "+(peso-altura*altura*25.5).toFixed(1) +" kilos";
     }
     else
      {
      leyenda="Estas en tu peso ideal";
      }
     //enviamos el comentario a la caja correspondiente
     document.getElementById("leyenda").value=leyenda;
      }
     </script>
   
   
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
    <br><br><br><br><br>
      
    <form action="validarUsuario" method="POST" id="formulario">
        
        <div class="form">
            <h1>ACTIVIDAD DE CALCULO DE IMC</h1>
            <div class="grupo">
              <input type="text" name="peso" id="peso" size="3" maxlength="4"></span>
                <label for="">PESO EN KG:</label>
            </div>
            <div class="grupo">
              <input type="text" name="altura" id="altura" size="3" maxlength="3"><span class="barra"></span>
                <label for="">ALTURA EN CM:</label>
            </div>
            
            
            <button type="button" value="Calcular IMC" onClick="calculaIMC()">CALCULAR IMC</button>
            <div class="grupo">
              <input type="text" name="imc" id="imc" size="10" maxlength="15"><span class="barra"></span>
                <label for="">IMC:</label>
            </div>
            <div class="grupo">
              <input type="text" name="leyenda" id="leyenda" size="42"><span class="barra"></span>
                <label for="">TU IMC DICE QUE:</label>
            </div>
        </div>
    </form>
    <br><br><br><br><br><br><br>
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

   
    <script src="js/jquery.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/login.js"></script>
</body>
</html>