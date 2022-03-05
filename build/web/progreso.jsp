
<%@page import="Modelo.progreso"%>
<%@page import="java.util.List"%>
<%@page import="Control.AccionesPRO"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="Modelo.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session = "true"%>


<%

 
 
 String nombreUsuario = (String)session.getAttribute("Usuario");
 
 
 List<progreso> lista= AccionesPRO.getAllUsuarios(nombreUsuario);
 List<progreso> lista2= AccionesPRO.getPeso(nombreUsuario);



%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Puntajes</title>
        <link rel="stylesheet" href="css/1/estilos.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
         <link rel="stylesheet" href="css/1/tablas.css">
         
        <link rel='stylesheet' type='text/css' href='css/morris.css'>	
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js'></script>
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script>	
        <script src='js/Morris.js'></script>
        
       
       
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
               
                <li class=""><a href="progreso.jsp">PROGRESO</a></li>
                
                
                <li class=""><a href="perfil.jsp">Bienvenido: <input type="hidden" name="id_usu">- <input type="hidden" name="usuario"> <%=nombreUsuario%></a></li>
                
              </ul>
            </div>
          </div>
        </nav>
        
    </header>
    <%for(progreso e: lista2){%>
    <script type="text/javascript">
        //definimos la funcion
        function calculaIMC()
        {
        //declaramos las variables
       
       //hacemos la llamada a los datos introducidos
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
       document.getElementById("imc").value=leyenda;
        }
        function grafica7(){
  new Morris.Line({
  element: 'graph7',
  data: [ 
      {x:'MES  1', y:<%=e.getPeso()  %>, z:1},
{x:'MES 2', y:<%=e.getPeso()  %>-2, z:2},
{x:'MES 3', y:<%=e.getPeso()  %>-3, z:3},
{x:'MES 4', y:<%=e.getPeso()  %>-4, z:4},
{x:'MES 5', y:<%=e.getPeso()  %>-6, z:5},
{x:'MES 6', y:<%=e.getPeso()  %>-8, z:6},
{x:'MES 7', y:<%=e.getPeso()  %>-9, z:8},
{x:'MES 8', y:<%=e.getPeso()  %>-10, z:10},
{x:'MES 9', y:<%=e.getPeso()  %>-14, z:11},


      ],
  xkey: 'x',
      parseTime: false,
      ykeys: ['y'],
    labels: ['PESO'],
    lineColors:['black']
    });
  
      document.getElementById('div7').style.display='';
    document.getElementById('boton7').style.display='none';
}
        
        

       </script>
        <%}%>
    <br><br><br><br><br>
        <h1>PROGRESO</h1>

	<div id="main-container">
        
         

		<table>
			<thead>
				<tr>
					<th>MES</th>
                    <th>PESO</th>
                    <th>ESTATURA</th>
                    <th>MEDIDA DE LA CINTURA</th>
                    <th>IMC</th>
                    <th>IMG</th>
                    <th>ESTATUS</th>
				</tr>
			</thead>
                      <%for(progreso e: lista){%>
			<tr>
				<td><%=e.getMes() %> mes</td>
                                <td id="peso"><%=e.getPeso() %> kg</td>
                                <td id="altura"><%=e.getEstatura() %> cm</td>
                                <td><%=e.getCintura() %> cm</td>
                                <td id=""><%=e.getImc() %></td>
                                <td><%=e.getIgc() %></td>
                                <td id=""> <input type="text" name="imc" id="imc" size="10" maxlength="40"></td>
			</tr>
			
                       <%}%>
		</table>
    <BR><BR></BR>
    <button type="button" value="Calcular IMC" onClick="calculaIMC()">VER ESTATUS</button>
  </BR>
    <div id='graph7'>
      <div id="div7" style="display:none">
      <br>
      <br>
      </div>
    </div>
    <div id='botones7'>
      <input type='button' style="display:'';" id='boton7' value='¿CUANTOS KILOS BAJARE?'  class="rainbow-button"  onclick='grafica7()'>
    </div>
    <BR></BR>
    
    <br>
	</div>
         
    <br><br><br><br><br><br><br><br><br><br>
    
</body>
</html>



