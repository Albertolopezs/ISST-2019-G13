<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
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
	font-family: Open Sans;
}

div {
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
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
<script>
document.getElementById("imagenUsuario").src = "data:image/png;base64," + ${usuario.photo};
</script>
	<h1>${usuario.name} ${usuario.apell1} ${usuario.apell2}</h1>
	<div> <img id="imagenUsuario" src="data:image/jpeg;base64,${foto}" width="100" height="100" /> </div>
	<div>
		<c:if test="${ owner }">
			<form action="EditUserPhotoServlet" method="post" enctype="multipart/form-data">
				<input type="file" name="file" />
			<p><button type="submit" name="email" value="${usuario.email}">Subir foto perfil</button>
			</form>
		</c:if>
	</div>
	<p>
	  <div>Estoy en búsqueda de trabajo:</div>
	  ${usuario.buscandoTrabajo}
	<p>
	  <div>Sobre mí:</div>
	  ${usuario.description}
    <p>
    <c:if test="${not empty usuario.curriculums}">
	  <div>CVs:</div>
	  <div>
		<ul>
			<c:forEach items="${ usuario.curriculums }" var="CV">
				<li>
					<form action="CVViewServlet" method="get">
						<input type="hidden" name="id" value="${CV.id}" />
						<input type="submit" value="${CV.name}" class="link" />
					</form>
				</li>
			</c:forEach>
		</ul>
	  </div>
	  </c:if>
	  <div>
		<c:if test="${ owner }">
			<a href="CreateUserCVPlantilla.jsp?usuario=${usuario}">Crear CV</a>
			<p>					
			<p><a href="EditUserProfileView.jsp?usuario=${param.usuario}">Modificar datos</a>
			<p><a href="ChangePasswordUsuarioView.jsp?email=${usuario.email}">Cambiar contraseña</a>
		</c:if>
		<c:if test="${ !owner }">
			<p><a href="UserProfileView.jsp?usuario=${  }">Volver a mi página</a>
		</c:if>
			<p><a href="LogoutServlet">Cerrar sesión</a>
		</div>
	

</body>
</html>
