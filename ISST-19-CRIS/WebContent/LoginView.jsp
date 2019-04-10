<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login View</title>
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
	font-family: 'Open Sans';
	color:black;
	font-size: 50px;
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
	<h1>Bienvenido a eCV</h1>
	<div>
		<p>
		Con nosotros el trabajo de tus sueños estará más cerca.
		<p>
		Diseña tu propio currículum personalizado o rellena una plantilla para tu empresa.
		<p>
		Accede a tu cuenta o regístrate para empezar.
	</div>
	    <form action="LoginServlet" method="post">
			<p>
			<div>Email:</div>
			<input type="text" name="email" placeholder="Email" />
			<p>
			<div>Password:</div>
			<input type="password" name="password"
				placeholder="Password" />
			<p>
			<button type="submit">Login</button>
		</form>
		<a href="SignUp.jsp">Registrarse</a>

</body>
</html>