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
	<h1>Información personal</h1>
	<table>
		<tr><td>Nombre:  ${name }</td></tr>
		<tr><td>Apellidos:  ${apellidos} </td></tr>
		<tr><td>E-mail: ${email} </td></tr>
		<tr><td>Fecha de nacimiento:  ${nacimiento } <br></td></tr>
	</table>
	<c:if test="${ educacion_nivel != null }">
	<table>
		<c:if test="${ educacion_nivel == '0' }">
		<tr><td>Nivel de educación: Educación primaria</td></tr>
		</c:if>
		<c:if test="${ educacion_nivel == '1'}">
		<tr><td>Nivel de educación: Educación secundaria</td></tr>
		</c:if>
		<c:if test="${ educacion_nivel == '2'}">
		<tr><td>Nivel de educación: Grado</td></tr>
		</c:if>
		<c:if test="${ educacion_nivel == '3' }">
		<tr><td>Nivel de educación: Máster</td></tr>
		</c:if>
		<c:if test="${ educacion_nivel =='4'}">
		<tr><td>Nivel de educación: Doctorado</td></tr>
		</c:if>
		<c:if test="${ carrera != null }">
		<tr><td>Grado:  ${carrera} </td></tr>
		</c:if>
		<tr><td>Centro: ${centro} </td></tr>
		<tr><td>Inicio:  ${inicio_est }</td><td>Final:  ${final_est }</td></tr>
	</table>
	</c:if>
	<c:if test="${ puesto_name != null }">
	<table>
		<tr><td>Nombre del puesto:  ${puesto_name }</td></tr>
		<tr><td>Descripción:  ${descripcion} </td></tr>
		<tr><td>Empresa: ${empresa} </td></tr>
		<tr><td>Inicio:  ${inicio_est }</td>
		<c:if test ="${actualidad == 'on'}"><td>Final:  Actualidad</td></c:if>
		<c:if test ="${actualidad == 'off'}"><td>Final:  ${final_est }</td></c:if>
		</tr>
	</table>
	</c:if>
	<c:if test="${ idiomas != null }">
	<table>
		<c:if test="${ idiomas == '0' }">
			<tr><td>Idioma: Ingles</td></tr>
		</c:if>
		<c:if test="${ idiomas =='1'}">
			<tr><td>Idioma: Español</td></tr>
		</c:if>
		<c:if test="${ idiomas == '2'}">
			<tr><td>Idioma: Francés</td></tr>
		</c:if>
		<c:if test="${ idiomas == '3' }">
			<tr><td>Idioma: Alemán</td></tr>
		</c:if>
		<c:if test="${ idiomas =='4'}">
			<tr><td>Idioma: Chino</td></tr>
		</c:if>
		<c:if test="${ nivel == '0' }">
			<tr><td>Nivel: Básico</td></tr>
		</c:if>
		<c:if test="${ nivel =='1'}">
			<tr><td>Nivel: Intermedio</td></tr>
		</c:if>
		<c:if test="${ nivel == '2'}">
			<tr><td>Nivel: Alto</td></tr>
		</c:if>
		<c:if test="${ nivel =='3' }">
			<tr><td>Nivel: Nativo</td></tr>
		</c:if>
	</table>
	</c:if>
	<c:if test="${ habilidades != null }">
		Habilidades: ${ habilidades }<br>
	</c:if>
	<c:if test="${ intereses != null }">
		Intereses: ${ intereses }<br>
	</c:if>
	<c:if test="${ owner }">
	<form action="DeleteCVServlet" method="post">
		<input type="hidden" name="id" value="${ id }">
		<input type="submit" value="Elimina CV" />
	</form>
	<form action="UsuarioServlet" method="get">
		<input type="hidden" name="email" value="${ email }" />
		<input type="submit" value="Back" />
	</form>
	</c:if>
</body>
</html>