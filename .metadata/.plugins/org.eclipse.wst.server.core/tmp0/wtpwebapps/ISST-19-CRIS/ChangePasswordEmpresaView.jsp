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
</style>
<body>
	<jsp:include page="NavBar.jsp" />
    <h1>¿Deseas cambiar tu contraseña?</h1>
	<div>
		<form action="EmpresaPasswordChangeServlet" method="post">
		    <p>
			Nueva contraseña: 
			<p>
			<input type="password" name="password"
				placeholder="Nueva contraseña" /> 
			<p>
			<button type="submit">Aceptar</button>
		</form>
	</div>

</body>
</html>