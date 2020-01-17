<%-- 
    Document   : Registro
    Created on : Nov 8, 2019, 10:55:33 AM
    Author     : PAPATELH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font/flat-icon/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Usuario</h1>
        <br>
        <form class="text-center border border-light p-5" action="" method="post">
            <div align=center" class="container">
         
                    <div class="col">
				<!-- Primer Nombre -->
		    <input type="text" name="primernombre" id="FirstName" class="form-control" placeholder="Primer Nombre">
                    </div><br>
                    <div class="col">
				<!-- Apellido -->
		    <input type="text" name="apellido" id="LastName" class="form-control" placeholder="Apellido">
                    </div><br>
            </div>
            <div class="container">
                                <!-- Usuario -->
		    <input type="text" name="usuario" id="Password" class="form-control mb-4" placeholder="Usuario">
                    
                    <br>       
				<!-- Contraseña -->
		    <input type="password" name="password" id="Password" class="form-control mb-4" placeholder="Contraseña">
                    
                    <br>       
				<!-- Contraseña -->
		    <input type="passwordretype" id="Passwordretype" class="form-control mb-4" placeholder="Confirmar Contraseña">
                  
                    <br>   
				<!-- Perfil -->
		    <input type="text" name="perfil" id="perfil" class="form-control mb-4" placeholder="Seleccionar Perfil">
                  
                    <br>
				<!-- Cedula -->
		    <input type="text" id="Cedula" name="cedula" class="form-control mb-4" placeholder="Cedula">
                    
                    <br>
				<!-- Numero de Contacto -->
		    <input type="text" id="Contact" name="contact" class="form-control mb-4" placeholder="Numero de Contacto">
                    
            <br>
            </div>
            <button id="registrar" class="btn btn-primary btn-lg" type="submit" name="accion" value="Registrar">Registrar</button>
            <a class="btn btn-primary btn-lg hover" href="menu.jsp" role="button">Regresar</a>
            <a class="btn btn-primary btn-lg" href="index.jsp" role="button">Home</a>
            <!-- Social register -->
            <!-- Terms of service -->
            <br>
            <br>
    <p>Al presionar
        <em>Registrar</em> Usted acepta nuestros
        <a href="" target="_blank">Terminos de Servicio y Condiciones</a>
       
        </form>
         <%
          try{
          Connection con;
          Class.forName("com.mysql.jdbc.Driver");
          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios_bd","root","");
          String fn,ln,user,pass,role,ced,cont;
          String id;
          fn=request.getParameter("primernombre");
          ln=request.getParameter("apellido");
          user=request.getParameter("usuario");
          pass=request.getParameter("password");
          role=request.getParameter("perfil");
          ced=request.getParameter("cedula");
          cont=request.getParameter("contact");
          id=request.getParameter("id");
          String query="{CALL AgregarUsuario(?,?,?,?,?,?,?)}";
          CallableStatement stmt = con.prepareCall(query);
          stmt.setString(1, user);
          stmt.setString(2, pass);
          stmt.setString(3, fn);
          stmt.setString(4, ln);
          stmt.setString(5, ced);
          stmt.setString(6, cont);
          stmt.setString(7, role);
          ResultSet rs=stmt.executeQuery();
          if(user != null && pass != null)
              response.sendRedirect("Listar.jsp");
          else
              System.out.println("Favor de llenar todos los campos");
          }catch(Exception e){
          }
             
          %>
              <footer class="footer footer-bg">
                    <div class="container">
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
