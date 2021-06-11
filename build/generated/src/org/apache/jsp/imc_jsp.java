package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javax.servlet.http.HttpSession;
import Modelo.Usuario;

public final class imc_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


 
 //String nombre = (String)session.getAttribute("Usuario");
 //session2.setAttribute("Usuario", usuario);
 String nombreUsuario = (String)session.getAttribute("Usuario");
 //Usuario e  = new Usuario();
 //sessionUSU.setAttribute("Usuario", e.getNombre_usu());
 
 




      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"es\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <title>IMC</title>\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/estilos.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/font-awesome.min.css\">\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/bootstrap.min.css\">\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("      //definimos la funcion\n");
      out.write("      function calculaIMC()\n");
      out.write("      {\n");
      out.write("      //declaramos las variables\n");
      out.write("     var peso, altura, imc, leyenda;\n");
      out.write("     //hacemos la llamada a los datos introducidos\n");
      out.write("      peso=document.getElementById(\"peso\").value;\n");
      out.write("      altura=document.getElementById(\"altura\").value/100;\n");
      out.write("     //calculamos el imc\n");
      out.write("      imc=peso/(altura*altura);\n");
      out.write("     //enviamos el resultado a la caja correspondiente y lo reducimos a 2 decimales\n");
      out.write("      document.getElementById(\"imc\").value=imc.toFixed(2);\n");
      out.write("     //mediante if comparamos el resultado para determinar si es correcto el peso\n");
      out.write("     if(imc<=20.5)\n");
      out.write("      {\n");
      out.write("      //determinamos el defecto en peso y definimos el comentario\n");
      out.write("      leyenda=\"Estas delgado. Debes engordar \" + (altura*altura*20.5-peso).toFixed(1) + \" kilos\";\n");
      out.write("      }\n");
      out.write("      else if(imc>=25.5)\n");
      out.write("     {\n");
      out.write("     //determinamos el exceso en peso y definimos el comentario\n");
      out.write("     leyenda=\"Tienes sobrepeso. Debes adelgazar \"+(peso-altura*altura*25.5).toFixed(1) +\" kilos\";\n");
      out.write("     }\n");
      out.write("     else\n");
      out.write("      {\n");
      out.write("      leyenda=\"Estas en tu peso ideal\";\n");
      out.write("      }\n");
      out.write("     //enviamos el comentario a la caja correspondiente\n");
      out.write("     document.getElementById(\"leyenda\").value=leyenda;\n");
      out.write("      }\n");
      out.write("     </script>\n");
      out.write("   \n");
      out.write("   \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("  <header id=\"main-header\">\n");
      out.write("    <nav class=\"navbar navbar-default navbar-fixed-top\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"navbar-header\">\n");
      out.write("          <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#myNavbar\">\n");
      out.write("          <span class=\"icon-bar\"></span>\n");
      out.write("          <span class=\"icon-bar\"></span>\n");
      out.write("          <span class=\"icon-bar\"></span>\n");
      out.write("        </button>\n");
      out.write("          <a class=\"navbar-brand\" href=\"#\">ON HEALT<span class=\"logo-dec\">LINE</span></a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"collapse navbar-collapse\" id=\"myNavbar\">\n");
      out.write("          <ul class=\"nav navbar-nav navbar-right\">\n");
      out.write("            <li class=\"active\"><a href=\"MenuUsu.jsp\">Inicio</a></li>\n");
      out.write("            <li class=\"\"><a href=\"leccion1.jsp\">Leccion 1</a></li>\n");
      out.write("            <li class=\"\"><a href=\"leccion2.jsp\">Leccion 2</a></li>\n");
      out.write("            <li class=\"\"><a href=\"leccion3.jsp\">Leccion 3</a></li>\n");
      out.write("            <li class=\"\" ><a href=\"leccion4.jsp\">Leccion 4</a></li>\n");
      out.write("            <li class=\"\" ><a href=\"\">IMC</a></li>\n");
      out.write("            <li class=\"\" ><a href=\"puntajes.jsp\">Puntajes</a></li>\n");
      out.write("            <li class=\"\" ><a href=\"\">Graficas</a></li>\n");
      out.write("            <li class=\"\"><a href=\"perfil.jsp\">Bienvenido: <input type=\"hidden\" name=\"id_usu\">- <input type=\"hidden\" name=\"usuario\"> ");
      out.print(nombreUsuario);
      out.write("</a></li>\n");
      out.write("            \n");
      out.write("          </ul>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </nav>\n");
      out.write("    \n");
      out.write("</header>\n");
      out.write("    <br><br><br>\n");
      out.write("    <br><br><br><br><br>\n");
      out.write("      \n");
      out.write("    <form action=\"\" method=\"POST\" id=\"formulario\">\n");
      out.write("        \n");
      out.write("        <div class=\"form\">\n");
      out.write("            <h1>REGISTRO DE IMC</h1>\n");
      out.write("            <div class=\"grupo\">\n");
      out.write("              <input type=\"text\" name=\"peso\" id=\"peso\" size=\"3\" maxlength=\"4\"></span>\n");
      out.write("                <label for=\"\">PESO EN KG:</label>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"grupo\">\n");
      out.write("              <input type=\"text\" name=\"altura\" id=\"altura\" size=\"3\" maxlength=\"3\"><span class=\"barra\"></span>\n");
      out.write("                <label for=\"\">ALTURA EN CM:</label>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <button type=\"button\" value=\"Calcular IMC\" onClick=\"calculaIMC()\">CALCULAR IMC</button>\n");
      out.write("            <div class=\"grupo\">\n");
      out.write("              <input type=\"text\" name=\"imc\" id=\"imc\" size=\"10\" maxlength=\"15\"><span class=\"barra\"></span>\n");
      out.write("                <label for=\"\">IMC:</label>\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <button type=\"button\" value=\"Calcular \">Guardar</button>\n");
      out.write("            <div class=\"grupo\">\n");
      out.write("            </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    </form>\n");
      out.write("    \n");
      out.write("    <br><br><br><br><br><br><br>\n");
      out.write("    <footer id=\"footer\">\n");
      out.write("      <div class=\"container\">\n");
      out.write("        <div class=\"row text-center\">\n");
      out.write("          <p>&copy; ON HEALT LINE</p>\n");
      out.write("          <div class=\"credits\">\n");
      out.write("        \n");
      out.write("            REPOSITORIO:<a href=\"https://github.com/Jonh28-02/PA_EQ8_4IV9\"> GitHub</a>\n");
      out.write("          </div>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("    </footer>\n");
      out.write("\n");
      out.write("   \n");
      out.write("    <script src=\"js/jquery.min.js\"></script>\n");
      out.write("    <script src=\"js/wow.js\"></script>\n");
      out.write("    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/login.js\"></script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
