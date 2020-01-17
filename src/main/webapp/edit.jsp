<%-- 
    Document   : edit
    Created on : Dec 13, 2019, 3:51:58 PM
    Author     : PAPATELH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="ModeloOAD.Usuario"%>"
<%@page import="ModeloOAD.PersonaOAD"%>"
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <<%
                PersonaOAD oad=new PersonaOAD();
                int id=Integer.parseInt((String)request.getAttribute("id"));
                Usuario p=(Usuario)oad.list(id);
                    
                    
         %>
         <div>
                <h1 align="center">Modificar Usuario</h1>
                <form class="text-center border border-light p-5" action="" method="post">
            <div align=center" class="container">
         
                    <div class="col">
				<!-- Primer Nombre -->
		    <input type="text" name="primernombre" value=<%=p.getFirstName()%> id="FirstName" class="form-control" placeholder="Primer Nombre">
                    </div><br>
                    <div class="col">
				<!-- Apellido -->
		    <input type="text" name="apellido" value=<%=p.getLastName()%> id="LastName" class="form-control" placeholder="Apellido">
                    </div><br>
            </div>
            <div class="container">
                                <!-- Usuario -->
		    <input type="text" name="usuario" value=<%=p.getUsuario()%> id="Password" class="form-control mb-4" placeholder="Usuario">
                    
                    <br>       
				<!-- Contraseña -->
		    <input type="password" name="password" value=<%=p.getPassword()%> id="Password" class="form-control mb-4" placeholder="Contraseña">
                    
                    <br>       
				<!-- Contraseña -->
		    <input type="passwordretype"  value=<%=p.getPassword()%> id="Passwordretype" class="form-control mb-4" placeholder="Confirmar Contraseña">
                  
                    <br>   
				<!-- Perfil -->
		    <input type="text" name="perfil" value=<%=p.getPerfil()%> id="perfil" class="form-control mb-4" placeholder="Seleccionar Perfil">
                  
                    <br>
				<!-- Cedula -->
		    <input type="text" id="Cedula" value=<%=p.getCedula()%> name="cedula" class="form-control mb-4" placeholder="Cedula">
                    
                    <br>
				<!-- Numero de Contacto -->
		    <input type="text" id="Contact"  value=<%=p.getContact()%> name="contact" class="form-control mb-4" placeholder="Numero de Contacto">
                    
            <br>
            </div>
                    <input type="submit" name="accion" value="Actualizar" class="btn btn-info" style="margin-left: 16px">
                    <a href="Controlador?accion=listar" class="btn btn-light" style="margin-left: 16px">Regresar</a>
                </form>
        </div>
                <script src="js/jquery-3.4.1.min"></script>
                <script src="js/bootstrap.min"></script>
        
    </body>
</html>
