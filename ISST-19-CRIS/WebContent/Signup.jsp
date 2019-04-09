<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up</title>
</head>
<body>
	<h1>¡Registrarse ahora!</h1>
	<form action="CreateAccountSelectionServlet" method="get">
		Usted es: <select name="papel">
			<option value="" disabled selected>Elija si usted es</option>
			<option value="1">Empresa</option>
			<option value="2">Particular</option>
		</select>
		<input type="submit" value="Siguiente">
	</form>
</body>
</html>