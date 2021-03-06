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
     text-align: center;
     
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
input {
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

<h1>Curr�culum de ${usuario.name} ${usuario.apell1} ${usuario.apell2} </h1>

<h2>Rellene los siguientes datos:</h2>



<c:if test="${empty CV}">
	<form action="CreateCVServlet" method="post">
		<div class="form-group"> <!--Name -->
        <label for="full_name_cv" class="control-label">Nombre del CV:</label>
        <input type="text" class="form-control" id="full_name_cv" name="full_name" required>
    </div>
		
		
		<h2>Informaci�n personal</h2>
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

			<h2>Educaci�n</h2>
			
			<table>
			
				<tr><td>
				<div class="form-group">
					Niveles de estudios: 
					<select name="educacion_nivel", id = "nivel_educ">
						<option value=0>
					        Educaci�n primaria
					    </option>
					    <option value=1>
					        Educaci�n secundaria
					    </option>
					    <option value=2>
					        Grado Universitario
					    </option>
					    <option value=3>
					        M�ster
					    </option>
					    <option value=4>
					        Doctorado
					    </option>
					</select>
					${ document.getElementById('nivel_educ').value}
				</div>
				</td></tr>
				
				
				<tr><td>
				<div class="form-group">
					Grado: 
					<select name="carreras_select">
					  <c:forEach items="${carreras}" var="carrerasValor">
					    <option value="${carrerasValor}">
					        ${carrerasValor}
					    </option>
					  </c:forEach>
					</select>
				</div>
				</td></tr>
				</table>
				<div class="form-group"> 
        <label for="centro" class="control-label">Centro:</label>
        <input type="text" class="form-control" name="centro" id="centro" value="">
    </div> 
    <div class="form-group"> 
        <label for="yeari" class="control-label">A�o de inicio:</label>
        <input type="number" class="form-control" name="inicio_estudios" id="inicio_estudios" value="">
    </div>
    <div class="form-group"> 
        <label for="yearf" class="control-label">A�o de finalizaci�n:</label>
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
        <label for="descrip" class="control-label">Descripci�n:</label>
        <input type="text" class="form-control" name ="descripcion" placeholder = "Descripci�n del trabajo realizado" >
    </div>
    <div class="form-group"> 
        <label for="a�oi" class="control-label">A�o de inicio:</label>
        <input type="number" class="form-control" name="inicio_trabajo" id="inicio_estudios" placeholder=2010 >
    </div>
    <div class="form-group"> 
        <label for="a�of" class="control-label">A�o de finalizaci�n:</label>
        <input type="number" class="form-control" name="final_trabajo" id="final_estudios" placeholder="2019" >
    </div> 
        
        <input type="checkbox" name= "actualidad" >Hasta la actualidad<br>
		</c:if>
		<div class="form-group">
		
		<c:if test="${idiomas}">
		<h2>Idiomas</h2>
		
		<div class="form-group">
		<table>
			<tr>
			<td>Idioma:
				<select name="idiomas">
						<option value=0>
					        Ingl�s
					    </option>
					    <option value=1>
					        Espa�ol
					    </option>
					    <option value=2>
					        Franc�s
					    </option>
					    <option value=3>
					        Alem�n
					    </option>
					    <option value=4>
					        Chino
					    </option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Nivel:
					<select name="nivel">
						<option value=0>
					        B�sico
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
				</td>
			</tr>
			<tr><td>
			<div class="form-group">
			</div>
			</td></tr>
		</table>
		</div>
		</c:if>
		</div>
		
		
		<c:if test="${habilidades}">
		<h2>Habilidades</h2>
		<div class="form-group"> 
        <input input type="text" class="form-control" name="skill" id="skill" value="">
    </div>
		</c:if>
		
		<c:if test="${intereses}">
		<h2>Intereses</h2>
		<div class="form-group"> 
        <input input type="text" class="form-control" name="intereses" id="intereses" value="">
    </div>
		</c:if>
	<c:if test="${ not empty empresa }">
	<input type="hidden" name="empresa_email" value="${ empresa.email }" />
	</c:if>
	<input type="submit" value="Siguiente">
</form>
</c:if>





<c:if test="${ not empty CV }">
	<form action="CreateCVServlet" method="post">
		<div class="form-group"> <!--Name -->
        <label for="full_name_cv" class="control-label">Nombre del CV:</label>
        <input type="text" class="form-control" id="full_name_cv" name="full_name" required>
    </div>
		
		
		<h2>Informaci�n personal</h2>
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
        <input input type="date" class="form-control" name="nacimiento" id="nacimiento" value="${ CV.nacimiento }">
    </div>
		
	
	
		<c:if test="${educacion}">

			<h2>Educaci�n</h2>
			
			<table>
			
				<tr><td>
				<div class="form-group">
					Niveles de estudios: 
					<select name="educacion_nivel", id = "nivel_educ">
						<option value=0 ${ CV.educacion_nivel == 0 ? 'selected' : '' }>
					        Educaci�n primaria
					    </option>
					    <option value=1 ${ CV.educacion_nivel == 1 ? 'selected' : '' }>
					        Educaci�n secundaria
					    </option>
					    <option value=2 ${ CV.educacion_nivel == 2 ? 'selected' : '' }>
					        Grado Universitario
					    </option>
					    <option value=3 ${ CV.educacion_nivel == 3 ? 'selected' : '' }>
					        M�ster
					    </option>
					    <option value=4 ${ CV.educacion_nivel == 4 ? 'selected' : '' }>
					        Doctorado
					    </option>
					</select>
					${ document.getElementById('nivel_educ').value}
				</div>
				</td></tr>
				
				
				<tr><td>
				<div class="form-group">
					Grado: 
					<select name="carreras_select">
					  <c:forEach items="${carreras}" var="carrerasValor">
					    <option value="${carrerasValor}" ${ carrerasValor == CV.carrera ? 'selected' : '' }>
					        ${carrerasValor}
					    </option>
					  </c:forEach>
					</select>
				</div>
				</td></tr>
				</table>
				<div class="form-group"> 
        <label for="centro" class="control-label">Centro:</label>
        <input type="text" class="form-control" name="centro" id="centro" value="${ CV.centro }">
    </div> 
    <div class="form-group"> 
        <label for="yeari" class="control-label">A�o de inicio:</label>
        <input type="text" class="form-control" name="inicio_estudios" id="inicio_estudios" value="${ CV.inicio_est }">
    </div>
    <div class="form-group"> 
        <label for="yearf" class="control-label">A�o de finalizaci�n:</label>
        <input type="text" class="form-control" name="final_estudios" id="final_estudios" value="${ CV.final_est }" >
    </div>
			
		</c:if>
		
		<c:if test="${expLabo}">
		<h2>Experiencia Laboral</h2>
		<div class="form-group"> 
        <label for="puesto" class="control-label">Puesto:</label>
        <input type="text" class="form-control" name="puesto_name" id="expL" value="${ CV.puesto_nombre }" >
    </div>
     <div class="form-group"> 
        <label for="descrip" class="control-label">Descripci�n:</label>
        <input type="text" class="form-control" name ="descripcion "placeholder = "Descripci�n del trabajo realizado" value="${ CV.descripcion }">
    </div>
    <div class="form-group"> 
        <label for="a�oi" class="control-label">A�o de inicio:</label>
        <input type="text" class="form-control" name="inicio_trabajo" id="inicio_estudios" placeholder=2010 value="${ CV.inicio_job }">
    </div>
    <div class="form-group"> 
        <label for="a�of" class="control-label">A�o de finalizaci�n:</label>
        <input type="text" class="form-control" name="final_trabajo" id="final_estudios" placeholder="2019" value="${ CV.final_job }">
    </div> 
        
        <input type="checkbox" name= "actualidad" ${ CV.actualidad == 'on' ? 'checked' : '' }>Hasta la actualidad<br>
		</c:if>
		<div class="form-group">
		
		<c:if test="${idiomas}">
		<h2>Idiomas</h2>
		
		<div class="form-group">
		<table>
			<tr>
				<td>Idioma:
					<select name="idiomas">
						<option value=0 ${ CV.idiomas == 0 ? 'selected' : '' }>
							Ingl�s
						</option>
						<option value=1 ${ CV.idiomas == 1 ? 'selected' : '' }>
							Espa�ol
						</option>
						<option value=2 ${ CV.idiomas == 2 ? 'selected' : '' }>
							Franc�s
						</option>
						<option value=3 ${ CV.idiomas == 3 ? 'selected' : '' }>
							Alem�n
						</option>
						<option value=4 ${ CV.idiomas == 4 ? 'selected' : '' }>
							Chino
						</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>Nivel:
					<select name="nivel">
						<option value=0 ${ CV.nivel == 0 ? 'selected' : '' }>
					        B�sico
					    </option>
					    <option value=1 ${ CV.nivel == 1 ? 'selected' : '' }>
					        Intermedio
					    </option>
					    <option value=2 ${ CV.nivel == 2 ? 'selected' : '' }>
					        Alto
					    </option>
					    <option value=3 ${ CV.nivel == 3 ? 'selected' : '' }>
					        Nativo
					    </option>
					</select>
				</td>
			</tr>
			<tr><td>
			<div class="form-group">
			</div>
			</td></tr>
		</table>
		</div>
		</c:if>
		</div>
		
		
		<c:if test="${habilidades}">
		<h2>Habilidades</h2>
		<div class="form-group"> 
        <input input type="text" class="form-control" name="skill" id="skill" value="${ CV.habilidades }">
    </div>
		</c:if>
		
		<c:if test="${intereses}">
		<h2>Intereses</h2>
		<div class="form-group"> 
        <input input type="text" class="form-control" name="intereses" id="intereses" value="${ CV.intereses }">
    </div>
		</c:if>
	<c:if test="${ not empty empresa }">
	<input type="hidden" name="empresa_email" value="${ empresa.email }" />
	</c:if>
	<input type="submit" value="Siguiente">
</form>
</c:if>

</body>
</html>