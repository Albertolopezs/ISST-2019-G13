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
	vertical-align: top;
}
nav > ul > li > a {
	color: #e6e6e6;
	background-color:#333333;
	display: block;
	line-height: 1em;
	padding: 0.5em 0.5em;
	text-decoration: none;
}
nav li > ul {
	display: none;
}
nav li > ul li{
	background-color: #595959;
	display: block;
}
nav li > ul li a {
	color: #f2f2f2;
	display: block;
	line-height: 1em;
	padding: 0.5em 0.5em;
	text-decoration: none;
}

/* Esto para cambiar de color cuando apuntas con cursor*/
nav li > ul li:hover {
	background-color: #808080;
}

/* Submenu sobre menu principal*/
nav li:hover > ul {
	position: absolute;
	display: block;
}
</style>
<body>
	<nav>
		<ul>
			<shiro:user>
				<li><a href="BackOwnPageServlet">Mi página</a></li>
				<li><a href="AllCompanyDisplayServlet">Lista de empresas</a></li>
				<li><a href="AllUserDisplayServlet">Lista de usuarios</a></li>
				<li><a href="">Mi cuenta</a>
					<ul>
						<shiro:hasRole name="usuario">
							<li><a href="ChangePasswordUsuarioView.jsp">Cambiar Contraseña</a></li>
							<li><a href="SearchEmpresaServlet">Buscar Empresas</a></li>
						</shiro:hasRole>
						<shiro:hasRole name="empresa">
							<li><a href="ChangePasswordEmpresaView.jsp">Cambiar Contraseña</a></li>
							<li><a href="SearchUserServlet">Buscar Currículums</a></li>
						</shiro:hasRole>
							<li><a href="LogoutServlet">Cerrar Sesión</a></li>
					</ul>
				</li>
			</shiro:user>
		</ul>
	</nav>
</body>
</html>