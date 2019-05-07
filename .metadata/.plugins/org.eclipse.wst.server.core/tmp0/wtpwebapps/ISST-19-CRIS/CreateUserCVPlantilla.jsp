<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Field Selection View</title>
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
  font-size: 30px;
  font-family: 'Lobster';
  text-transform: uppercase;    
}
h3 {
text-align:left;
padding: 13vh;
  font-weight: normal;
  font-size: 20px;
  font-family: 'Lobster';
  text-transform: uppercase;    
}

div {
	font-size: medium;
	font-family: 'Lobster';
	font-weight: bold;
}
input {
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
     padding: 20vh;
     width: 100px;
     font-family: 'Lobster';
     font: normal normal 16px quicksand;
  }
  
h5{
    text-align: right;
    background-color: none;  
}
</style>
<body>
<jsp:include page="NavBar.jsp" />
<h1>Currículum de ${usuario.name} ${usuario.apell1} ${usuario.apell2} </h1>
<h3>Selección de los campos que se quiera incluir en el currículum:</h3>
	<div><form action="CreateCVServlet" method="get">
		<input type="checkbox" name="educacion" value="TRUE"> Educación<br>
		<input type="checkbox" name="idiomas" value="TRUE"> Idiomas<br>
		<input type="checkbox" name="expLabo" value="TRUE"> Experiencia Laboral<br>
		<input type="checkbox" name="habilidades" value="TRUE"> Habilidades<br>
		<input type="checkbox" name="intereses" value="TRUE"> Intereses<br>
		<input type="hidden" name="email" value="${usuario.email}" />
	<input type="submit" value="Siguiente">
	</form></div>
</body>
</html>