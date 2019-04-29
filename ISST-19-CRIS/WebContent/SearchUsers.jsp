<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buscar Usuarios</title>
</head>
<style type="text/css">
body {
	background-image:
		url('https://ae01.alicdn.com/kf/HTB1HtgvJFXXXXasXpXXq6xXFXXXL/1-25-x1-5-h-m-edificios-fondo-atractivo-retrato-fondos-de-vinilo-de-moda-de.jpg_640x640.jpg');
	background-size: cover;
}
h1 {
	text-align: center;
	font-family: 'Open Sans';
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
	<form action="SearchUserServlet" method="post">
		<table>
			<tr><td>Idioma:
				<select name="idiomas">
						<option value=0>
					        Inglés
					    </option>
					    <option value=1>
					        Español
					    </option>
					    <option value=2>
					        Francés
					    </option>
					    <option value=3>
					        Alemán
					    </option>
					    <option value=4>
					        Chino
					    </option>
					</select>
			</td><td>Nivel:
					<select name="nivel">
						<option value=0>
					        Básico
					    </option>
					    <option value=1>
					        Intermedio
					    </option>
					    <option value=2>
					        Alto
					    </option>
					    <option value=3>
					        Nativo
					    </option>
					</select>
			</td></tr>
		</table>
		</form>
			<table>
				<tr><td>
					Niveles de estudios: 
					<select name="educacion_nivel", id = "nivel_educ">
						<option value=0>
					        Educación primaria
					    </option>
					    <option value=1>
					        Educación secundaria
					    </option>
					    <option value=2>
					        Grado Universitario
					    </option>
					    <option value=3>
					        Máster
					    </option>
					    <option value=4>
					        Doctorado
					    </option>
					</select>
				</td></tr>
				
				<c:if test="${document.getElementById('nivel_educ').value == 2}">
				<tr><td>
					Grado: 
					<select name="carreras_select">
					  <c:forEach items="${carreras}" var="carrerasValor">
					    <option value="${carrerasValor}">
					        ${carrerasValor}
					    </option>
					  </c:forEach>
					</select>
				</td></tr>
				</c:if>
				
			</table>
	<input type="submit" value="Buscar">
</body>
</html>