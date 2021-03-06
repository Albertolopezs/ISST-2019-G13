<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Vista Plantilla</title>
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
div {
	font-size: medium;
	font-family: Times New Roman;
	
}
input[type="submit"] {
	border-color: #7A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: 'Lobster';
	font-weight: bold;
}
</style>
<body>
<shiro:guest><jsp:forward page="LoginView.jsp"></jsp:forward></shiro:guest>
	<jsp:include page="NavBar.jsp" />
	<h2>${ name }</h2>
	<h3>Elementos a incluir en el CV:</h3>
	<c:if test="${ educacion  == 1}">
		<div>Educación<br></div>
	</c:if>
	<c:if test="${ idiomas == 1}">
		<div>Idiomas<br></div>
	</c:if>
	<c:if test="${expLabo  == 1}">
		<div>Experiencia laboral<br></div>
	</c:if>	
	<c:if test="${ habilidades  == 1}">
		<div>Habilidades <br></div>
	</c:if>	
	<c:if test="${ interes == 1}">
		<div>Intereses<br></div>
	</c:if>	
	<c:if test="${ titulo == 1}">
		<div>Titulación<br></div>
	</c:if>
	<br>
	<c:if test="${ owner }">
	<form action="DeletePlantillaServlet" method="post">
		<input type="hidden" name="id" value="${ id }" />
		<input type="submit" value="Elimina Plantilla" />
	</form>
	<form action="EmpresaServlet" method="get">
		<input type="hidden" name="email" value="${ email }" />
		<input type="submit" value="Back" />
	</form>
	</c:if>
</body>
</html>