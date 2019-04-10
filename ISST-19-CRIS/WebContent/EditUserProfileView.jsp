<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
	function checkNull(input) {
		if (!input) {
			return "";
		} else {
			return input;
		}
	}
	document.getElementById('nombre').value = checkNull(usuario.name);
	document.getElementById('apell1').value = checkNull(usuario.apell1);
	document.getElementById('apell2').value = checkNull(usuario.apell2);
	document.getElementById('direccion').value = checkNull(usuario.direccion);
	document.getElementById('descripcion').value = checkNull(usuario.description);
	document.getElementById('estudios').value = checkNull(usuario.studies);
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar perfil usuario</title>
</head>
<style type="text/css">
body {
	background-image:
		url('https://ae01.alicdn.com/kf/HTB1HtgvJFXXXXasXpXXq6xXFXXXL/1-25-x1-5-h-m-edificios-fondo-atractivo-retrato-fondos-de-vinilo-de-moda-de.jpg_640x640.jpg');
	background-size: cover;
}

h1 {
	text-align: center;
	text-decoration: blink;
	font-family: 'Open Sans';
	color: black;
	font-size: 50px;
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
	<div>
		<p> 
		<div>Nombre:</div>
		<input type="text" name="nombre" id="nombre" value="" />
	
		<p> 
		<div>Primer apellido: </div>
		<input type="text" name="apell1" id="apell1" value="" />
	
		<p> 
		<div>Segundo apellido:</div>
		<input type="text" name="apell2" id="apell2"
			value="" placeholder="Deja en blanco en caso de no tener" />
	
		<p> 
		<div>Dirección:</div>
		<input type="text" name="direccion" id="direccion" value="" />
	
		<p> 
		<div>Descripción:</div>
		<input type="text" name="descripcion" id="descripcion" value="" />
	
		<p> 
		<div>Estudios:</div>
		<input type="text" name="estudios" id="estudios" value="" />
	
		<p> 
		¿Estás buscando trabajo? 
		     <select name="buscaTrabajo">
		         <option value="TRUE">Sí</option>
			     <option value="FALSE" selected>No</option>
		     </select>
	    
	    <p> 
	    <div>Currículums:</div>
	      <div>
		      <ul>
			     <c:forEach
				    items="${ aVerCómoLoPonemosBienAquíCuidadoQueNoEstáHechoAún }"
				    var="plant">
				    <li>${plant}</li>
			     </c:forEach>
	          </ul>
	      </div>
	</div>
	<p>
	<form action="EditUserServlet" method="post">
		<input type="hidden" name="email" value="${usuario.email}" />
		<input type="submit" value="Guardar"/>
	</form>
	
</body>
</html>