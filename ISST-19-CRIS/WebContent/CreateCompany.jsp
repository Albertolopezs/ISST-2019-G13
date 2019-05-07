<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Create Company</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Temas-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
</head>

<style type="text/css">
body {
	background-image:
		url('https://image.jimcdn.com/app/cms/image/transf/none/path/sc77e1e58a42c514a/image/i9977c7b3a6db203a/version/1516578954/image.jpg');
	background-size: cover;
	font: normal normal 16px quicksand; 
	letter-spacing: 1px;
	
	text-align: center;
	text-transform: uppercase;
    background-position: center;
    background-repeat: no-repeat;
    overflow-x: hidden;
    padding-top: 20px;
    z-index: 1;
    top: 0;
    left: 0;
    
}
h1 {
text-align: center;
padding: 13vh;
  font-weight: normal;
  font-size: 40px;
  font-family: 'Lobster';
  text-transform: uppercase;    
}
div{
     font-size: medium;
     font-family: 'Lobster';
     font-weight: bold;
}
input[type="submit"] {
	border-color: #7A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: 'Lobster';
	font-weight: bold;
}
#Contenedor{
	width: 400px;
	margin: 50px auto;
	background-color: #F3EDED;
        border: 15px solid #ECE8E8;
	height: 300px;
	border-radius:8px;
	padding: 0px 9px 0px 9px;
}
</style>
<body>
	<jsp:include page="NavBar.jsp" />
	<h1>Completa con los datos de su empresa:</h1>
		<div id="Contenedor">
<div class="ContentForm">
		<form action="SignUpUserServlet" method="post">
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="text" class="form-control" name="correo" placeholder="Correo" id="Correo" aria-describedby="sizing-addon1" required>
				</div>
			<br>
				<div class="input-group input-group-lg">
				  <span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="password" name="contra" class="form-control" placeholder="Contraseña" aria-describedby="sizing-addon1" required>
				</div>
			<br>
				<div class="input-group input-group-lg">
				  <span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="text" name="nombre" class="form-control" placeholder="Nombre" aria-describedby="sizing-addon1" required>
				</div>
		<br>
				<button class="btn btn-lg btn-primary btn-block btn-signin" id="IngresoLog" type="submit">Crear cuenta</button>
	</form>
	</div>	
		 </div>
</body>
</html>