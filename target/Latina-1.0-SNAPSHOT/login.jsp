<%-- 
    Document   : login
    Created on : Oct 4, 2019, 9:03:36 PM
    Author     : PAPATELH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE HTML>	
<html>
<head>
	<meta http-equiv = "ContentType" content= "text/html" charset="utf-8">
	<title>JSP Page</title>
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/font/flat-icon/flaticon.css">
        <link rel="stylesheet" href="css/style.css">
</head>
<body>
<form id="login" clas="form-horizontal"
method="post" action="Valida_usuario.jsp">
<div class="form_description"
<h2>Inicio de Sesion</h2>
<p></p>
</div>
<ul>
	<li id="li_1">
		<label class="description" for="element_1">Usuario</label>
		<div>
			<input id="elemen_1" type="text" name="usuario" class="from_control" maxlength="255" value=""/>
		</div>
	</li>
	<li id="li_2">
		<label class="description" for="element_2">Contraseña</label>
		<div>
			<input id="password" type="password" name="password" class="from_control" maxlength="255" value=""/>
		</div>
	</li>
	<li class="buttons">

		<input type="hidden" name="form_id" value=""/>

		<input id="saveForm" class="btn btn-default" type="submit" name="submit" value="Ingresar" onclick="window.open('http://localhost:8080/Latina/menu.jsp')"/>
	</li>
        </form>

        <script src="assets/jquery/jquery-3.2.1.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>