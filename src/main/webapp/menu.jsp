<%-- 
    Document   : menu
    Created on : Oct 11, 2019, 8:39:14 PM
    Author     : PAPATELH
--%>

<%@page import="java.util.HashSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Set"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font/flat-icon/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="wrapper row0">
            <nav class="navbar">
                <div id="logo" class="fl_left">
                    <a href="https://www.ulatina.edu.pa">
                        <img class="img-responsive" src="assets/images/Logo_Latina1.png" alt="">
                    </a>
                </div>
        <h1 class="text-center">Bienvenidos a Latina</h1>
        
        <%
            String uid = (String)session.getAttribute("usuario");
            String up = (String)session.getAttribute("role");
            if(uid == null){
                out.println("<h3>Vuelva a Intentarlo</h3>");
            }else{
                 out.println("<h3>Has creado sesion para usuario : "+uid+"</h3>");
                out.println("<h5>Su Perfil actual es: "+up+"</h5>");
            }
        %>
        
        
            
            <div class="wrapper row0">
            <nav class="navbar">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#"></a>
                </div>
                <div class="collaps navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav pull-right">
                        
                        <%
                            
                            if(up == null){
                                out.println("<h2>"+up+" </h2>");
                            }else if (up.equals ("Administrador"))
                            {
                               out.println("<li><a href='TerminosUsos.jsp'>Terminos de Uso</a></li>");
                               out.println("<li><a href='Soporte.jsp'>Soporte</a></li>");
                               out.println("<li><a href='Registro.jsp'>Registro</a></li>");
                               out.println("<li><a href='CambiarContrasena.jsp'>Cambiar Contraseña</a></li>");
                               out.println("<li><a href='Contacto.jsp'>Contacto</a></li>");
                               out.println("<li><a href='Listar.jsp'>Listar Usuarios</a></li>");
                               out.println("<li><a href='edit.jsp'>Editar Usuario</a><li>");
                               
                            }
                         
                            else if (up.equals("Usuario"))
                           {
                               
                               out.println("<li><a href='Contacto.jsp'>Contacto</a></li>");
                               out.println("<li><a href='TerminosUsos.jsp'>Terminos de Uso</a></li>");
                               out.println("<li><a href='Soporte.jsp'>Soporte</a></li>");
                               
                           }else 
                           {
                               out.println("<li><a href='TerminosUsos.jsp'>Terminos de Uso</a></li>");
                               out.println("<li><a href='Soporte.jsp'>Soporte</a></li>");
                               out.println("<li><a href='Registro.jsp'>Registro</a></li>");
                               out.println("<li><a href='Contacto.jsp'>Contacto</a></li>");
                              
                           }
                         
                         %>
                       
 
                    </ul>
                </div>
            </nav>
           
           
            <br>
                        <a class="btn btn-primary btn-lg" href="index.jsp" role="button">Home</a><br>
              <footer class="footer footer-bg">
                    <div class="container navbar navbar-fixed-bottom">
                        <div class="text-center">
                            <p class="page-section_subtitle page-section_subtitle--white">Copyright <span>&copy;</span>
                                Programacion VII - Universidad Latina </p>
                        </div>
                    </div>
                </footer>
             <script src="assets/jquery/jquery-3.2.1.min.js"></script>
             <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
