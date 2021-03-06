<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html; charset = iso-8859-1">
   <title>Perfil Usuario</title>
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
.center-row{
	display: flex;
    justify-content: space-around;}
    
.center-column{
	display: flex;
	flex-direction:column;
    justify-content: center;}

#cont-p{
	width:auto;
	height:auto;
	background-color: #F3EDED;
    border: 15px solid #ECE8E8;
	border-radius:8px;
	padding: 0px 9px 0px 9px;}
h3 {
font-weight: bold;
text-align: center;
  
  font-size: 20px;
  font-family: 'Lobster';
  text-transform: uppercase;    
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
button {
border: 2px solid #b5f2f2;  /*borde: estilo y color*/
font: normal normal 18px quicksand;  /*fuente*/
letter-spacing: 2px; /*separación entre las letras*/
text-align: center; /*alineación del texto*/
text-transform: uppercase; /*texto se transforma en mayúsculas*/
padding: 10px;  /*tamaño del fondo*/
border-radius: 30px 0px 30px 0px; /*ángulos de las 4 esquinas del borde/fondo*/
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

<shiro:guest><jsp:forward page="LoginView.jsp"></jsp:forward></shiro:guest>
	<jsp:include page="NavBar.jsp" />
			<h2>${usuario.name} ${usuario.apell1} ${usuario.apell2}</h2>
	<div class="center-row">

		<img id="imagenUsuario" src="data:image/jpeg;base64,${foto}" width="350" height="400" />
		<div class="center-column">
		<div id="cont-p">
		  <h3><li>Descripción:</li></h3>
		  ${usuario.description}
		  <h3><li>
		  <c:if test="${usuario.buscandoTrabajo == false}">
		  No estoy en búsqueda de trabajo.
		  </c:if>
		  <c:if test="${usuario.buscandoTrabajo == true}">
		  Estoy en búsqueda de trabajo.
		  </c:if></li>
		  </h3>
		  <h3><li>Dirección:</li></h3>
		  ${usuario.direccion}

	
		<c:if test="${not empty usuario.curriculums}">
		  <h3><li>CVs:</li></h3>
	
			<ul>
				<c:forEach items="${ usuario.curriculums }" var="CV">
				
					<form action="CVViewServlet" method="get">
						<input type="hidden" name="id" value="${CV.id}" />
						<input type="hidden" name="caller" value="/UserProfileView.jsp" />
						<input type="submit" value="${CV.name}" class="link" />
					</form>
				
				</c:forEach>
			</ul>
		  
		  </c:if>
	
	
		
		<p>
		<c:if test="${ owner }">
			<a href="CreateUserCVPlantilla.jsp?usuario=${usuario}">Crear CV</a>
	
			<form action="EditUserServlet" method="get" name="FormEntrar">
					  <input type="hidden" class="form-control" name="correo" placeholder="Correo" id="correo" aria-describedby="sizing-addon1" value="${email}">
	
					<button class="btn btn-lg btn-primary btn-block btn-register" type="submit">Modificar datos</button>
			</form>
	
	
	
		</c:if>
		</div>
		</div>
	</div>


</body>
</html>
