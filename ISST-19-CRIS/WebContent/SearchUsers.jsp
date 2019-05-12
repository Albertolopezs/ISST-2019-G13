<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.io.*, java.util.*, java.net.*"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
    background-color: white;
    font-weight: bold;
}
select {
     background: transparent;
     border: none;
     font-size: 14px;
     height: 30px;
     padding: 5px;
     width: 350px;
     font-family: 'Lobster';
     font: normal normal 16px quicksand;
  }
 #Contenedor{
	width: 400px;
	margin: 50px auto;
	background-color: #F3EDED;
        border: 15px solid #ECE8E8;
	height: auto;
	border-radius:8px;
	padding: 0px 9px 0px 9px;
}
/**
 * Aplicando al icono de usuario el color de fondo,
 * rellenado de 20px y un redondeado de 120px en forma
 * de un circulo
 */
.Icon span{
      background: #A8A6A6;
      padding: 20px;
      border-radius: 120px;
}
/**
 * Se aplica al contenedor madre un margen de tamaño 10px hacia la cabecera y pie,
 * color de fuente blanco,un tamaño de fuente 50px y texto centrado.
 */
.Icon{
     margin-top: 10px;
     margin-bottom:10px; 
     color: #FFF;
     font-size: 50px;
     text-align: center;
}
/**
 * Se aplica al contenedor donde muestra en el pie
 * la opción de olvidaste tu contraseña?
 */
.opcioncontra{
	text-align: center;
	margin-top: 20px;
	font-size: 14px;
}
button {
border: 2px solid #b5f2f2;  /*borde: estilo y color*/
font: normal normal 18px quicksand;  /*fuente*/
letter-spacing: 2px; /*separación entre las letras*/
text-align: center; /*alineación del texto*/
text-transform: uppercase; /*texto se transforma en mayúsculas*/
padding: 10px;  /*tamaño del fondo*/
border-radius: 30px 0px 30px 0px; /*ángulos de las 4 esquinas del borde/fondo*/
}
</style>
<body>
<shiro:guest><jsp:forward page="LoginView.jsp"></jsp:forward></shiro:guest>
	<jsp:include page="NavBar.jsp" />
	<div id="Contenedor">
	<div class="ContentForm">
	<form action="SearchUserServlet" method="post">
		<table>
			<tr><td>Idioma:
			<div>
				<select name="idiomas">
						<option value=0 ${ idi == 0 ? 'selected' : '' }>
					        Inglés
					    </option>
					    <option value=1 ${ idi == 1 ? 'selected' : '' }>
					        Español
					    </option>
					    <option value=2 ${ idi == 2 ? 'selected' : '' }>
					        Francés
					    </option>
					    <option value=3 ${ idi == 3 ? 'selected' : '' }>
					        Alemán
					    </option>
					    <option value=4 ${ idi == 4 ? 'selected' : '' }>
					        Chino
					    </option>
					</select>
			</div>
			</td>
		</tr>
		<tr>
			<td>Nivel:
			<div>
					<select name="nivel">
						<option value=0 ${ nivel == 0 ? 'selected' : '' }>
					        Básico
					    </option>
					    <option value=1 ${ nivel == 1 ? 'selected' : '' }>
					        Intermedio
					    </option>
					    <option value=2 ${ nivel == 2 ? 'selected' : '' }>
					        Alto
					    </option>
					    <option value=3 ${ nivel == 3 ? 'selected' : '' }>
					        Nativo
					    </option>
					</select>
			</div>
			</td></tr>
		</table>
			<table>
				<tr><td>
					Niveles de estudios: 
					<div>
					<select name="educacion_nivel" id = "nivel_educ">
						<option value=0 ${ educ == 0 ? 'selected' : '' }>
					        Educación primaria
					    </option>
					    <option value=1 ${ educ == 1 ? 'selected' : '' }>
					        Educación secundaria
					    </option>
					    <option value=2 ${ educ == 2 ? 'selected' : '' }>
					        Grado Universitario
					    </option>
					    <option value=3 ${ educ == 3 ? 'selected' : '' }>
					        Máster
					    </option>
					    <option value=4 ${ educ == 4 ? 'selected' : '' }>
					        Doctorado
					    </option>
					</select>
					</div>
				</td></tr>
				<tr><td>
					Grado: 
					<div>
					<select name="carreras_select">
					  <c:forEach items="${carreras}" var="carrerasValor">
					    <option value="${carrerasValor}" ${ carrerasValor == carr ? 'selected' : '' }>
					        ${carrerasValor}
					    </option>
					  </c:forEach>
					</select>
					</div>
				</td></tr>
				
			</table>
	<button class="btn btn-lg btn-primary btn-block btn-signin" id="IngresoLog" type="submit">Buscar</button>
	</form>
	
	<c:if test="${searchCompleted == 1}">
		<ul>
			<c:forEach items="${ CV_list }" var="CV">
				
					<form action="CVViewServlet" method="get">
						<input type="hidden" name="id" value="${CV.id}" />
						<input type="hidden" name="CV_list" value="${ CV_list }" />
						<input type="submit" value="${CV.name}" class="link" />
					</form>
				
				</c:forEach>
		</ul>
	</c:if>
	</div>
	</div>
</body>
</html>