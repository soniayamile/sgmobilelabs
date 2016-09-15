<%-- 
    Document   : index
    Created on : 07-ago-2016, 15:58:32
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <a href="#" class="image full"><img src="imagenes/banner.jpg" alt="" /></a>  
        <link rel="stylesheet" type="text/css" href="css/style-desktop.css">
        <link rel="stylesheet" href="css/style-desktop.css" />
        <link rel="stylesheet" href="css/skel-noscript.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <jsp:include page="encabezado.jsp"></jsp:include>
        
</head>

     <body>
      <a href="Login.jsp">Logueate</a>
        <form name="ValidarUsuario" id="ValidarUsuario" action="MenuPrincipal.jsp" method="POST">
            
              
            <input type="submit" value="Ingresar" name="ingresar" id="ingresar" /></td>
                        
              
            
        </form>
        <div id="mensaje-ingreso"></div>
         <a href="Usuarios.jsp">¿Aún no te haz Registrado?</a>
    </body>
</html>
