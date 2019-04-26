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
<style type="text/css">
body {
	background-image:
		url('https://ae01.alicdn.com/kf/HTB1HtgvJFXXXXasXpXXq6xXFXXXL/1-25-x1-5-h-m-edificios-fondo-atractivo-retrato-fondos-de-vinilo-de-moda-de.jpg_640x640.jpg');
	background-size: cover;
}

h1 {
	text-align: center;
	text-decoration: blink;
}

div {
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
input {
	border-color: #A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
</style>
<body>
	<h1>Registro</h1>
	<form action="CreateAccountSelectionServlet" method="post">
		<div>Desea registrarse como: 
		    <select name="papel" id="papel">
				<option value="" disabled>Escoja su caso</option>
				<option value="empresa">Empresa</option>
				<option value="particular" selected>Particular</option>
			</select>
		</div>
		<p>
			<input type="submit" value="Siguiente" />
	</form>
</body>
</html>