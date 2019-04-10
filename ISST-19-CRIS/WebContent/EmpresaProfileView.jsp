<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Perfil empresa</title>
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

</style>
<body>
	<h1>${empresa.name}</h1>
	<div> <img id="imagenEmpresa" src="" /> </div>
	<form action="EditCompanyPhotoServlet" method="post" enctype="multipart/form-data">
		<input type="file" name="file" />
		<button type="submit" name="email" value="${empresa.email}">Subir foto perfil</button>
	</form>
	<p>
	  <div>Categoría:</div>
	  ${empresa.category}
	<p>
	  <div>Descripción:</div>
	  ${empresa.description}
	<p>
	  <div>¿Buscando empleados?:</div>
	  ${empresa.buscandoEmpleados}
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
	<p>
	<div><a href="EditEmpresaProfileView.jsp?email=${empresa.email}">Modificar datos</a></div>
	<div><a href="ChangePasswordEmpresaView.jsp?email=${empresa.email}">Cambiar contraseña</a></div>
	<div><a href="LogoutServlet">Cerrar sesión</a></div>
	
	<script type="text/javascript">
		document.getElementById("imagenEmpresa").src = "data:image/png;base64," + ${empresa.photo};
	</script>
</body>
</html>
