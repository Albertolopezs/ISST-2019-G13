<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Create User</title>
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
     font-family: Times New Roman;
     font-weight: bold;
}
input[type="submit"] {
	border-color: #7A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
#Contenedor{
	width: 400px;
	margin: 50px auto;
	background-color: #F3EDED;
        border: 15px solid #ECE8E8;
	height: 400px;
	border-radius:8px;
	padding: 0px 9px 0px 9px;
}
/**
 * Aplicando al icono de usuario el color de fondo,
 * rellenado de 20px y un redondeado de 120px en forma
 * de un circulo
 */
.Icon span{
      background: #A8A6A6;
      padding: 20px;
      border-radius: 120px;
}
/**
 * Se aplica al contenedor madre un margen de tamaño 10px hacia la cabecera y pie,
 * color de fuente blanco,un tamaño de fuente 50px y texto centrado.
 */
.Icon{
     margin-top: 10px;
     margin-bottom:10px; 
     color: #FFF;
     font-size: 50px;
     text-align: center;
}
/**
 * Se aplica al contenedor donde muestra en el pie
 * la opción de olvidaste tu contraseña?
 */
.opcioncontra{
	text-align: center;
	margin-top: 20px;
	font-size: 14px;
}
button {
border: 2px solid #b5f2f2;  /*borde: estilo y color*/
font: normal normal 18px quicksand;  /*fuente*/
letter-spacing: 2px; /*separación entre las letras*/
text-align: center; /*alineación del texto*/
text-transform: uppercase; /*texto se transforma en mayúsculas*/
padding: 10px;  /*tamaño del fondo*/
border-radius: 30px 0px 30px 0px; /*ángulos de las 4 esquinas del borde/fondo*/
}

</style>
<body>
	<jsp:include page="NavBar.jsp" />
	<h1>Completa con tus datos:</h1>
	
	<div id="Contenedor">
<div class="ContentForm">
<form action="SignUpUserServlet" method="post">
		<div class="input-group input-group-lg">
		<span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="text" class="form-control" name="email" placeholder="Correo" id="email" aria-describedby="sizing-addon1" required>
				</div>
			<br>
				<div class="input-group input-group-lg">
				  <span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="password" name="password" id="password" class="form-control" placeholder="Contraseña" aria-describedby="sizing-addon1" required>
				</div>
			<br>
				<div class="input-group input-group-lg">
				  <span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="text" name="nombre" class="form-control" placeholder="Nombre" aria-describedby="sizing-addon1" required>
				</div>
			<br>
				<div class="input-group input-group-lg">
				  <span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="text" name="apellido1" class="form-control" placeholder="Primer apellido" aria-describedby="sizing-addon1" required>
				</div>
			<br>
				<div class="input-group input-group-lg">
				  <span class="input-group-addon" id="sizing-addon1"></span>
				  <input type="text" name="apellido2" class="form-control" placeholder="Segundo apellido" aria-describedby="sizing-addon1">
				</div>
			<br>
				<button class="btn btn-lg btn-primary btn-block btn-signin" id="IngresoLog" type="submit">Crear cuenta</button>
		</form>
		</div>	
		 </div>
		 </div>	
		 </div>

</body>
</html>