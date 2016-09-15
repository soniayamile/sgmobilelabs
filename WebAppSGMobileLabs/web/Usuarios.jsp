<%-- 
    Document   : Usuarios
    Created on : 08-ago-2016, 18:13:35
    Author     : USER
--%>

<%@page import="Model.Usuario"%>
<%@page import="Model.Datos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="encabezado.jsp"></jsp:include>
          <link rel="stylesheet" type="text/css" href="css/menu.css">
        <title>Sistema de Facturación</title>
    </head>
    <body>
    <%
       // variable que muestra los mensajes del sistema
       String Mensaje = "";
        
     // identificamos el boton que el usuario presiono
     boolean consultar = false;
     boolean nuevo = false;
     boolean modificar = false;
     boolean borrar = false;
     boolean limpiar = false;
     boolean listar = false;
     
     if(request.getParameter("consultar") != null)  { 
         consultar = true;
     }
     if(request.getParameter("nuevo") != null) {
         nuevo = true;
     }
     if(request.getParameter("modificar") != null)  {
         modificar = true;
     }
     if(request.getParameter("borrar") != null)   {
         borrar = true;
     }
     if(request.getParameter("limpiar") != null)  {
         limpiar = true;
     }
     if(request.getParameter("listar") != null)  { 
         listar = true;
     }
     
     // obtenemos el valor como fue llamado el formulario
     
     String Id_Usuario = "";
     String Nombres = "";
     String Apellidos = "";
     String Clave = "";
     String Confirmación = "";
     String Perfil = "";
     String Foto = "";
   
     if(request.getParameter("Id_Usuario") != null) {
         Id_Usuario = request.getParameter("Id_Usuario");
     }
     if(request.getParameter("Nombres") != null) {
         Nombres = request.getParameter("Nombres");
     }
     if(request.getParameter("Apellidos") != null) {
         Apellidos = request.getParameter("Apellidos");
     }
     if(request.getParameter("Clave") != null) {
         Clave = request.getParameter("Clave");
     }
     if(request.getParameter("Confirmación") != null)  {
         Confirmación = request.getParameter("Confirmación");
     }
     if(request.getParameter("Perfil") != null) {
         Perfil = request.getParameter("Perfil");
     }
     if(request.getParameter("Foto") != null) {
         Foto = request.getParameter("Foto");
     }
     
       // si presiona el boton consultar
       if(consultar)  {
             if(Id_Usuario == "")   {
        Mensaje = "Debe ingresar un ID de usuario";
                 
          } else {
             Datos misDatos = new Datos();
             Usuario miUsuario = misDatos.getUusario(Id_Usuario);
             if(miUsuario == null) {
              Mensaje = "Usuario no existe";
        }      else {
                 Id_Usuario = miUsuario.getId_Usuario();
                 Nombres = miUsuario.getNombre();
                 Apellidos = miUsuario.getApellido();
                 Clave = miUsuario.getClave();
                 Confirmación = miUsuario.getClave();
                 Foto = miUsuario.getFoto();
                 
        }
       }
     }
     
    %>    
        <h1>Usuarios</h1>
        <form name="usuarios" id="usuarios" action="Usuario.jsp" method="POST">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Id_Usuario:</td>
                        <td><input type="text" name="Id_Usuario" id="Id_Usuario" value="<%=Id_Usuario%>" size="10" /></td>
                    </tr>
                    <tr>
                        <td>Nombres:</td>
                        <td><input type="text" name="Nombres" id="Nombres" value="<%=Nombres%>" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Apellidos:</td>
                        <td><input type="text" name="Apellidos" id="Apellidos" value="<%=Apellidos%>" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Clave:</td>
                        <td><input type="password" name="Clave" id="Clave" value="<%=Clave%>" size="10" /></td>
                    </tr>
                    <tr>
                        <td>Confirmación:</td>
                        <td><input type="password" name="Confirmacion" id="Confirmacion" value="<%=Clave%>" size="10" /></td>
                    </tr>
                    <tr>
                        
                        <td>Perfil:</td>
                        <td><select name="Perfil" id="Perfil">
                                <option value="0">Seleccione perfil</option>
                                <option value="1">Administrador</option>
                                <option value="2">Empleado</option>
                            </select></td>
                    </tr>
                    <tr>
                        <td>Foto:</td>
                        <td><input type="file" name="Foto" id="Foto" value="<%=Foto%>" /></td>
                    </tr>
                </tbody>
            </table>
            <br>
        <jsp:include page="Botones.jsp"></jsp:include>
        </form>
        <br>
        <h1><%=Mensaje%></h1>
        <br>
        <a href="javascript:history.back(1)">Regresar a la pagina anterior</a><br>
        <a href="MenuAdministrador.jsp">Regresar al menú</a>   
    </body>
</html>
