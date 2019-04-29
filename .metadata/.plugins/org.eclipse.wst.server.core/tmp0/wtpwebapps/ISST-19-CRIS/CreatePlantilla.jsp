<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Creación Plantilla CV</title>
</head>
<style type="text/css">
body {
	background-image: url('https://ae01.alicdn.com/kf/HTB1HtgvJFXXXXasXpXXq6xXFXXXL/1-25-x1-5-h-m-edificios-fondo-atractivo-retrato-fondos-de-vinilo-de-moda-de.jpg_640x640.jpg');
	background-size: cover;
}

h1 {
	font-family: Open Sans;
}

div {
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
h5{
    text-align: right;
    background-color: none;  
}
input[type="submit"] {
	border-color: #A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
</style>
<body>
	<jsp:include page="NavBar.jsp" />
	<h2>Elige los campos que quiere incluir en Plantilla: </h2>
	<div>
	<form action="CreatePlantillaServlet" method="post">
		Nombre de la plantilla: <input type="text" name="name" value="" /><br>
		<input type="checkbox" name="educacion" value="TRUE"> Educación<br>
		<input type="checkbox" name="idiomas" value="TRUE"> Idiomas<br>
		<input type="checkbox" name="expLabo" value="TRUE"> Experiencia Laboral<br>
		<input type="checkbox" name="habilidades" value="TRUE"> Habilidades<br>
		<input type="checkbox" name="intereses" value="TRUE"> Intereses<br>
		<input type="checkbox" name="titulacion" value="TRUE"> Titulación<br>
		<input type="hidden" name="email" value="${empresa.email}" />
		<p>
		<input type="submit" value="Guardar">
	</form></div>
</body>
</html>