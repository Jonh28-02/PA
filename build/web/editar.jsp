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
                <li class=""><a href="leccion3.jsp">FORO</a></li>
                
                <li class=""><a href="perfil.jsp">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden" name="usuario"> <%=nombreUsuario%></a></li>
                
              </ul>
            </div>
          </div>
        </nav>
        
    </header>
    <br><br><br>
    <br><br><br><br><br>
      
    <form action="editar" method="POST" id="registro">
        <%for(Usuario e: lista){%>
        <div class="form">
            <h1>EDITAR</h1>
            <div class="grupo">
                <input type="name" name="nom_usu" id="nom_usu" value="<%=e.getNom_usu() %>" ><span class="barra"></span>
                <label for="">Nombre</label>
            </div>
            <div class="grupo">
              <input type="text" name="appat" id="appat" value="<%=e.getAppat() %>"><span class="barra"></span>
              <label for="">Apellido Paterno</label>
          </div>
          <div class="grupo">
            <input type="text" name="apmat" id="apmat" value="<%=e.getApmat() %>" > <span class="barra"></span>
            <label for="">Apellido Materno</label>
        </div>
          <div class="grupo">
            <input type="text" name="nom" id="nom" value="<%=e.getNom() %>"><span class="barra"></span>
            <label for="">Nombre de usuario</label>
        </div>
        <div class="grupo">
          <input type="text" name="genero" id="genero" value="<%=e.getGenero() %>" ><span class="barra"></span>
          <label for="">Genero</label>
      </div>
      <div class="grupo">
        <input type="text" name="edad" id="edad" value="<%=e.getEdad() %>"><span class="barra"></span>
        <label for="">Edad</label>
    </div>
          
            <div class="grupo">
                <input type="password" name="password_usu" id="password_usu" value="<%=e.getPassword() %>"><span class="barra"></span>
                <label for="">Password</label>
            </div>
            <%}%>
            <button type="submit">Guardar</button>
            <p class="warnings" id="warnings"></p>
        </div>
    </form>
    <br><br><br><br>
    


    <script src="js/jquery.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
</body>
</html>