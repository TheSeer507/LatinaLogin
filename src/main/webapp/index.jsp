<%-- 
    Document   : index
    Created on : Oct 25, 2019, 7:29:34 PM
    Author     : PAPATELH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width-device-width, initial-scale=1"/>
        <title>ULatina</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font/flat-icon/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    <header>
        <div id="logo" class="header__content" align="center">
            <a href="https://www.ulatina.edu.pa"><img class="img-responsive" src="assets/images/Logo_Latina1.png" alt="">
            </a>
        </div>
    </header>
    </br>
    <section class="steps">
        <div class="container">
            <form id="login" action="Valida_usuario.jsp" method="post" >
                <div class="form_description bglogin" align="center">
                    <hr>
                    <h2>Inicio de Sesion</h2>
                    <h3>Sistema de Login</h3>
                </b>
                
                <select id="perfil" name="perfil">
                    <option value="Administrador">Administrador</option>
                    <option value="Supervisor">Supervisor</option>
                    <option value="Usuario">Usuario</option>
                </select>
                <div class="form_description"
                
<h2>Inicio de Sesion</h2>
<p></p>
</div>
<ul>
	<li id="li_1">
		<label class="description" for="element_1">Usuario</label>
		<div>
			<input id="elemen_1" type="text" name="usuario" class="from_control" maxlength="255"/>
		</div>
	</li>
	<li id="li_2">
		<label class="description" for="element_2">Contraseña</label>
		<div>
			<input id="password" type="password" name="password" class="from_control" maxlength="255"/>
		</div>
	</li>
	<li class="buttons">

		<input type="hidden" name="form_id" value="Ingresar">

		<input id="saveForm" class="btn btn-default" type="submit" name="accion" value="Ingresar">
	</li>
            </form>
        </div>
        </div>
        
        
    </section>
    <body>

                <footer class="footer footer-bg">
                    <div class="container">
                        <div class="text-center">
                            <p class="page-section_subtitle page-section_subtitle--white">Copyright <span>&copy;</span>
                                Programacion VII - Universidad Latina </p>
                        </div>
                    </div>
                </footer>
        </div>
                <script src="assets/jquery/jquery-3.2.1.min.js"></script>
                <script src="assets/bootstrap/js/bootstrap.min.js"></script>
                
    </body>
</html>

