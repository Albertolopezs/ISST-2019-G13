<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de empresas</title>
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
.link {
	margin: 0;
	border: 0;
	background: none;
	overflow: visible;
	color: blue;
	cursor: pointer;
}
</style>
<body>
	<jsp:include page="NavBar.jsp" />
	
	<h2>Lista de empresas</h2>
	<div>
		<ul>
			<c:forEach items="${company_list}" var="company">
				<li>
					<form action="EmpresaServlet" method="get">
						<input type="hidden" name="email" value="${ company.email }" />
						<input type="submit" value="${ company.name } - ${user.email}" class="link" />
					</form>
				</li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>