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

h1 {
text-align: center;
padding: 13vh;
  font-weight: normal;
  font-size: 40px;
  font-family: 'Lobster';
  text-transform: uppercase;    
}

div {
font: normal normal 16px quicksand;
	font-size: medium;
	font-family: 'Lobster';
	
}
h5{
    vertical-align: bottom;  
}
button {
border: 2px solid #b5f2f2;  /*borde: estilo y color*/
font: normal normal 18px quicksand;  /*fuente*/
letter-spacing: 2px; /*separación entre las letras*/
text-align: center; /*alineación del texto*/
text-transform: uppercase; /*texto se transforma en mayúsculas*/
padding: 10px;  /*tamaño del fondo*/
border-radius: 30px 0px 30px 0px; /*ángulos de las 4 esquinas del borde/fondo*/
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
<shiro:guest><jsp:forward page="LoginView.jsp"></jsp:forward></shiro:guest>
	<jsp:include page="NavBar.jsp" />
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
	  <c:if test="${empresa.buscandoEmpleados == false}">
	  No
	  </c:if>
	  <c:if test="${empresa.buscandoEmpleados == true}">
	  Sí
	  </c:if>
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
	</c:if>
	</div>
</body>
</html>
