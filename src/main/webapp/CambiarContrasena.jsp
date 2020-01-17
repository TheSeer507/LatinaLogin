<%-- 
    Document   : CambiarContrasena
    Created on : Nov 8, 2019, 10:56:02 AM
    Author     : PAPATELH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="css/bootstap.mon.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font/flat-icon/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Cambiar Contraseña</h1>
        <div class="container">
	<div class="row">
            <div class="col-sm-4">
		    
		    <label>Nombre de Usuario</label>
		    <div class="form-group pass_show"> 
                <input id="usuario" type="text" value="" class="form-control" placeholder=""> 
            </div> 
		       <label>Nueva Contraseña</label>
            <div class="form-group pass_show"> 
                <input id="password" type="password" value="" class="form-control" placeholder="Nueva Contraseña"> 
            </div> 
		       <label>Confirmar Contraseña</label>
            <div class="form-group pass_show"> 
                <input id="newpassword" type="password" value="" class="form-control" placeholder="Confirmar Contraseña"> 
            </div> 
            <button id="cambiarpassword" class="btn btn-primary btn-lg" type="submit">Cambiar Contraseña</button>
            
            <a class="btn btn-primary btn-lg" href="index.jsp" role="button">Home</a><br>
            <a class="btn btn-primary btn-lg hover" href="menu.jsp" role="button">Regresar</a>
		</div>  
	</div>
</div>
                <script src="assets/jquery/jquery-3.2.1.min.js"></script>
                <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
