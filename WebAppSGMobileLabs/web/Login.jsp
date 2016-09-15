
<%@page import="com.sun.tools.ws.processor.model.Model"%>
<%@page import="com.sun.tools.xjc.model.Model"%>
<%@page import="Model.Consultas"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <jsp:include page="encabezado.jsp"></jsp:include>
       <title>Aplicacion WEB</title>
         
    </head>
    <body>
        <div>Ingreso al Sistema</div>
        <form name="inicioSession" action="Login.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Usario:</td>
                        <td><input type="text" name="Nombres" id="Nombres" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td><input type="Clave" name="Clave" id="Clave" value="" size="10" /></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="ingresar" name="ingresar" id="ingresar" /></td>
                        
                    </tr>
                </tbody>
            </table>
            
        </form>
       <div id="mensaje-ingreso"></div>
      <%
        Consultas consul = new Consultas( );
        if(request.getParameter("ingresar")!=null){
           String nombre=request.getParameter("Nombres");
           String clave=request.getParameter("Clave");
           HttpSession sesion = request.getSession();
           switch(consul.ValidarUsuario(nombre, clave)){
               case 1:
                
                   sesion.setAttribute("Nombres", nombre);
                   sesion.setAttribute("IdPerfil", "1");
                   sesion.setAttribute("Clave", clave);
                   response.sendRedirect("indexMain.jsp");
                   break;
                   
               case 2:
                   sesion.setAttribute("Nombres", nombre);
                   sesion.setAttribute("IdPerfil", "2");
                   sesion.setAttribute("Clave", clave);
                   response.sendRedirect("indexUser.jsp");
                  
                   break;
                       
                   default:
                   out.write("usuario no existe, o contraseña inválida");
                   break;
                   
                   
           }
        
        }
        %>
        
        
        
       
    </body>
</html>
