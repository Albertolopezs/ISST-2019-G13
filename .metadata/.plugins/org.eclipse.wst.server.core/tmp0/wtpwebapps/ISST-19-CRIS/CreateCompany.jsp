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

input[type="button"] {
	border-color: #A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
</style>
<script type="text/javascript">
   function siguientePagina(){
	   alert("comprobar si se actualizan los datos");
       location.href="EmpresaProfileView.jsp";
   }
</script>
<body>
	<h1>Completa con los datos de su empresa:</h1>
	<form action="SignUpCompanyServlet" method="post">
		<p>
		<div>E-mail:</div>
		<input type="text" name="email" />
		<p>
		<div>Contraseña:</div>
		<input type="password" name="password" />
		<p>
		<div>Nombre:</div>
		<input type="text" name="nombre de la empresa" />
		<p>
		<input type="button" value="Crear cuenta" onclick="javascript:siguientePagina()"/>
	</form>
</body>
</html>