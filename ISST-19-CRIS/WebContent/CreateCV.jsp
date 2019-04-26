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
</head>
<style type="text/css">
body {
	background-image: url('https://ae01.alicdn.com/kf/HTB1HtgvJFXXXXasXpXXq6xXFXXXL/1-25-x1-5-h-m-edificios-fondo-atractivo-retrato-fondos-de-vinilo-de-moda-de.jpg_640x640.jpg');
	background-size: cover;
}

h1 {
	font-family: Open Sans;
	align-items: center;
}

div {
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
h3{
    font-family: Times New Roman;
    font-weight: bold; 
}
input[type="submit"] {
	border-color: #A9B1B2;
	border-radius: 25px;
	background-color: #A9B1B2;
	font-size: medium;
	font-family: Times New Roman;
	font-weight: bold;
}
select{
	carreras.show()
	document.getElementById("carreras_select").style.display = "none";
}
select[target=_carr]{
	carreras.show()
}
</style>
<body>



<h1>Curr�culum de  }${usuario.name} ${usuario.apell1} ${usuario.apell2} </h1>
<h3>Rellene los siguientes datos:</h3>
	<form action="CreateCVServlet" method="post">
		<h1>Nombre del CV:</h1> <input type="text" name="name" id="name" value="" /><br>
		
		<h2>Informaci�n personal</h2>
		<table>
		<tr><td>Nombre:  <input type="text" name="nombre" id="nombre" value="${usuario.name}" /></td></tr>
		<tr><td>Apellidos:  <input type="text" name="apellidos" id="apellidos" value="${usuario.apell1}" /></td></tr>
		<tr><td>E-mail:  <input type="email" name="correo" id="correo" value="${usuario.email}" /></td></tr>
		<tr><td>Fecha de nacimiento:  <input type="date" name="nacimiento" id="nacimiento" value="20/20/1996" /><br></td></tr>
		</table>
	
	
		<c:if test="${educacion}">

			<h2>Educaci�n</h2>
			<table>
				<tr><td>
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
				<tr><td>
					Centro: <input type="text" name="centro" id="centro" value="" />
				</td></tr>
				<tr><td>
					A�o de inicio: <input type="number" name="inicio_estudios" id="inicio_estudios" value="" />
				</td><td>
					A�o de final: <input type="number" name="final_estudios" id="final_estudios" value="" />
				</td></tr>
			</table>
			
			
		</c:if>
		
		<c:if test="${expLabo}">
		<h2>Experiencia Laboral</h2>
		<table>
			<tr><td>
				Puesto: <input type="text" name="puesto_name" id="expL" value="" />
			</tr></td>
			<tr><td>
				Descripci�n: <h:inputText name ="descripcion "value = "Hello World!" /> 
			</td></tr>
			<tr><td>
				A�o de inicio: <input type="number" name="inicio_trabajo" id="inicio_estudios" value="" />
			</td><td>
				A�o de final: <input type="number" name="final_trabajo" id="final_estudios" value="" />
			</td></tr>
			<tr><td>
				<input type="checkbox" name= "actualidad"> Hasta la actualidad
			<tr><td>
				<button type="button">A�adir</button>
			</td></tr>	
		</table>
		</c:if>
		
		<c:if test="${idiomas}">
		<h2>Idiomas</h2>
		<table>
			<tr><td>Idioma:
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
			</td><td>Nivel:
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
			</td></tr>
			<tr><td>
				<button type="button">A�adir</button>
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