<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create User</title>
</head>
<body>
	<h2>Creación de cuenta de usuario</h2>
	<form action="SignUpUserServlet" method="post">
		<div>E-mail: <input type="text" name="email" placeholder="Email" /></div>
		<div>Contraseña: <input type="password" name="password" placeholder="Password" /></div>
		<div>Nombre: <input type="text" name="nombre" /></div>
		<div>Primer apellido: <input type="text" name="apellido1" /></div>
		<div>Segundo apellido: <input type="text" name="apellido2" placeholder="Deja en blanco si carece de ello" /></div>
		<div><button type="submit">Crear cuenta</button></div>
	</form>
</body>
</html>