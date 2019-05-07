<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Sign Up</title>

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
	font-size: medium;
	font-family: Times New Roman;
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
     padding: 5px;
     width: 100px;
     font-family: 'Lobster';
     font: normal normal 16px quicksand;
  }
  
</style>
<body>
	<jsp:include page="NavBar.jsp" />
	<h1>Registro</h1>
	<form action="CreateAccountSelectionServlet" method="post">
		<div>Desea registrarse como: 
		    <select name="papel" id="papel">
				<option value="" disabled>Escoja su caso</option>
				<option value="empresa">Empresa</option>
				<option value="particular" selected>Particular</option>
			</select>
		</div>
		<p>
			<input type="submit" value="Siguiente" />
	</form>
</body>
</html>