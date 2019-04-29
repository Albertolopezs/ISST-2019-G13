<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Vista CV</title>
</head>
<style type="text/css">
body {
	background-image: url('https://ae01.alicdn.com/kf/HTB1HtgvJFXXXXasXpXXq6xXFXXXL/1-25-x1-5-h-m-edificios-fondo-atractivo-retrato-fondos-de-vinilo-de-moda-de.jpg_640x640.jpg');
	background-size: cover;
}
div {
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
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
	<h2>${ name }</h2>

	<c:if test="${ educacion != null }">
		Educación: ${ educacion }<br>
	</c:if>
	<c:if test="${ idiomas != null }">
		Idiomas:  ${ idiomas }<br>
	</c:if>
	<c:if test="${ expLabo != null }">
		Experiencia laboral: ${ expLaboral }<br>
	</c:if>
	<c:if test="${ habilidades != null }">
		Habilidades: ${ habilidades }<br>
	</c:if>
	<c:if test="${ intereses != null }">
		Intereses: ${ intereses }<br>
	</c:if>
	<c:if test="${ titulacion != null }">
		Titulación: ${ titulacion }<br>
	</c:if>
	<form action="DeleteCVServlet" method="post">
		<input type="hidden" name="id" value="${ id }">
		<input type="submit" value="Elimina CV" />
	</form>
	<form action="UsuarioServlet" method="get">
		<input type="hidden" name="email" value="${ email }" />
		<input type="submit" value="Back" />
	</form>
</body>
</html>