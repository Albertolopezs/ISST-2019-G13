<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Professor View</title>
</head>
<body>
	<shiro:user>
    Welcome back <shiro:principal />! Click <a href="LogoutServlet">here</a> to logout.
</shiro:user>
	<h2>Profesor: ${professor.name}</h2>
	<h3>Email: ${professor.email}</h3>
	<table border="1">
		<tr>
			<th>Título</th>
			<th>Email alumno</th>
			<th>Nombre del alumno</th>
			<th>Estado del TFG</th>
			<th>Nota final TFG</th>

		</tr>
		<c:forEach items="${tfg_list}" var="tfgi">
			<tr>
				<td>${tfgi.title }</td>
				<td>${tfgi.email }</td>
				<td>${tfgi.name }</td>
				<td>${tfgi.status }</td>
				<td>${tfgi.grade}</td>
				<td><c:if test="${tfgi.status == 1}">
						<form action="Form2ProfessorServlet" method="post">
							<input type="hidden" name="email" value="${tfgi.email}" />
							<button type="submit">Aceptar tfg</button>
						</form>
					</c:if></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>