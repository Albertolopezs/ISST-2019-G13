<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
function checkNull(input) {
	if (!input) {
		return "";
	} else {
		return input;
	}
}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar perfil empresa</title>
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
<form action="EditCompanyServlet" method="post">
    <div>
	<p>
	<div>Nombre de la empresa:</div>
	<input type="text" name="nombre" id="nombre" value="" />
	
	<p> 
	<div>NIF:</div> 
	<input type="text" name="NIF" id="NIF" value="" />
	
	<p> 
	<div>Categoría:</div>
	<input type="text" name="categoria" id="categoria" value="" />
	
	<p> 
	<div>Descripción:</div>
	<input type="text" name="descripcion" id="descripcion" value="" />
	
	<p>
	¿Estás buscando empleados? 
	   <select name="buscaEmpleado">
			<option value="true">Sí</option>
			<option value="false" selected>No</option>
	   </select>
	   
	<p> 
	<div>Puestos en oferta:</div>
	   <div>
		  <ul>
			<c:forEach items="${ empresa.puestosEnOferta }" var="puesto">
				<li>${puesto}</li>
			</c:forEach>
		</ul>
	</div>
	
	<p>
	<div>Plantillas:</div>
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
	<input type="hidden" name="email" value="${empresa.email}" />
	<input type="submit" value="Guardar" />
</form>

<script type="text/javascript">
document.getElementById('nombre').value = checkNull(empresa.name);
document.getElementById('categoria').value = checkNull(empresa.category);
document.getElementById('descripcion').value = checkNull(empresa.description);
document.getElementById('NIF').value = checkNull(empresa.NIF);
</script>
</body>
</html>