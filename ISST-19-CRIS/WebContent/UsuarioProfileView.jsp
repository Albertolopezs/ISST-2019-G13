<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<script>
document.getElementById("imagenUsuario").src = "data:image/png;base64," + {usuario.photo};
</script>

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <title>Perfil Usuario</title>
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

    text-align: right;
    background-color: none;  
}
</style>
	
<body>
	<h1>${usuario.name}${usuario.apell1}${usuario.apell2}</h1>
	
	<div> <img id="imagenUsuario" src="" /> </div>
	<p>
	  <div>¿En búsqueda de trabajo?:</div>
	  ${usuario.buscandoTrabajo}
	<p>
	  <div>Descripción:</div>
	  ${usuario.description}
    <p>
	  <div>CVs:</div>
	  <div>
		<ul>
			<c:forEach
				items="${ aVerCómoLoPonemosBienAquíCuidadoQueNoEstáHechoAún }"
				var="CV">
				<li>${CV}</li>
			</c:forEach>
		</ul>
	  </div>
	<p>
	<div><a href="EditUsuarioProfileView.jsp?email=${usuario.email}">Modificar datos</a><a href="ChangePasswordUsuarioView.jsp?email=${usuario.email}">Cambiar contraseña</a></div>
</body>
</html>
