<%-- 
    Document   : Listar
    Created on : Nov 8, 2019, 7:03:42 PM
    Author     : PAPATELH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Iterator" %>
<%@page import="ModeloOAD.Usuario" %>
<%@page import="java.util.List" %>
<%@page import="ModeloOAD.PersonaOAD" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <link href="css/bootstap.mon.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font/flat-icon/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <h1 align="center">Usuarios</h1>
            
            <div class="container">
                <table class="table table-bordered table-hover"> 
            <tr class="text-light bg-info">
            
            
                
                        <th>ID</th>
                        <th>Cedula</th>
                        <th>Primer Nombre</th>
                        <th>Apellido</th>
                        <th>Usuario</th>
                        <th>Password</th>
                        <th>Contacto</th>
                        <th>Perfil</th>
                        <th>Acciones</th>
                    <tr>
                
                <%
                    PersonaOAD oad= new PersonaOAD();
                    List<Usuario>list=oad.Listar();
                    Iterator<Usuario>iter=list.iterator();
                    Usuario per=null;
                    while(iter.hasNext()){
                        per=iter.next();
                    
                    
                    %>
                <tbody>
                    <tr>
                        <td><%= per.getId()%></td>
                        <td><%= per.getCedula()%></td>
                        <td><%= per.getFirstName()%></td>
                        <td><%= per.getLastName()%></td>
                        <td><%= per.getUsuario()%></td>
                        <td><%= per.getPassword()%></td>
                        <td><%= per.getContact()%></td>
                        <td><%= per.getPerfil()%></td>
                        <td>
                            <a href="Controlador?accion=editar&id=<%=per.getId()%>" class="btn btn-info">Editar</a>
                            <a href="Controlador?accion=eliminar&id=<%=per.getId()%>" class="btn btn-info">Eliminar</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
                </tr>
            </table>
                <a href="Registro.jsp">Agregar Nuevo</a>

        </div>
                <div align="center">
                <a class="btn btn-primary btn-lg hover" href="index.jsp" role="button">Home</a>
                <a class="btn btn-primary btn-lg hover" href="menu.jsp" role="button">Regresar</a>
                </div>
                <br>
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
