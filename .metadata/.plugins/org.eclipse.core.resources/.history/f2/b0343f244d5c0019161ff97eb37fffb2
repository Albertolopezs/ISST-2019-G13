<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Crear CV</title>
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
    vertical-align: bottom;  
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

<h2>Currículum de ${usuario.name} ${usuario.apell1} ${usuario.apell2} </h2>
<h3>Rellene los siguientes datos:</h3>
	<form action="CreateCVServlet" method="post">
		<c:if test="${educacion}">
		Educación: <input type="text" name="educ" id="educ" value="" /><br>
		</c:if>
		<c:if test="${idiomas}">
		Idiomas: <input type="text" name="idi" id="idi" value="" /><br>
		</c:if>
		<c:if test="${expLabo}">
		Experiencia laboral: <input type="text" name="expL" id="expL" value="" /><br>
		</c:if>
		<c:if test="${habilidades}">
		Habilidades: <input type="text" name="skill" id="skill" value="" /><br>
		</c:if>
		<c:if test="${intereses}">
		Intereses: <input type="text" name="interes" id="interes" value="" /><br>
		</c:if>
		<c:if test="${titulacion}">
		Titulación: <input type="text" name="titulo" id="titulo" value="" /><br>
		</c:if>
	<input type="submit" value="Siguiente">
</form>

</body>
</html>