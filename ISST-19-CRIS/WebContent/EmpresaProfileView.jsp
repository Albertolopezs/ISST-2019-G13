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
	font-family: Open Sans;
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
.link {
	margin: 0;
	border: 0;
	background: none;
	overflow: visible;
	color: blue;
	cursor: pointer;
}
</style>
<body>
	<h1>${empresa.name}</h1>
	<div> <img id="imagenEmpresa" src="data:image/jpeg;base64,${foto}" width="100" height="100" /> </div>
	<c:if test="${ owner }">
		<div><form action="EditCompanyPhotoServlet" method="post" enctype="multipart/form-data">
			<input type="file" name="file" />
			<button type="submit" name="email" value="${empresa.email}">Subir foto perfil</button>
		</form></div>
	</c:if>
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
	<c:if test="${not empty empresa.plantillas}">
	  <div>Plantillas:</div>
	  <div>
		<ul>
			<c:forEach items="${empresa.plantillas}" var="plantilla">
				<li>
					<form action="PlantillaViewServlet" method="get">
						<input type="hidden" name="id" value="${plantilla.id}" />
						<input type="submit" value="${plantilla.name}" class="link" />
					</form>
				</li>
			</c:forEach>
		</ul>
	  </div>
	  </c:if>
	<p>
	<div>
	<c:if test="${ owner }">
		<a href="CreatePlantilla.jsp?empresa=${empresa}">Crear Plantilla CV</a>
		<p>
		<p><a href="EditEmpresaProfileView.jsp?empresa=${param.empresa}">Modificar datos</a>
		<p><a href="ChangePasswordEmpresaView.jsp?email=${empresa.email}">Cambiar contraseña</a>
	</c:if>
		<p><a href="LogoutServlet">Cerrar sesión</a></div>
</body>
</html>
