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
<body>
<a href="EditEmpresaProfileView.jsp?empresa=${empresa}">Modificar datos</a><a href="ChangePasswordEmpresaView.jsp?email=${empresa.email}">Cambiar contraseña</a>
<h1>${empresa.name}</h1>
<div>Categoría: ${empresa.category} }</div>
<div>Descripción: ${empresa.description}</div>
<div>¿Buscando empleados?: ${empresa.buscandoEmpleados}</div>
<div>Puestos en oferta:</div>
<div>
	<ul>
		<c:forEach items="${ empresa.puestosEnOferta }" var="puesto">
			<li>${puesto}</li>
		</c:forEach>
	</ul>
</div>
<div>Plantillas: </div>
<div>
	<ul>
		<c:forEach items="${ aVerCómoLoPonemosBienAquíCuidadoQueNoEstáHechoAún }" var="plant">
			<li>${plant}</li>
		</c:forEach>
	</ul>
</div>
</body>
</html>