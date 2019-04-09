<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cambiar contraseña</title>
</head>
<body>
<div>
	<form action="UsuarioPasswordChangeServlet" method="post">
		Nueva contraseña: <input type="password" name="password" placeholder="Password" />
		<input type="hidden" name="email" value="${email}" />
		<button type="submit">Aceptar</button>
	</form>
</div>

</body>
</html>