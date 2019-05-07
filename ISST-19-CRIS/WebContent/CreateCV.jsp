<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1" import="java.io.*, java.util.*, java.net.*"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Crear CV</title>
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
  font-weight: normal;
  font-size: 30px;
  font-family: 'Lobster';
  text-transform: uppercase;    
}
div{
     font-size: medium;
     font-family: 'Lobster';
     font-weight: bold;
}
h3{
font-size: 10px;
    font-family: 'Lobster';
    font-weight: bold; 
    text-align: left;
}
h2{
font-size: 20px;
    font-family: 'Lobster';
    font-weight: bold; 
    text-align: left;
}
button{text-decoration: none;
    padding: 8px;
    font-weight: 400;
    font-size: 15px;
    border-radius: 15px;
    font-family: 'Lobster';
    background-color: transparent;
    }
input[type="submit"] {
	border-color: #A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: 'Lobster';
	font-weight: bold;
}
</style>
<body>
<shiro:guest><jsp:forward page="LoginView.jsp"></jsp:forward></shiro:guest>
<jsp:include page="NavBar.jsp" />

<h1>Currículum de ${usuario.name} ${usuario.apell1} ${usuario.apell2} </h1>
<h2>Rellene los siguientes datos:</h2>
	<form action="CreateCVServlet" method="post">
		<div class="form-group"> <!--Name -->
        <label for="full_name_cv" class="control-label">Nombre del CV:</label>
        <input type="text" class="form-control" id="full_name_cv" name="full_name">
    </div>
		
		
		<h2>Información personal</h2>
		<div class="form-group"> 
        <label for="full_name" class="control-label">Nombre:</label>
        <input type="text" class="form-control" name="nombre" id="nombre" value="${usuario.name}">
    </div> 
    <div class="form-group"> 
        <label for="apellidos" class="control-label">Apellidos:</label>
        <input input type="text" class="form-control" name="apellidos" id="apellidos" value="${usuario.apell1}">
    </div> 
    <div class="form-group"> 
        <label for="email" class="control-label">Correo:</label>
        <input input type="email" class="form-control" name="correo" id="correo" value="${usuario.email}">
    </div>
    <div class="form-group"> 
        <label for="datel" class="control-label">Fecha de nacimiento:</label>
        <input input type="date" class="form-control" name="nacimiento" id="nacimiento" value="dd/mm/aaaa" placeholder="dd/mm/aaaa">
    </div>
		
	
	
		<c:if test="${educacion}">

			<h2>Educación</h2>
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
					${ document.getElementById('nivel_educ').value}
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
				<div class="form-group"> 
        <label for="centro" class="control-label">Centro:</label>
        <input type="text" class="form-control" name="centro" id="centro" value="">
    </div> 
    <div class="form-group"> 
        <label for="yeari" class="control-label">Año de inicio:</label>
        <input type="number" class="form-control" name="inicio_estudios" id="inicio_estudios" value="">
    </div>
    <div class="form-group"> 
        <label for="yearf" class="control-label">Año de finalización:</label>
        <input type="number" class="form-control" name="final_estudios" id="final_estudios" value="" >
    </div>
			
		</c:if>
		
		<c:if test="${expLabo}">
		<h2>Experiencia Laboral</h2>
		<div class="form-group"> 
        <label for="puesto" class="control-label">Puesto:</label>
        <input type="text" class="form-control" name="puesto_name" id="expL" value="" >
    </div>
    <div class="form-group"> 
        <label for="empresa" class="control-label">Empresa:</label>
        <input type="text" class="form-control" name="empresa" id="empresa_name" value="" >
    </div>
     <div class="form-group"> 
        <label for="descrip" class="control-label">Descripción:</label>
        <input type="text" class="form-control" name ="descripcion "placeholder = "Descripción sobre el trabajo" >
    </div>
    <div class="form-group"> 
        <label for="añoi" class="control-label">Año de inicio:</label>
        <input type="number" class="form-control" name="inicio_trabajo" id="inicio_estudios" placeholder=2010 >
    </div>
    <div class="form-group"> 
        <label for="añof" class="control-label">Año de finalización:</label>
        <input type="number" class="form-control" name="final_trabajo" id="final_estudios" placeholder="2019" >
    </div> 
        
        <input type="checkbox" name= "actualidad" >Hasta la actualidad<br>
    <button type="button">Añadir</button>
		</c:if>
		
		<c:if test="${idiomas}">
		<h2>Idiomas</h2>
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
			<tr><td>
				<button type="button">Añadir</button>
			</td></tr>
		</table>
		</c:if>
		
		<c:if test="${habilidades}">
		<h2>Habilidades</h2>
		<input type="text" name="skill" id="skill" value="" /><br>
		</c:if>
		<c:if test="${intereses}">
		<h2>Intereses</h2>
		<input type="text" name="interes" id="interes" value="" /><br>
		</c:if>
		
		<input type="hidden" name="email" value="${email}" /> <br>
	<input type="submit" value="Siguiente">
</form>

</body>
</html>