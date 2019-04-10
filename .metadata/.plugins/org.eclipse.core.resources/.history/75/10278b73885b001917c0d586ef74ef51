<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<script type="text/javascript">
function checkNull(input) {
	if (!input) {
		return "";
	} else {
		return input;
	}
}
document.getElementById('nombre').value = checkNull(empresa.name);
document.getElementById('categoria').value = checkNull(empresa.category);
document.getElementById('descripcion').value = checkNull(empresa.description);
document.getElementById('NIF').value = checkNull(empresa.NIF);
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar perfil empresa</title>
</head>
<body>
<div>Nombre de la empresa: <input type="text" name="nombre" id="nombre" value="" /></div>
<div>NIF: <input type="text" name="NIF" id="NIF" value="" /></div>
<div>Categoría: <input type="text" name="categoria" id="categoria" value="" /></div>
<div>Descripción: <input type="text" name="descripcion" id="descripcion" value="" /></div>
<div>¿Buscando empleados?: <select name="buscaEmpleado"><option value="true">Sí</option><option value="false" selected>No</option>
	</select></div>
<div>Puestos en oferta:</div>
<div>
	<ul>
		<c:forEach items="${ empresa.puestosEnOferta }" var="puesto">
			<li>${puesto}</li>
		</c:forEach>
	</ul>
</div>
<div>Plantillas: </div>
<div>
	<ul>
		<c:forEach items="${ aVerCómoLoPonemosBienAquíCuidadoQueNoEstáHechoAún }" var="plant">
			<li>${plant}</li>
		</c:forEach>
	</ul>
</div>

</body>
</html>