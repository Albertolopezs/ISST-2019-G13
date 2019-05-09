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
text-align: center;
font: normal normal 16px quicksand;
	font-size: medium;
	font-family: 'Lobster';
	
}

input {
text-align: center;
	text-decoration: none;
    padding: 10px;
    font-weight: 400;
    font-size: 15px;
    border-radius: 15px;
    font-family: 'Lobster';
    background-color: transparent;
    margin-left: auto;
  margin-right: auto;
}
ul{
margin-left: 0;
padding-left: 0;
}
li{
margin-left: 0;
padding-left: 0;
}
</style>
<body>
<shiro:guest><jsp:forward page="LoginView.jsp"></jsp:forward></shiro:guest>
<jsp:include page="NavBar.jsp" />
	<div>
		<form action="EditUserPhotoServlet" method="post" enctype="multipart/form-data">
			<p><input type="file" name="file" /></p>
		<p><button type="submit" name="email" value="${usuario.email}">Subir foto perfil</button>
		</form>
	</div>

	<form action="EditUserServlet" method="post">
		<p> 
		<div>Nombre:
		<input type="text" name="nombre" id="nombre" value="${name }"/>
	</div>
		<p> 
		<div>Primer apellido: 
		<input type="text" name="apell1" id="apell1" value="${apell1}"/>
	</div>
		<p> 
		<div>Segundo apellido:
		<input type="text" name="apell2" id="apell2" value="${apell2 }"/>
	</div>
		<p> 
		<div>Dirección:
		<input type="text" name="direccion" id="direccion" value="${direccion }"/>
	</div>
		<p> 
		<div>Descripción:
		<input type="text" name="descripcion" id="descripcion" value="${descripcion }"/>
	</div>
		<p> 
		¿Estás buscando trabajo? 
		     <select name="buscaTrabajo">
		         <option value="TRUE">Sí</option>
			     <option value="FALSE" selected>No</option>
		     </select>
	    
	    <p> 
	<p>
		<input type="hidden" name="email" value="${usuario.email}" />
		<input type="submit" value="Guardar"/>
	</form>
	
</body>
</html>