<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Barra de navegación</title>
</head>
<style type="text/css">
nav {
	margin: 0;
	overflow: hidden;
}
nav ul {
	margin: 0;
	padding: 0;
}
nav ul li {
	/* Esto es para listar elementos por fila, no cambien*/
	display: inline-block;
	list-style-type: none;
}
nav > ul > li > a {
	color: #e6e6e6;
	background-color:#333333;
	display: block;
	padding: 0.5em 0.5em;
	text-decoration: none;
}
</style>
<body>
	<nav>
		<ul>
			<shiro:user>
				<li><a href="BackOwnPageServlet">Mi página</a></li>
			</shiro:user>
				<li><a href="AllCompanyDisplayServlet">Lista de empresas</a></li>
				<li><a href="AllUserDisplayServlet">Lista de usuarios</a></li>
			<shiro:user>
				<li><a href="LogoutServlet">Cerrar sesión</a></li>
			</shiro:user>
		</ul>
	</nav>
</body>
</html>