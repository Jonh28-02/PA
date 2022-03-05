<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session = "true"%>

<%

 
 //String nombre = (String)session.getAttribute("Usuario");
 //session2.setAttribute("Usuario", usuario);
 String nombreUsuario = (String)session.getAttribute("Usuario");
 //Usuario e  = new Usuario();
 //sessionUSU.setAttribute("Usuario", e.getNombre_usu());
 

 
 



%>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RUTINAS</title>
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
                <li class=""><a href="rutina.jsp">RUTINAS</a></li>
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
        
        <div class="form">
            <h1>MESES</h1>
            
            
            <a href="semanas.jsp">MES 1</a>
            <br><br>
            <a href="semanas.jsp">MES 2</a>
            <br><br>
            <a href="semanas.jsp">MES 3</a>
            <br><br>
            <a href="semanas.jsp">MES 4</a>
            <br><br>
            <a href="semanas.jsp">MES 5</a>
            <br><br>
            <a href="semanas.jsp">MES 6</a>
            <br><br>
            <a href="semanas.jsp">MES 7</a>
            <br><br>
            

            <p class="warnings" id="warnings"></p>
        </div>
    </form>
    <br><br><br><br>
    


    <script src="js/jquery.min.js"></script>
    <script src="js/wow.js"></script>
    <script src="js/bootstrap.min.js"></script>
  
</body>
</html>