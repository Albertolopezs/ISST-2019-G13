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

input {
	text-decoration: none;
    padding: 8px;
    font-weight: 400;
    font-size: 15px;
    border-radius: 15px;
    font-family: 'Lobster';
    background-color: transparent;
    margin-left: auto;
  margin-right: auto;
}
</style>
<body>
<shiro:guest><jsp:forward page="LoginView.jsp"></jsp:forward></shiro:guest>
	<jsp:include page="NavBar.jsp" />
	<div><form action="EditCompanyPhotoServlet" method="post" enctype="multipart/form-data">
		<input type="file" name="file" />
		<button type="submit" name="email" value="${empresa.email}">Subir foto perfil</button>
	</form></div>
<form action="EditCompanyServlet" method="post">
   <div>
	<p>
	<div>Nombre de la empresa:
	<input type="text" name="nombre" id="nombre" value="${name }" />
	</div>
	
	<p> 
	<div>NIF: 
	<input type="text" name="NIF" id="NIF" value="${NIF }" />
	</div>
	<p> 
	<div>Categoría:
	<input type="text" name="categoria" id="categoria" value="${category }" />
	</div>
	<p> 
	<div>Descripción:
	<input type="text" name="descripcion" id="descripcion" value="${description }" />
	</div>
	<p>
	¿Estás buscando empleados? 
	   <select name="buscaEmpleado">
	   <c:if test="${buscandoEmpleados == true }">
	   			<option value="true" selected>Sí</option>
	   			<option value="false" >No</option>
	   </c:if>
		<c:if test="${buscandoEmpleados == false }">
			<option value="true">Sí</option>
	   		<option value="false" selected>No</option>
		</c:if>
	   </select>
	   
	<p> 
	<div>Puestos en oferta:
	<input type="text" name="puesto" id="puesto" value="${puesto}" />
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