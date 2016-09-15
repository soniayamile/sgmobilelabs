<%-- 
    Document   : indexMain
    Created on : 2/09/2016, 05:16:01 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cuándo el perfil es un usuario</title>
        
    </head>
    <body>
        <h1>Cuándo el perfil es un usuario</h1>
        <%
            HttpSession sesion = request.getSession();
            String nombre;
            String perfil;
            if(sesion.getAttribute("nombres")!=null&& sesion.getAttribute("perfil")!=null){
            nombre=sesion.getAttribute("nombres").toString();
            perfil=sesion.getAttribute("perfil").toString();
            out.print("<a href='Login.jsp?cerrar=true'><h5>Cerrar Sesion "+ nombre + " </h5></a>");
            }else{
              out.print("<script>location.replace('Login.jsp');</script>")      ;
            }
            %>
    </body>
</html>
