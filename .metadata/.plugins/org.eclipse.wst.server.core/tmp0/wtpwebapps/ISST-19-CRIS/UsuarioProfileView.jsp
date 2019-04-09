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
<body>
<a href="EditUsuarioProfileView.jsp?usuario=${usuario}">Modificar datos</a><a href="ChangePasswordUsuarioView.jsp?email=${usuario.email}">Cambiar contraseña</a>
<h1>${usuario.name} ${usuario.apell1} ${usuario.apell2}</h1>
<div><img id="imagenUsuario" src="" /></div>
<div>¿En búsqueda de trabajo?: ${usuario.buscandoTrabajo}</div>
<div>Descripción: ${usuario.description}</div>

<div>CVs: </div>
<div>
	<ul>
		<c:forEach items="${ aVerCómoLoPonemosBienAquíCuidadoQueNoEstáHechoAún }" var="CV">
			<li>${CV}</li>
		</c:forEach>
	</ul>
</div>
</body>
</html>