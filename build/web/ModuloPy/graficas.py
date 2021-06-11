import pandas as pd
import webbrowser




datos1 = pd.read_csv("Datos1.csv")
df1 = pd.DataFrame(datos1)
script1 = ""
i1=0
while i1<12:
        script1 = script1+"{x:'"+datos1['Anos'].loc[i1]+"', y:"+str(datos1['Peso'].loc[i1])+"},\n"
        i1+=1
print (script1)
df1.groupby('Anos')['Peso'].sum().plot(kind='line',title='Peso ideal de un niño respecto a su edad',color='red')






datos2 = pd.read_csv("Datos2.csv")
df2 = pd.DataFrame(datos2)
script2 = ""
i2=0
while i2<10:
        script2 = script2+"{x:'"+str(datos2['Municipalidad'].loc[i2])+"', y:"+str(datos2['Peso'].loc[i2])+"},\n"
        i2+=1
print (script2)




datos3 = pd.read_csv("Datos3.csv")
df3 = pd.DataFrame(datos3)
script3 = ""
i3=0
while i3<14:
        script3 = script3+"{x:'"+str(datos3['Ano'].loc[i3])+"', y:"+str(datos3['Porcentaje'].loc[i3])+"},\n"
        i3+=1
print (script3)



datos4=pd.read_csv("Datos4.csv")
df4 = pd.DataFrame(datos4)
script4 = ""
i4=0
while i4<3:
        script4 = script4+"{x:'"+str(datos4['Edad'].loc[i4])+"', Hombres:"+str(datos4['PorcentajeH'].loc[i4])+", Mujeres:"+str(datos4['PorcentajeM'].loc[i4])+"},\n"
        i4+=1
print (script4)


datos5 = pd.read_csv("Datos5.csv")
df5 = pd.DataFrame(datos5)
script5 = ""
i5=0
while i5<9:
        script5 = script5+"{value:'"+str(datos5['Porcentaje'].loc[i5])+"', label:'"+str(datos5['Alimentos'].loc[i5])+"'},\n"
        i5+=1
print(script5)



datos6=pd.read_csv("Datos6.csv")
df6 = pd.DataFrame(datos6)
script6 = ""
i6=0
while i6<3:
        script6 = script6+"{x:'"+str(datos6['Tipo'].loc[i6])+"', Ninos:"+str(datos6['PromedioH'].loc[i6])+", Ninas:"+str(datos6['PromedioM'].loc[i6])+"},\n"
        i6+=1
print(script6)




datos7 = pd.read_csv("datosanalizar.csv")
df7 = pd.DataFrame(datos7)
script7 = ""
i7=0
while i7<12:
        script7 = script7+"{x:'"+str(datos7['Ano'].loc[i7])+"', y:"+str(datos7['Poblacion_obesa'].loc[i7])+", z:"+str(i7+1)+"},\n"
        i7+=1
print (script7)


f = open('graficas.html','w')

mensaje = """<html>
    <head>
        <title>GRAFICAS</title>
        <meta charset='utf-8'>
        <link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' integrity='sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T' crossorigin='anonymous'>
        <link rel='stylesheet' type='text/css' href='morris.css'>	
        <script src='http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js'></script>
        <script src='http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js'></script>
        <script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' integrity='sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM' crossorigin='anonymous'></script>	
        <script src='Morris.js'></script>
        <script>    
      

function grafica1(){
          new Morris.Line({
          element: 'graph1',
  data: [ 
      """+script1+"""
      ],
    xkey: 'x',
      parseTime: false,
      ykeys: ['y'],
    labels: ['Peso'],
    lineColors:['black']
    });
  
    document.getElementById('div1').style.display='';
    document.getElementById('boton1').style.display='none';
}




function grafica2(){
  new Morris.Bar({
  element: 'graph2',
  data: [
      """+script2+""" 
      ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Peso'],
  barColors: function (row, series, type) {
    if (type === 'bar') {
      var red = Math.ceil(255 * row.y / this.ymax);
      return 'rgb(' + red + ',0,0)';
    }
    else {
      return '#000';
    }
  }
});
    document.getElementById('div2').style.display='';
    document.getElementById('boton2').style.display='none';
}




function grafica3(){
  new Morris.Area({
  element: 'graph3',
  data: [
      """+script3+"""
      ],
  xkey: 'x',
  ykeys: ['y'],
  labels: ['Tendencia en porcentaje']
}).on('click', function(i, row){
  console.log(i, row);
});

    document.getElementById('div3').style.display='';
    document.getElementById('boton3').style.display='none';
}




function grafica4(){
  var day_data = [
      """+script4+""" 
      ];
new Morris.Bar({
  element: 'graph4',
  data: day_data,
  xkey: 'x',
  ykeys: ['Hombres', 'Mujeres'],
  labels: ['Hombres', 'Mujeres'],
  xLabelAngle: 60
});

document.getElementById('div4').style.display='';
document.getElementById('boton4').style.display='none';
}




function grafica5(){

  new Morris.Donut({
  element: 'graph5',
  data: [
      """+script5+"""
      ],
  formatter: function (x) { return x + "%"}
}).on('click', function(i, row){
  console.log(i, row);
});

document.getElementById('div5').style.display='';
document.getElementById('boton5').style.display='none';
}




function grafica6(){
  var day_data = [ 
      """+script6+"""
      ];
new Morris.Bar({
  element: 'graph6',
  data: day_data,
  xkey: 'x',
  ykeys: ['Ninos', 'Ninas'],
  labels: ['Ninos', 'Ninas'],
  xLabelAngle: 0

});

document.getElementById('div6').style.display='';
document.getElementById('boton6').style.display='none';
}




function grafica7(){
  new Morris.Line({
  element: 'graph7',
  data: [ 
      """+script7+"""
      ],
  xkey: 'x',
      parseTime: false,
      ykeys: ['y'],
    labels: ['Poblacion con obesidad'],
    lineColors:['black']
    });
  
      document.getElementById('div7').style.display='';
    document.getElementById('boton7').style.display='none';
}





  </script>
  </head>
    <body>
      <h1>Gráficas</h1>
      <br>
      <h3 texto1></h3>



      <hr style="border-color:rgb(2, 192, 240);">
      <br>
      <br>
      <br>

      <p><h2>Peso ideal de un niño respecto a su edad</h2></p>
      <div id='graph1'>
        <div id="div1" style="display:none">
        <br>
        <br>
        </div>
      </div>
      <div id='botones'>
            <input type='button' style="display:'';" id='boton1' value='Ver'  class="rainbow-button"  onclick='grafica1()'>      
      </div>

      <br>
      <br>
      <br>
      <hr style="border-color:rgb(2, 192, 240);">
      <br>
      <br>
      <br>

      <p><h2>Promedio del peso de niños según el municipio de la CDMX</h2></p>
      <div id='graph2'>
        <div id="div2" style="display:none">
        <br>
        <br>
        </div>
      </div>
      <div id='botones2'>
        <input type='button' style="display:'';" id='boton2' value='Ver'  class="rainbow-button"  onclick='grafica2()'>
      </div>

      <br>
      <br>
      <br>
      <hr style="border-color:rgb(2, 192, 240);">
      <br>
      <br>
      <br>

      <p><h2>Tasa de obesidad en México</h2></p>
      <div id='graph3'>
        <div id="div3" style="display:none">
        <br>
        <br>
        </div>
      </div>
      <div id='botones3'>
        <input type='button' style="display:'';" id='boton3' value='Ver'  class="rainbow-button"  onclick='grafica3()'>
      </div>

      <br>
      <br>
      <br>
      <hr style="border-color:rgb(2, 192, 240);">
      <br>
      <br>
      <br>

      <p><h2>Porcentaje de prevalencia de sobrepeso en la población de 5 años o más por grupos de edad y sexo</h2></p>
      <div id='graph4'>
        <div id="div4" style="display:none">
        <br>
        <br>
        </div>
      </div>
      <div id='botones4'>
        <input type='button' style="display:'';" id='boton4' value='Ver'  class="rainbow-button"  onclick='grafica4()'>
      </div>

      <br>
      <br>
      <br>
      <hr style="border-color:rgb(2, 192, 240);">
      <br>
      <br>
      <br>

      <p><h2>Alimentos más consumidos por niños en México</h2></p>
      <div id='graph5'>
        <div id="div5" style="display:none">
        <br>
        <br>
        </div>
      </div>
      <div id='botones5'>
        <input type='button' style="display:'';" id='boton5' value='Ver'  class="rainbow-button"  onclick='grafica5()'>
      </div>

      <br>
      <br>
      <br>
      <hr style="border-color:rgb(2, 192, 240);">
      <br>
      <br>
      <br>

      <p><h2>Porcentaje de niños y niñas con obesidad y sobrepeso en México</h2></p>
      <div id='graph6'>
        <div id="div6" style="display:none">
        <br>
        <br>
        </div>
      </div>
      <div id='botones6'>
        <input type='button' style="display:'';" id='boton6' value='Ver'  class="rainbow-button"  onclick='grafica6()'>
      </div>

      <br>
      <br>
      <br>
      <hr style="border-color:rgb(2, 192, 240);">
      <br>
      <br>
      <br>

      <p><h2>Prediccion sobre el numero de casos de obesidad en Mexico hasta 2025, aqui aplicamos una prediccion con la libreria "sklearn.neural_network", se estuvo entrenando datos sobre la cantidad de obesidad en mexico, para haci poder generar una prediccion a 5 años del aumento de obesidad en mexico</h2></p>
      <div id='graph7'>
        <div id="div7" style="display:none">
        <br>
        <br>
        </div>
      </div>
      <div id='botones7'>
        <input type='button' style="display:'';" id='boton7' value='Ver'  class="rainbow-button"  onclick='grafica7()'>
      </div>

      <br>
      <br>
      <br>
      <hr style="border-color:rgb(2, 192, 240);">
      <br>

      </div>
    </body>
</html>"""
f.write(mensaje)
f.close()

webbrowser.open_new_tab('graficas.html')