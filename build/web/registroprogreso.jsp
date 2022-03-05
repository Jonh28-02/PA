<%-- 
    Document   : MenuUsu
    Created on : 8/06/2021, 04:53:59 PM
    Author     : river
--%>

<%@page import="Control.AccionesUsuario"%>
<%@page import="java.util.List"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session = "true"%>

<%

 
 //String nombre = (String)session.getAttribute("Usuario");
 //session2.setAttribute("Usuario", usuario);
 String nombreUsuario = (String)session.getAttribute("Usuario");
 //Usuario e  = new Usuario();
 //sessionUSU.setAttribute("Usuario", e.getNombre_usu());
 
List<Usuario> lista= AccionesUsuario.getAllUsuarios(nombreUsuario);
 
 



%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar</title>
    <link rel="stylesheet" href="css/1/estilos.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
   
   
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
              <a class="navbar-brand" href="#"><span class="logo-dec">FIT LINE</span></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
              <ul class="nav navbar-nav navbar-right">
                <li class="active"><a href="MenuUsu.jsp">Inicio</a></li>
                <li class=""><a href="leccion1.jsp">RUTINAS</a></li>
                <li class=""><a href="progreso.jsp">PROGRESO</a></li>
                <li class=""><a href="http://localhost:3000/">FORO</a></li>
                
                <li class=""><a href="perfil.jsp">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden" name="usuario"> <%=nombreUsuario%></a></li>
                
              </ul>
            </div>
          </div>
        </nav>
        
    </header>
    <script type="text/javascript">
        //definimos la funcion
        function calculaIMC()
        {
        //declaramos las variables
       var peso, altura, cintura, imc, igc, leyenda;
       //hacemos la llamada a los datos introducidos
        peso=document.getElementById("peso").value;
        altura=document.getElementById("estatura").value/100;
        cintura=document.getElementById("cintura").value/100;
       //calculamos el imc
        imc=peso/(altura*altura);
        igc = cintura/(altura*altura)+18
       //enviamos el resultado a la caja correspondiente y lo reducimos a 2 decimales
        document.getElementById("imc").value=imc.toFixed(0);
        document.getElementById("igc").value=igc.toFixed(0);
      }
       </script>
    
    <br><br><br>
    <br><br><br><br><br>
      
    <form action="guardarprogreso" method="POST" id="registro">
        
        <div class="form">
            <h1>PROGRESO</h1>
            <br>
            <h2>Para llevar un control de tu progreso mensual con las rutinas, ingresa los datos a continuacion.</h2>
            <div class="grupo">
                <input type="name" name="mes" id="mes" value="" ><span class="barra"></span>
                <label for="">MES</label>
            </div>
            <div class="grupo">
              <input type="text" name="peso" id="peso" value="" placeholder="EN KG"><span class="barra"></span>
              <label for="">PESO</label>
          </div>
          <div class="grupo">
            <input type="text" name="estatura" id="estatura" value="" placeholder="EN CM"> <span class="barra"></span>
            <label for="">ESTATURA </label>
        </div>
          <div class="grupo">
            <input type="text" name="cintura" id="cintura" value="" placeholder="EN CM"<span class="barra"></span>
            <label for="">MEDIDA CINTURA</label>
        </div>
        <div class="grupo">
          <input type="text" name="imc" id="imc" value="" ><span class="barra"></span>
          <label for="">IMC</label>
      </div>
      <div class="grupo">
        <input type="text" name="igc" id="igc" value=""><span class="barra"></span>
        <label for="">IGC</label>
    </div>
          
            
            <button type="button" value="Calcular IMC" onClick="calculaIMC()">GENERAR IMC Y IMG</button>
            <br>
            <button type="submit">Guardar Mes</button>
            <br>
            <a href="progreso.jsp">VER PROGRESO</a>
            <p class="warnings" id="warnings"></p>
        </div>
    </form>
    
    <br><br><br><br>
    


    <script src="js/jquery.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
</body>
</html>