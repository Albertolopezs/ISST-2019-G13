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
	text-align: center;
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
button {
	border-color: #A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
</style>
<body>
	<h2>Elige los campos que quiere incluir en Plantilla: </h2>
	<form action="CreatePlantillaServlet" method="post">
		<input type="checkbox" name="educacion" value="TRUE"> Educación<br>
		<input type="checkbox" name="idiomas" value="TRUE"> Idiomas<br>
		<input type="checkbox" name="expLabo" value="TRUE"> Experiencia Laboral<br>
		<input type="checkbox" name="habilidades" value="TRUE"> Habilidades<br>
		<input type="checkbox" name="intereses" value="TRUE"> Intereses<br>
		<input type="checkbox" name="titulacion" value="TRUE"> Titulación<br>
		<input type="hidden" name="email" value="${empresa.email}" />
		<input type="submit" value="Guardar">
	</form>
</body>
</html>