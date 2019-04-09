<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Company</title>
</head>
<body>
	<h2>Creación de cuenta de empresa</h2>
	<form action="SignUpCompanyServlet" method="post">
		<div>E-mail: <input type="text" name="email" placeholder="Email" /></div>
		<div>Contraseña: <input type="password" name="password" placeholder="Password" /></div>
		<div>Nombre: <input type="text" name="nombre de la empresa" /></div>
		<div><button type="submit">Crear cuenta</button></div>
	</form>
</body>
</html>