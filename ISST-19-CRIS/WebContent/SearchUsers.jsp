<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Buscar Usuarios</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Temas-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

</head>
<style type="text/css">
body {
	background-image:
		url('https://image.jimcdn.com/app/cms/image/transf/none/path/sc77e1e58a42c514a/image/i9977c7b3a6db203a/version/1516578954/image.jpg');
	background-size: cover;
	font: normal normal 16px quicksand; 
	letter-spacing: 1px;
	
	text-align: center;
	text-transform: uppercase;
    background-position: center;
    background-repeat: no-repeat;
    overflow-x: hidden;
    padding-top: 20px;
    z-index: 1;
    top: 0;
    left: 0;
    
}
h1 {
text-align: center;
padding: 13vh;
  font-weight: normal;
  font-size: 40px;
  font-family: 'Lobster';
  text-transform: uppercase;    
}

div {
font: normal normal 16px quicksand;
	font-size: medium;
	font-family: 'Lobster';
	
}
input[type="submit"] {
text-decoration: none;
    padding: 8px;
    font-weight: 400;
    font-size: 15px;
    border-radius: 15px;
    font-family: 'Lobster';
    background-color: transparent;
}
select {
     background: transparent;
     border: none;
     font-size: 14px;
     height: 30px;
     padding: 5px;
     width: 200px;
     font-family: 'Lobster';
     font: normal normal 16px quicksand;
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
				
			</table>
	<input type="submit" value="Buscar">
	</form>
	
	<c:if test="${searchCompleted == 1}">
	<!-- Mostramos la lista de usuarios -->
	
	</c:if>
</body>
</html>